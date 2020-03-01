##----------------------------------------------------------------------------##
## box
##----------------------------------------------------------------------------##
tab_infobox <- tabItem(
  tabName = "infobox",

  fluidRow(
    #--------------------------- 
    # ベーシックなinfobox
    #--------------------------- 
    # 静的に生成
    infoBox(
      # --- required ---
      title = "New Orders",
      
      # --- options ---
      value = 10 * 2,
      subtitle = NULL,
      icon = icon("credit-card"),
      color = "aqua",
      width = 4,
      href = NULL,
      fill = FALSE
    ),

    #--------------------------- 
    # 動的に生成
    infoBoxOutput("infobox_progress"),
    infoBoxOutput("infobox_approval")
  ),

  fluidRow(
    #--------------------------- 
    # fill = TRUEにしたinfoBox
    #--------------------------- 
    # 静的に生成
    infoBox(
      # --- required ---
      title = "New Orders",
      
      # --- options ---
      value = 10 * 2,
      subtitle = NULL,
      icon = icon("credit-card"),
      color = "aqua",
      width = 4,
      href = NULL,
      fill = TRUE    # <---------
    ),

    #--------------------------- 
    # 動的に生成
    infoBoxOutput("infobox_progress2"),
    infoBoxOutput("infobox_approval2")
  ),
  
  fluidRow(
    #--------------------------- 
    # カウントアップ用のボックス
    box(
      width = 4,
      actionButton("infobox_count", "Increment progress")
    )
  )                           
)