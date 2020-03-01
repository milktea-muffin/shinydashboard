output[["widgets_date_value1"]] <- renderPrint({
  input[["widgets_date_input1"]]
})

output[["widgets_date_value2"]] <- renderPrint({ 
  input[["widgets_date_input2"]] 
})
