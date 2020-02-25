tab_widgets_checkbox <- tabItem(tabName = "widgets_checkbox",
  fluidRow(
    ##----------------------------------------------------------------------------##
    ## checkbox
    ##----------------------------------------------------------------------------##
    box(
      # パラメータ
      title = "Single checkbox",
      status = "primary",
      solidHeader = TRUE,
      collapsible = TRUE,
      
      # 本文
      checkboxInput(inputId = "widgets_checkbox_input1", 
                    label = "Choice A", 
                    value = TRUE # チェックボックスにチェックを入れるかどうかのフラグ
      ),
      br(),
      br(),
      verbatimTextOutput("widgets_checkbox_value1")
    ),
    box(
      # パラメータ
      title = "Checkbox group",
      status = "primary",
      solidHeader = TRUE,
      collapsible = TRUE,
      
      # 本文
      checkboxGroupInput(inputId = "widgets_checkbox_input2", 
                         label = "Checkbox group",
                         choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
                         selected = 1
      ),
      br(),
      br(),
      verbatimTextOutput("widgets_checkbox_value2")
    )
  )
)