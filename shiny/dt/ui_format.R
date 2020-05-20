##----------------------------------------------------------------------------##
## dt_format
##----------------------------------------------------------------------------##
tab_dt_format <- tabItem(
  tabName = "dt_format",

  fluidRow(
    #---------------------------
    # シンプルなデータテーブル
    basicBox12(
      title = "Simple",
      content = tagList(
        dataTableOutput("dt_format_simple")
      )
    ),
    
    #---------------------------
    # format関数を使ったテーブル
    basicBox12(
      title = "Format function",
      content = tagList(
        dataTableOutput("dt_format_func")
      )
    ),
    
    #---------------------------
    # スタイル
    basicBox12(
      title = "Style",
      content = tagList(
        dataTableOutput("dt_format_style")
      )
    ),
    
    #---------------------------
    # 拡張機能
    basicBox12(
      title = "Extension",
      content = tagList(
        dataTableOutput("dt_format_extension")
      )
    )
    
  )
)