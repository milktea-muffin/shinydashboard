##----------------------------------------------------------------------------##
## box
##----------------------------------------------------------------------------##
tab_box <- tabItem(
  tabName = "box",
  
  fluidRow(
    #--------------------------- 
    # Basicなボックス
    box(
      # --- options ---
      title = "Histogram",
      footer = NULL,
      status = "primary", # タイトルの背景
      solidHeader = TRUE, # タイトル全体を塗りつぶすかラインにするか
      background = NULL,
      width = 6,
      height = NULL,
      collapsible = TRUE, # boxを折りたためるようにするかどうか
      collapsed = FALSE,
      
      # --- 本文 ---
      plotOutput("box_plot1", height = 250)
    ),

    #--------------------------- 
    # 背景の指定
    box(
      # --- options ---
      title = "Histogram",
      background = "light-blue", # 背景
      collapsible = TRUE,
      
      # --- 本文 ---
      plotOutput("box_plot2", height = 250)
    )
  ),

  fluidRow(
    #--------------------------- 
    # statusで色を変える
    box(
      # --- options ---
      title = "Inputs",
      status = "warning",
      solidHeader = FALSE,
      collapsible = TRUE,
      
      # --- 本文 ---
      "Box content here",
      br(), 
      "More box content",
      sliderInput("box_slider1", "Slider input:", 1, 100, 50),
      textInput("text", "Text input:")
    ),
    
    #--------------------------- 
    # 
    box(
      # --- options ---
      title = "Inputs",
      status = "warning",
      background = "yellow",
      solidHeader = FALSE,
      collapsible = FALSE,
      
      # --- 本文 ---
      "Box content here",
      br(),
      "More box content",
      sliderInput("box_slider2", "Slider input:", 1, 100, 50),
      textInput("text", "Text input:")
    )
  )
)