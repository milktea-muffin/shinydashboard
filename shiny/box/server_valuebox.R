output[["valuebox_progress"]] <- renderValueBox({
  valueBox(
    paste0(25 + input$valuebox_count, "%"),
    "Progress",
    icon = icon("list"),
    color = "purple"
  )
})

output[["valuebox_approval"]] <- renderValueBox({
  valueBox(
    "80%",
    "Approval",
    icon = icon("thumbs-up", lib = "glyphicon"),
    color = "yellow"
  )
})