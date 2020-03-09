##----------------------------------------------------------------------------##
## ***
##----------------------------------------------------------------------------##
set.seed(122)
histdata <- rnorm(500)

output[["box_plot1"]] <- renderPlot({
  data <- histdata[seq_len(input[["box_slider1"]])]
  hist(data)
})

output[["box_plot2"]] <- renderPlot({
  data <- histdata[seq_len(input[["box_slider2"]])]
  hist(data)
})

