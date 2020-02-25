tab_widgets_button <- tabItem(tabName = "widgets_button",
  fluidRow(
    ##----------------------------------------------------------------------------##
    ## actionButton, submitButton
    ##----------------------------------------------------------------------------##
    box(
      # パラメータ
      title = "Buttons",
      status = "primary",
      solidHeader = TRUE,
      collapsible = TRUE,
      
      # 本文
      actionButton(inputId = "widgets_button_action",
                   label = "Action"
      ),
      actionButton(inputId = "widgets_button_action",
                   label = "Action",
                   icon = icon("bar-chart-o") # icon付き
      ),
      br(),
      br(),
      verbatimTextOutput("widgets_button_value")
      # submitButtonを設定すると、全てのinputが自動的にemitされなくなるため使用することは非推奨
      # br(),
      # submitButton(text = "Submit"),
      # submitButton(text = "Submit", icon = icon("bar-chart-o"))
    )
  )
)