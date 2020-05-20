##----------------------------------------------------------------------------##
## dt_interactive
##----------------------------------------------------------------------------##
tab_dt_interactive <- tabItem(
  tabName = "dt_interactive",

  fluidRow(
    #---------------------------
    # シンプルなデータテーブル
    basicBox12(
      title = "Simple",
      content = tagList(
        dataTableOutput("dt_interactive")
      )
    )
  )
)