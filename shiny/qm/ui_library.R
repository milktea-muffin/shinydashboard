##----------------------------------------------------------------------------##
## qm_library
##----------------------------------------------------------------------------##
tab_qm_library <- tabItem(
  tabName = "qm_library",

  fluidRow(
    #---------------------------
    # DNA plot
    basicBox12(
      title = 'DNA',
      content = tagList(
        plotlyOutput("qm_library_dna_plot")
      )
    )
  )
)