
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
use_version()

# git push
# make public
use_github_release()
# publish release
# https://zenodo.org/account/settings/github/


# add zenodo citation -----------------------------------------------------

library(devtools)
use_r("add_zenodo_citation")
load_all()
add_zenodo_citation(here::here("../pyks/README.Rmd"))
