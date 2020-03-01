##----------------------------------------------------------------------------##
## date
##----------------------------------------------------------------------------##
tab_widgets_date <- tabItem(
  tabName = "widgets_date",
  
  fluidRow(
    basicBox6(
      title = "Date",
      content = tagList(
        
        #--------------------------- 
        # 日付選択フォーム
        dateInput(
          # --- required ---
          inputId = "widgets_date_input1",
          label = "Date input",
          
          # --- options ---
          value = "2020-01-01",  # NULL (default)
          min = "2018-01-01",    # NULL (default)
          max = "2023-12-31",    # NULL (default)
          format = "yyyy-mm-dd", # yyyy-mm-dd (default)
          startview = "month",   # month (defualt), year, decade
          # ----------------------------------------------------
          # yy Year without century (12)
          # yyyy Year with century (2012)
          # mm Month number, with leading zero (01-12)
          # m Month number, without leading zero (1-12)
          # M Abbreviated month name
          # MM Full month name
          # dd Day of month with leading zero
          # d Day of month without leading zero
          # D Abbreviated weekday name
          # DD Full weekday name
          # ----------------------------------------------------
          weekstart = 0,         # 0 (Sunday) to 6 (Saturday)
          language = "en",       # en (default), ja, etc...
          width = NULL,
          autoclose = TRUE,
          datesdisabled = NULL,
          daysofweekdisabled = NULL
        ),
        
        #--------------------------- 
        # 選択した時のinput
        verbatimTextOutput("widgets_date_value1")
      )
    ),
    
    basicBox6(
      title = "Date range",
      content = tagList(

        #--------------------------- 
        # 期間選択フォーム
        dateRangeInput(
          # --- requried ---
          inputId = "widgets_date_input2",
          label = "Date range input",
          
          # --- options ---
          start = NULL,
          end = NULL,
          min = NULL,
          max = NULL,
          format = "yyyy-mm-dd", # yyyy-mm-dd (default)
          startview = "month",   # month (defualt), year, decade
          # ----------------------------------------------------
          # yy Year without century (12)
          # yyyy Year with century (2012)
          # mm Month number, with leading zero (01-12)
          # m Month number, without leading zero (1-12)
          # M Abbreviated month name
          # MM Full month name
          # dd Day of month with leading zero
          # d Day of month without leading zero
          # D Abbreviated weekday name
          # DD Full weekday name
          # ----------------------------------------------------
          weekstart = 0,         # 0 (Sunday) to 6 (Saturday)
          language = "en",       # en (default), ja, etc...
          separator = " to "
        ),

        #--------------------------- 
        # 選択した時のinput
        verbatimTextOutput("widgets_date_value2")
      )
    )
  )
)

