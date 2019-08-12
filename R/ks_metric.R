ks_metric <- function(yhat, dtrain) {
    y <- getinfo(dtrain, "label")
    list(metric = 'ks',
         value = max(ks_table(yhat, y)$ks))
}
