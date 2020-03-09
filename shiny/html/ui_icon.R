##----------------------------------------------------------------------------##
## html_icon
##----------------------------------------------------------------------------##
tab_html_icon <- tabItem(
  tabName = "html_icon",

  fluidRow(
    #---------------------------
    # Font Awesome
    basicBox12(
      title = tagList(
        "Icons",
        tags$a(href="https://fontawesome.com/icons?from=io", "Font Awesome")
      ),
      content = tagList(
        DTOutput("html_icon_fontawesome_table")
      )
    ),
    
    #---------------------------
    # glyphicon
    basicBox12(
      title = tagList(
        "Icons",
        tags$a(href="https://icons.getbootstrap.com/", "glyphicon")
      ),
      content = tagList(
        DTOutput("html_icon_glyphicon_table")
      )
    )
  )
)