##----------------------------------------------------------------------------##
## tabBox
##----------------------------------------------------------------------------##
output[["valuebox_progress"]] <- renderValueBox({
  valueBox(
    # --- required ---
    value = paste0(25 + input[["valuebox_count"]], "%"),
    subtitle =  "Progress",

    # --- options ---
    icon = icon("list"),
    color = "purple",
    width = 4,
    href = NULL
  )
})

output[["valuebox_approval"]] <- renderValueBox({
  valueBox(
    value = "80%",
    subtitle = "Approval",
    icon = icon("thumbs-up", lib = "glyphicon"),
    color = "yellow"
  )
})