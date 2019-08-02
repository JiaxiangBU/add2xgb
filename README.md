
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

## Citations

Jiaxiang Li. (2019, July 25). JiaxiangBU/pyks: pyks 1.1.3 (Version
v1.1.3). Zenodo. <http://doi.org/10.5281/zenodo.3351276>

``` bibtex
@misc{jiaxiang_li_2019_3351276,
  author       = {Jiaxiang Li},
  title        = {JiaxiangBU/pyks: pyks 1.1.3},
  month        = jul,
  year         = 2019,
  doi          = {10.5281/zenodo.3351276},
  url          = {https://doi.org/10.5281/zenodo.3351276}
}
```

If you use add2xgb, I would be very grateful if you can add a citation
in your published work. By citing add2xgb, beyond acknowledging the
work, you contribute to make it more visible and guarantee its growing
and sustainability. For citation, please use the BibTex or the citation
content.

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
