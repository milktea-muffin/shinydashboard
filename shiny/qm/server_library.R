##----------------------------------------------------------------------------##
## qm_library
##----------------------------------------------------------------------------##
set.seed(122)
histdata <- rnorm(500)

output[["qm_library_dna_plot"]] <- renderPlotly({
  data <- histdata[seq_len(input[["box_slider1"]])]
  hist(data)
})

