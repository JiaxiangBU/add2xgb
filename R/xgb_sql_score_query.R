#' Generate the score query from xgb object
#'
#' The core element of the add2xgb package is an object of the function xgb_sql_score_query.
#' It contains the process to translate XGBoost tree structure to SQL statements.
#' @param base_score Extract the scale value from \code{xgb_model$params$base_score}.
#' @importFrom whisker whisker.render
#' @export
xgb_sql_score_query <- function(list_of_trees, features_table, feature_dict, base_score = 0.5, key_field = "id"){

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

    swap$base_score <- base_score

    # score query that logit-transforms the sum_of_scores
    q <- "
    SELECT
      {{{key_field}}},
      1/(1+exp(-1*( {{{sum_of_scores}}} + ln({{{base_score}}}/(1-{{{base_score}}}))))) AS score
    -- FROM `{{{features_table}}}`
    FROM {{{features_table}}}
  "
    # the natural logarithm, use ln() in Impala and Hive
    return(whisker::whisker.render(q,swap))

}
