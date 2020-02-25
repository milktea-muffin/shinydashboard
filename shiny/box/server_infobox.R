output[["infobox_progress"]] <- renderInfoBox({
  infoBox(
    "Progress",
    paste0(25 + input$infobox_count, "%"), 
    icon = icon("list"),
    color = "purple"
  )
})
output[["infobox_approval"]] <- renderInfoBox({
  infoBox(
    "Approval",
    "80%",
    icon = icon("thumbs-up", lib = "glyphicon"),
    color = "yellow"
  )
})

# Same as above, but with fill=TRUE
output[["infobox_progress2"]] <- renderInfoBox({
  infoBox(
    "Progress",
    paste0(25 + input$infobox_count, "%"),
    icon = icon("list"),
    color = "purple",
    fill = TRUE
  )
})
output[["infobox_approval2"]] <- renderInfoBox({
  infoBox(
    "Approval",
    "80%",
    icon = icon("thumbs-up", lib = "glyphicon"),
    color = "yellow",
    fill = TRUE
  )
})