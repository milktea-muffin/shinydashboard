##----------------------------------------------------------------------------##
## button
##----------------------------------------------------------------------------##
tab_widgets_button <- tabItem(
  tabName = "widgets_button",
  
  fluidRow(
    basicBox6(
      title = "Buttons",
      content = tagList(
        
        #--------------------------- 
        # Basicなボタン
        actionButton(
          inputId = "widgets_button_action",
          label = "Action"
        ),
        
        #--------------------------- 
        # アイコン付きボタン
        actionButton(
          inputId = "widgets_button_action",
          label = "Action",
          icon = icon("bar-chart-o") # icon付き
        ),
        
        br(),
        br(),
        
        #--------------------------- 
        # ボタンを押した時のinput
        verbatimTextOutput("widgets_button_value")
        
        #--------------------------- 
        # submitButtonを設定すると、全てのinputが自動的にemitされなくなるため使用することは非推奨
        # submitButton(text = "Submit"),
        # submitButton(text = "Submit", icon = icon("bar-chart-o"))
      )
    )
  )
)