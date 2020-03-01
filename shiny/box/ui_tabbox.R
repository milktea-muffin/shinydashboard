##----------------------------------------------------------------------------##
## tabBox
##----------------------------------------------------------------------------##
tab_tabbox <- tabItem(
  tabName = "tabbox",
  
  fluidRow(
    #--------------------------- 
    # ベーシックなtabBox
    tabBox(
      # --- options ---
      id = "tabset1", # The id lets us use input$tabset1 on the server to find the current tab
      selected = NULL, # tabPanelのvalueを指定する
      title = "First tabBox",
      width = 6,
      height = "250px",
      side = "left", # or "right"
      
      # --- タブ ---
      tabPanel(
        # --- required ---
        title = "Tab1",
        
        # --- options ---
        # valueを指定しない場合、titleが入る。value = titleのまま有効にするとエラーになるのでしない
        # value = title,
        icon = NULL,
        
        # --- 本文 ---
        "First tab content"
      ),
      
      tabPanel(
        title = "Tab2",
        icon = NULL,
        "Tab content 2"
      )
    ),
    
    #--------------------------- 
    # 右側から始まるtabBox
    tabBox(
      selected = "Tab3",
      height = "250px",
      side = "right",
      
      tabPanel("Tab1", "Tab content 1"),
      tabPanel("Tab2", "Tab content 2"),
      tabPanel("Tab3", "Note that when side=right, the tab order is reversed.")
    )
  ),
  
  fluidRow(
    #--------------------------- 
    # タイトルにアイコンを使う
    tabBox(
      title = tagList(shiny::icon("gear"), "tabBox status"),

      tabPanel(
        title = "Tab1",
        "Currently selected tab from first box:",
        verbatimTextOutput("tabbox_tabset1_selected")
      ),
      
      tabPanel(
        title = "Tab2",
        "Tab content 2"
      )
    )
  )                          
)