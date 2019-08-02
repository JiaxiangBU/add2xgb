#" Generate the score query from xgb object
#' @export
xgb_sql_score_query <- function(list_of_trees, features_table, feature_dict, key_field = "id"){

    # a swap list to render queries via whisker
    swap <- list(
        key_field = key_field,
        features_table = features_table
    )

    # score_queries contains the score query for each tree in the list_of_trees
    score_queries <- lapply(list_of_trees, function(tree){
        xgb_tree_sql(tree, feature_dict)
    })

    # the query clause to sum the scores from each tree
    swap$sum_of_scores <- paste(score_queries, collapse=' + ')

    # score query that logit-transforms the sum_of_scores
    q <- "
    SELECT
      {{{key_field}}},
      1/(1+exp(-1*( {{{sum_of_scores}}} ))) AS score
    -- FROM `{{{features_table}}}`
    FROM {{{features_table}}}
  "

    return(whisker.render(q,swap))

}
