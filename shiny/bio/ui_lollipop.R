##----------------------------------------------------------------------------##
## bio_lollipop
##----------------------------------------------------------------------------##
tab_bio_lollipop <- tabItem(
  tabName = "bio_lollipop",

  #---------------------------
  # from CSV or TSV
  fluidRow(
    column(
      width = 3,
      basicBox(
       title = "Input parameters",
       content = tagList(
         selectInput(
           inputId = "bio_lollipop_theme",
           label = "theme",
           choices = list("default" = "default", "blue", "simple", "cbioportal", "nature", "nature2", "ggplot2", "dark"),
           selected = "default",
           selectize = TRUE
         )
       )
      )
    ),
    column(
      width = 9,
      basicBox(
        title = "from CSV or TSV",
        content = tagList(
          g3viz::g3LollipopOutput("bio_lollipop_from_csv")
        )
      )
    )
  ),
    
  fluidRow(
    column(
      width = 3,
      basicBox(
        title = "Input parameters",
        content = tagList(
          selectInput(
            inputId = "bio_lollipop_study_id",
            label = "study id",
            choices = list(),
            selectize = TRUE
          ),
          htmlOutput("bio_lollipop_study_text")
        )
      )
    ),
    column(
      width = 9,
      #---------------------------
      # from cBio Portal
      basicBox(
        title = "from cBio Portal",
        content = tagList(
          withSpinner(g3LollipopOutput("bio_lollipop_from_cbioportal"))
        )
      )
    )
  )
)