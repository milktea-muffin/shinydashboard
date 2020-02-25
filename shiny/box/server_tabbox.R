# The currently selected tab from the first box
output[["tabbox_tabset1_selected"]] <- renderText({
  input$tabset1
})