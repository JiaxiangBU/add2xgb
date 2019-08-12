
# setup -------------------------------------------------------------------




library(devtools)
use_git()

# https://github.com/JiaxiangBU/add2impala/blob/master/DESCRIPTION
file.edit("DESCRIPTION")
library(devtools)

use_build_ignore("dev_history.R")
use_roxygen_md()
use_pipe()
library(magrittr)

options(usethis.full_name = "Jiaxiang Li")
use_mit_license()


# coding ------------------------------------------------------------------

file.edit("R/xgb_sql_score_query.R")
file.edit("R/xgb_tree_sql.R")
file.edit("R/ks_metric.R")
# add title

# prettify ----------------------------------------------------------------

use_readme_rmd()
# help translate XGBoost model R object into SQL statement.
file.edit("DESCRIPTION")
rmarkdown::render("README.Rmd")
file.remove("README.html")


# build -------------------------------------------------------------------

document()
# load_all()
install()


# commit

# release -----------------------------------------------------------------

use_news_md()
file.edit("NEWS.md")
use_version()
usethis::use_github_release()


# add disclaimer ----------------------------------------------------------

file.edit("DESCRIPTION")
clipr::write_clip('`r add2pkg::add_disclaimer("Roland Stevenson;Jiaxiang Li")`')
file.edit("README.Rmd")
rmarkdown::render("README.Rmd")
rstudioapi::viewer("README.html")
file.remove("README.html")
usethis::use_code_of_conduct()


# publish -----------------------------------------------------------------

# push
# make public

use_github_release()
# publish release
# https://zenodo.org/account/settings/github/


# add badge and citation --------------------------------------------------

# login zenodo and copy badge in markdown
file.edit("README.Rmd")
clipr::write_clip('## Citations

```{r include=FALSE}
citations <- add2pkg::add_zenodo_citation("README.Rmd")
```

```{r echo=FALSE, results=\'asis\'}
cat(citations$Cite)
```

```{r echo=FALSE, results=\'asis\'}
cat(paste0("```BibTex\\n",citations$BibTex,"\\n```"))
```

```{r echo=FALSE, results=\'asis\'}
cat(citations$Comments)
```')
# 需要等一段时间，有时候 doi 没有显示出来
rmarkdown::render("README.Rmd")
rstudioapi::viewer("README.html")
safely(file.remove)("README.html")


# add vignette ------------------------------------------------------------

use_vignette("xgb_to_sql")


# pkgdown -----------------------------------------------------------------

start_time <- lubridate::now()
pkgdown::build_site()
end_time <- lubridate::now()
end_time - start_time
