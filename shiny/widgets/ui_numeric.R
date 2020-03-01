##----------------------------------------------------------------------------##
## numeric
##----------------------------------------------------------------------------##
tab_widgets_numeric <- tabItem(
  tabName = "widgets_numeric",
  
  fluidPage(
    basicBox4(
      title = "Numeric",
      content = tagList(
        
        #--------------------------- 
        # 数値入力
        numericInput(
          # --- required ---
          inputId = "widgets_numeric_input",
          label = "Numeric input",
          value = 10,
          
          # --- options ---
          min = 0,
          max = 100,
          step = 10
        ),
        
        #--------------------------- 
        # 入力した時のinput
        verbatimTextOutput("widgets_numeric_value")
      )
    )
  )
)