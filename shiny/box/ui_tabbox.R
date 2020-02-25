tab_tabbox <- tabItem(tabName = "tabbox",
  fluidRow(
    tabBox(
      title = "First tabBox",
      id = "tabset1", # The id lets us use input$tabset1 on the server to find the current tab
      height = "250px",
      tabPanel("Tab1", "First tab content"),
      tabPanel("Tab2", "Tab content 2")
    ),
    tabBox(
      side = "right",
      height = "250px",
      selected = "Tab3",
      tabPanel("Tab1", "Tab content 1"),
      tabPanel("Tab2", "Tab content 2"),
      tabPanel("Tab3", "Note that when side=right, the tab order is reversed.")
    )
  ),
  fluidRow(
    tabBox(
      # Title can include an icon
      title = tagList(shiny::icon("gear"), "tabBox status"),
      tabPanel("Tab1",
               "Currently selected tab from first box:",
               verbatimTextOutput("tabbox_tabset1_selected")
      ),
      tabPanel("Tab2", "Tab content 2")
    )
  )                          
)