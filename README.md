
<!-- README.md is generated from README.Rmd. Please edit that file -->

# add2xgb

<!-- badges: start -->

[![DOI](https://zenodo.org/badge/200150014.svg)](https://zenodo.org/badge/latestdoi/200150014)
<!-- badges: end -->

The goal of add2xgb is to help translate XGBoost model R object into SQL
statement. In production, I translate model file into a
sixty-thousand-line SQL code and run it into impala within 1 minute.
Thus, It is fine to do this workflow in the model deployment.

## Installation

The development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("JiaxiangBU/add2xgb")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(add2xgb)
## basic example code
```

<https://jiaxiangbu.github.io/learn_xgboost/translatein2sql/mtcars_xgboost>

-----

<h4 align="center">

**Code of Conduct**

</h4>

<h6 align="center">

Please note that the `add2xgb` project is released with a [Contributor
Code of Conduct](.github/CODE_OF_CONDUCT.md).<br>By contributing to this
project, you agree to abide by its terms.

</h6>

<h4 align="center">

**License**

</h4>

<h6 align="center">

MIT © [Jiaxiang Li](LICENSE.md)

</h6>
