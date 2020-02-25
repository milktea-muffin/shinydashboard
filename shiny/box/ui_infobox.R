tab_infobox <- tabItem(tabName = "infobox",
  fluidRow(
    # A static infoBox
    infoBox(
      "New Orders",
      10 * 2,
      icon = icon("credit-card")
    ),
    
    # Dynamic infoBoxes
    infoBoxOutput("infobox_progress"),
    infoBoxOutput("infobox_approval")
  ),
  
  # infoBoxes with fill=TRUE
  fluidRow(
    infoBox(
      "New Orders",
      10 * 2,
      icon = icon("credit-card"),
      fill = TRUE
    ),
    infoBoxOutput("infobox_progress2"),
    infoBoxOutput("infobox_approval2")
  ),
  
  fluidRow(
    # Clicking this will increment the progress amount
    box(width = 4, actionButton("infobox_count", "Increment progress"))
  )                           
)