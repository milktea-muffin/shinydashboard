##----------------------------------------------------------------------------##
## checkbox
##----------------------------------------------------------------------------##
tab_widgets_checkbox <- tabItem(tabName = "widgets_checkbox",
  fluidRow(
    basicBox6(
      title = "Single checkbox",
      content = tagList(
        
        #--------------------------- 
        # Basicなチェックボックス
        checkboxInput(
          inputId = "widgets_checkbox_input1", 
          label = "Choice A", 
          value = TRUE # チェックボックスにチェックを入れるかどうかのフラグ
        ),
        
        #--------------------------- 
        # チェックした時のinput
        verbatimTextOutput("widgets_checkbox_value1")
      )
    ),
    
    basicBox6(
      title = "Checkbox group",
      content = tagList(
        
        #--------------------------- 
        # チェックボックスグループ
        checkboxGroupInput(
          inputId = "widgets_checkbox_input2", 
          label = "Checkbox group",
          choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
          selected = 1
        ),
        
        #--------------------------- 
        # チェックした時のinput
        verbatimTextOutput("widgets_checkbox_value2")
      )
    )
  )
)