tab_valuebox <- tabItem(tabName = "valuebox",
  fluidRow(
    # A static valueBox
    valueBox(
      10 * 2,
      "New Orders",
      icon = icon("credit-card")
    ),
    
    # Dynamic valueBoxes
    valueBoxOutput("valuebox_progress"),
    valueBoxOutput("valuebox_approval")
  ),
  fluidRow(
    # Clicking this will increment the progress amount
    box(width = 4, actionButton("valuebox_count", "Increment progress"))
  )
)