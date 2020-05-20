##----------------------------------------------------------------------------##
## パッケージのロード、ui.R, server.Rの共通の変数/関数定義など
##----------------------------------------------------------------------------##
library(shiny)
library(shinydashboard)
library(shinycssloaders)

library(RSQLite)
library(dplyr) # mutate: iconをhtmlに変換してDTで表示するために使用
library(DT) # https://rstudio.github.io/DT/options.html

library(ggplot2)
library(plotly)

##----------------------------------------------------------------------------##
## bioフォルダのserverで共通して利用するライブラリや変数など
##----------------------------------------------------------------------------##
#
# -- g3viz::lollipop
#   https://rdrr.io/cran/g3viz/
#   https://cran.rstudio.com/web/packages/g3viz/vignettes/introduction.html
#
library(g3viz)

