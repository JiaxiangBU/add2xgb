#' Customize the KS metric for Xgboost training.
#'
#' @param yhat predictions.
#' @param dtrain the input of the function \code{xgb.train}.
#' @export
ks_metric <- function(yhat, dtrain) {
    y <- getinfo(dtrain, "label")
    list(metric = 'ks',
         value = max(ks_table(yhat, y)$ks))
}
