##----------------------------------------------------------------------------##
##
##----------------------------------------------------------------------------##
server <- function(input, output, session) {

  ##----------------------------------------------------------------------------##
  ## Header
  ##----------------------------------------------------------------------------##
  output[["header_message_menu"]] <- renderMenu({
    message_data <- data.frame("from"=c("Support Team", "Support Team"), "message"=c("This is the content of a message.", "This is the content of a message."))
    
    # Code to generate each of the messageItems here, in a list. This assumes
    # that messageData is a data frame with two columns, 'from' and 'message'.
    msgs <- apply(message_data, 1, function(row) {
      messageItem(from = row[["from"]], message = row[["message"]])
    })
    
    # This is equivalent to calling:
    #   dropdownMenu(type="messages", msgs[[1]], msgs[[2]], ...)
    dropdownMenu(type = "messages", .list = msgs)
  })
  
  # output[["header_notification_menu"]] <- renderMenu({
  # 
  # })
  
  # output[["header_task_menu"]] <- renderMenu({
  # 
  # })
  
  ##----------------------------------------------------------------------------##
  ## Sidebar
  ##----------------------------------------------------------------------------##
  output[["sidebar_menu"]] <- renderMenu({
    sidebarMenu(
      menuItem("Menu item", icon = icon("calendar"))
    )
  })
  
  output[["sidebar_menu_items"]] <- renderMenu({
    menuItem("Menu item", icon = icon("calendar"))
  })
  
  ##----------------------------------------------------------------------------##
  ## Body
  ##----------------------------------------------------------------------------##
  source('./shiny/box/server_box.R', local = TRUE, encoding = 'utf-8')
  source('./shiny/box/server_tabbox.R', local = TRUE, encoding = 'utf-8')
  source('./shiny/box/server_infobox.R', local = TRUE, encoding = 'utf-8')
  source('./shiny/box/server_valuebox.R', local = TRUE, encoding = 'utf-8')
  source('./shiny/layout/server_rowbased.R', local = TRUE, encoding = 'utf-8')
  source('./shiny/layout/server_columnbased.R', local = TRUE, encoding = 'utf-8')
  source('./shiny/layout/server_mixed.R', local = TRUE, encoding = 'utf-8')
  source('./shiny/widgets/server_button.R', local = TRUE, encoding = 'utf-8')
  source('./shiny/widgets/server_checkbox.R', local = TRUE, encoding = 'utf-8')
  source('./shiny/widgets/server_date.R', local = TRUE, encoding = 'utf-8')
  source('./shiny/widgets/server_file.R', local = TRUE, encoding = 'utf-8')
  source('./shiny/widgets/server_numeric.R', local = TRUE, encoding = 'utf-8')
  source('./shiny/widgets/server_radio.R', local = TRUE, encoding = 'utf-8')
  source('./shiny/widgets/server_select.R', local = TRUE, encoding = 'utf-8')
  source('./shiny/widgets/server_slider.R', local = TRUE, encoding = 'utf-8')
  source('./shiny/widgets/server_text.R', local = TRUE, encoding = 'utf-8')
  
  # Electron用：セッション切れたときにRを終了させる
  # session$onSessionEnded(function(){
  #   stopApp()
  #   q("no")
  # })
}