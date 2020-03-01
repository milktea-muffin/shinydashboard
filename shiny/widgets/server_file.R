output[["widgets_file_value"]] <- renderPrint({
  str(input[["widgets_file_input"]])
})

widgets_file_df <- reactive({
  req(input[["widgets_file_input"]])
  
  tryCatch(
    {
      df <- read.csv(
        file = input[["widgets_file_input"]][["datapath"]],
        header = TRUE,
        sep = ",",
        quote = "" # "" or "'" or '"'
      )
    },
    error = function(e) {
      # return a safeError if a parsing error occurs
      stop(safeError(e))
    }
  )
  
  return(head(df))
})


output[["widgets_file_load_table"]] <- renderTable({
  widgets_file_df()
})

output[["widgets_file_download"]] <- downloadHandler(
  filename = function() {
    paste("download", ".csv", sep = "")
  },
  content = function(file) {
    write.csv(widgets_file_df(), file, row.names = FALSE)
  },
  contentType = "text/csv" # https://en.wikipedia.org/wiki/Media_type
)

