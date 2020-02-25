tab_box <- tabItem(tabName = "box",
  fluidRow(
    box(
      # パラメータ
      title = "Histogram",# タイトル
      status = "primary", # タイトルの背景
      solidHeader = TRUE, # タイトル全体を塗りつぶすかラインにするか
      collapsible = TRUE, # boxを折りたためるようにするかどうか
      
      # 本文
      plotOutput("box_plot1", height = 250)
    ),
    
    box(
      # パラメータ
      title = "Histogram",
      background = "light-blue", # 背景
      collapsible = TRUE,
      
      # 本文
      plotOutput("box_plot2", height = 250)
    ),
  ),
  fluidRow(
    box(
      # パラメータ
      title = "Inputs",
      status = "warning",
      solidHeader = FALSE,
      collapsible = TRUE,
      
      # 本文
      "Box content here",
      br(), 
      "More box content",
      sliderInput("box_slider1", "Slider input:", 1, 100, 50),
      textInput("text", "Text input:")
    ),
    
    box(
      # パラメータ
      title = "Inputs",
      status = "warning",
      background = "yellow",
      solidHeader = FALSE,
      collapsible = FALSE,
      
      # 本文
      "Box content here",
      br(),
      "More box content",
      sliderInput("box_slider2", "Slider input:", 1, 100, 50),
      textInput("text", "Text input:")
    )
  )
)