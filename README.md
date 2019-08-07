
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

See the vignettes.

## Citations

Jiaxiang Li. (2019, August 2). JiaxiangBU/add2xgb: add2xgb 0.1.0
(Version v0.1.0). Zenodo. <http://doi.org/10.5281/zenodo.3358328>

``` bibtex
@misc{jiaxiang_li_2019_3358328,
  author       = {Jiaxiang Li},
  title        = {JiaxiangBU/add2xgb: add2xgb 0.1.0},
  month        = aug,
  year         = 2019,
  doi          = {10.5281/zenodo.3358328},
  url          = {https://doi.org/10.5281/zenodo.3358328}
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

MIT © [Roland Stevenson;Jiaxiang Li](LICENSE.md)

</h6>
