output[["widgets_checkbox_value1"]] <- renderPrint({
  input[["widgets_checkbox_input1"]]
})

output[["widgets_checkbox_value2"]] <- renderPrint({ 
  input[["widgets_checkbox_input2"]]
})
