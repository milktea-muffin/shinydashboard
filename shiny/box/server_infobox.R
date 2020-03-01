##----------------------------------------------------------------------------##
## infoBox
##----------------------------------------------------------------------------##
output[["infobox_progress"]] <- renderInfoBox({
  infoBox(
    # --- required ---
    title = "Progress",
    
    # --- options ---
    value = paste0(25 + input[["infobox_count"]], "%"), 
    subtitle = NULL,
    icon = icon("list"),
    color = "purple",
    width = 4,
    href = NULL,
    fill = FALSE
  )
})

output[["infobox_approval"]] <- renderInfoBox({
  infoBox(
    title = "Approval",
    value = "80%",
    icon = icon("thumbs-up", lib = "glyphicon"),
    color = "yellow"
  )
})

# Same as above, but with fill=TRUE
output[["infobox_progress2"]] <- renderInfoBox({
  infoBox(
    title = "Progress",
    value = paste0(25 + input[["infobox_count"]], "%"),
    icon = icon("list"),
    color = "purple",
    fill = TRUE
  )
})

output[["infobox_approval2"]] <- renderInfoBox({
  infoBox(
    title = "Approval",
    value = "80%",
    icon = icon("thumbs-up", lib = "glyphicon"),
    color = "yellow",
    fill = TRUE
  )
})