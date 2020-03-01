##----------------------------------------------------------------------------##
## radio button
##----------------------------------------------------------------------------##
tab_widgets_radio <- tabItem(
  tabName = "widgets_radio",
  
  fluidPage(
    basicBox6(
      title = "Radio buttons",
      content = tagList(
        
        #--------------------------- 
        # Basicなラジオボタン
        radioButtons(
          # --- required ---
          inputId = "widgets_radio_input",
          label = "Radio buttons",
          choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), 
          
          # --- options ---
          selected = 1 # defaults to the first value
        ),
        
        #--------------------------- 
        # ボタンをクリックした時のinput
        verbatimTextOutput("widgets_radio_value")
      )
    )
  )
)