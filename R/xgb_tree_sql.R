#' Translate decision tree into case when statement.
xgb_tree_sql <- function(tree, feature_dict, sig = 5) {
  # split variables must exist to generate subquery for tree children
  sv <-
    c("split",
      "split_condition",
      "yes",
      "no",
      "missing",
      "children")

  # we have a leaf, just return the leaf value
  if ("leaf" %in% names(tree)) {
    return(tree[['leaf']])
  }

  else if (all(sv %in% names(tree))) {
    tree$split_long <-
      feature_dict[[tree$split + 1]] # +1 because xgboost is 0-indexed

    cs <- c(tree$yes, tree$no, tree$missing)
    cd <- data.frame(k = c(min(cs), max(cs)),
                     v = c(1, 2))

    tree$missing_sql <-
      xgb_tree_sql(tree$children[[cd$v[cd$k == tree$missing]]], feature_dict)
    tree$yes_sql <-
      xgb_tree_sql(tree$children[[cd$v[cd$k == tree$yes]]], feature_dict)
    tree$no_sql <-
      xgb_tree_sql(tree$children[[cd$v[cd$k == tree$no]]], feature_dict)

    q <- "
      CASE
        WHEN {{{split_long}}} IS NULL THEN {{{missing_sql}}}
        WHEN {{{split_long}}} < {{{split_condition}}} THEN {{{yes_sql}}}
        ELSE {{{no_sql}}}
      END
    "

    return(whisker.render(q, tree))

  }

}
