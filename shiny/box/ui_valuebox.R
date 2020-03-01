##----------------------------------------------------------------------------##
## valueBox
##----------------------------------------------------------------------------##
tab_valuebox <- tabItem(
  tabName = "valuebox",
  
  fluidRow(
    #--------------------------- 
    # ベーシックなvalueBox
    #---------------------------
    # 静的に生成
    valueBox(
      # --- required ---
      value = 10 * 2,
      subtitle = "New Orders",
      
      # --- options ---
      icon = icon("credit-card"),
      color = "aqua",
      width = 4,
      href = NULL
    ),
    
    #--------------------------- 
    # 動的に生成
    valueBoxOutput("valuebox_progress"),
    valueBoxOutput("valuebox_approval")
  ),
  
  fluidRow(
    #--------------------------- 
    # カウントアップ用のボックス
    box(
      width = 4,
      actionButton("valuebox_count", "Increment progress")
    )
  )
)

