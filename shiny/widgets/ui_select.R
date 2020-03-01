##----------------------------------------------------------------------------##
## Select
##----------------------------------------------------------------------------##

select_list <- list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3, "Choice 4" = 4, "Choice 5" = 5, "Choice 6" = 6)

tab_widgets_select <- tabItem(
  tabName = "widgets_select",
  
  h2("selectInput"),
  h4("selectize = TRUE (default)"),

  fluidRow(
    basicBox3(
      title = "Single select input",
      content = tagList(
        
        #--------------------------- 
        # Basicなselect
        selectInput(
          # --- required ---
          inputId = "widgets_select_input1",
          label = "Basic", 
          choices = select_list, 
          
          # --- options ---
          selected = 1, # Default to the first element
          multiple = FALSE,
          selectize = FALSE
        ),
        
        #--------------------------- 
        # 選択した時のinput
        verbatimTextOutput("widgets_select_value1")
      )
    ),
    
    basicBox3(
      title = "Single select input",
      content = tagList(
        
        #--------------------------- 
        # 未選択の状態を追加
        selectInput(
          # --- required ---
          inputId = "widgets_select_input2",
          label = "Choose prompt", 
          choices = c(Choose = '', select_list), 
          
          # --- options ---
          # selected = 1,
          multiple = FALSE,
          selectize = FALSE
        ),
        
        #--------------------------- 
        # 選択した時のinput
        verbatimTextOutput("widgets_select_value2")
      )
    ),
      
    basicBox3(
      title = "Multiple select input",
      content = tagList(
        
        #--------------------------- 
        # multiple = TRUE
        selectInput(
          # --- required ---
          inputId = "widgets_select_input3",
          label = "Basic", 
          choices = select_list, 
          
          # --- options ---
          # selected = 1,
          multiple = TRUE,
          selectize = FALSE
        ),
        
        #--------------------------- 
        # 選択した時のinput
        verbatimTextOutput("widgets_select_value3")
      )
    ),
    
    basicBox3(
      title = "Multiple select input",
      content = tagList(
        
        #--------------------------- 
        # multiple = TRUE
        selectInput(
          # --- required ---
          inputId = "widgets_select_input4",
          label = "Basic", 
          choices = select_list, 
          
          # --- options ---
          # selected = 1,
          multiple = TRUE,
          selectize = FALSE
        ),
        
        #--------------------------- 
        # 選択した時のinput
        verbatimTextOutput("widgets_select_value4")
      )
    )
  ),
  
  h3("Selectize = FALSE"),
  
  fluidRow(
    basicBox3(
      title = "Single select input",
      content = tagList(
        
        #--------------------------- 
        # Basicなselect
        selectInput(
          # --- required ---
          inputId = "widgets_select_input5",
          label = "Basic", 
          choices = select_list, 
          
          # --- options ---
          selected = 1, # Default to the first element
          multiple = FALSE,
          selectize = TRUE
        ),
        
        #--------------------------- 
        # 選択した時のinput
        verbatimTextOutput("widgets_select_value5")
      )
    ),
    
    basicBox3(
      title = "Single select input",
      content = tagList(
        
        #--------------------------- 
        # 未洗濯の状態を追加
        selectInput(
          # --- required ---
          inputId = "widgets_select_input6",
          label = "Choose prompt", 
          choices = c(Choose = '', select_list), 
          
          # --- options ---
          # selected = 1,
          multiple = FALSE,
          selectize = TRUE
        ),
        
        #--------------------------- 
        # 選択した時のinput
        verbatimTextOutput("widgets_select_value6")
      )
    ),
    
    basicBox3(
      title = "Multiple select input",
      content = tagList(
        
        #--------------------------- 
        # Basicなselect
        selectInput(
          # --- required ---
          inputId = "widgets_select_input7",
          label = "Select box", 
          choices = select_list, 
          
          # --- options ---
          # selected = 1,
          multiple = TRUE,
          selectize = TRUE
        ),
        
        #--------------------------- 
        # 選択した時のinput
        verbatimTextOutput("widgets_select_value7")
      )
    ),
    
    basicBox3(
      title = "Multiple select input",
      content = tagList(
        
        #--------------------------- 
        # multiple = TRUE
        selectInput(
          # --- required ---
          inputId = "widgets_select_input8",
          label = "Basic", 
          choices = select_list, 
          
          # --- options ---
          # selected = 1,
          multiple = TRUE,
          selectize = TRUE
        ),
        
        #--------------------------- 
        # 選択した時のinput
        verbatimTextOutput("widgets_select_value8")
      )
    )
  ),
  
  h2("selectizeInput"),
  
  fluidRow(
    basicBox3(
      title = "Single select input",
      content = tagList(
        
        #--------------------------- 
        # Basicなselect
        selectizeInput(
          # --- required ---
          inputId = "widgets_select_input9",
          label = "Basic", 
          choices = select_list, 
          
          # --- options ---
          selected = 1, # Default to the first element
          multiple = FALSE
        ),
        
        #--------------------------- 
        # 選択した時のinput
        verbatimTextOutput("widgets_select_value9")
      )
    ),
    
    basicBox3(
      title = "Single select input",
      content = tagList(
        
        #--------------------------- 
        # 未選択の状態を追加
        selectizeInput(
          # --- required ---
          inputId = "widgets_select_input10",
          label = "Choose prompt", 
          choices = c(Choose = '', select_list), 
          
          # --- options ---
          # selected = 1,
          multiple = FALSE
        ),
        
        #--------------------------- 
        # 選択した時のinput
        verbatimTextOutput("widgets_select_value10")
      )
    ),
    
    basicBox3(
      title = "Multiple select input",
      content = tagList(
        
        #--------------------------- 
        # multiple = TRUE
        selectizeInput(
          # --- required ---
          inputId = "widgets_select_input11",
          label = "Basic", 
          choices = select_list, 
          
          # --- options ---
          # selected = 1,
          multiple = TRUE,
          options = list(maxItems = 2)
        ),
        
        #--------------------------- 
        # 選択した時のinput
        verbatimTextOutput("widgets_select_value11")
      )
    ),
    
    basicBox3(
      title = "Multiple select input",
      content = tagList(
        
        #--------------------------- 
        # multiple = TRUE
        selectizeInput(
          # --- required ---
          inputId = "widgets_select_input12",
          label = "Basic", 
          choices = select_list, 
          
          # --- options ---
          # selected = 1,
          multiple = TRUE,
          options = list(maxItems = 2)
        ),
        
        #--------------------------- 
        # 選択した時のinput
        verbatimTextOutput("widgets_select_value12")
      )
    )
  )
)