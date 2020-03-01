##----------------------------------------------------------------------------##
## file
##----------------------------------------------------------------------------##
tab_widgets_file <- tabItem(
  tabName = "widgets_file",
  
  fluidPage(
    basicBox6(
      title = "File",
      content = tagList(
        
        #--------------------------- 
        # ファイルのアップロード
        fileInput(
          # --- required ---
          inputId = "widgets_file_input",
          label = "CSV file input",
          
          # --- options ---
          multiple = FALSE,
          accept = c("text/csv",
                     # "text/comma-separated-values,text/plain",
                     ".csv")  
        ),
        
        #--------------------------- 
        # アップロードのinputの中身
        verbatimTextOutput("widgets_file_value"),
        
        #--------------------------- 
        # アップロードしたデータの表示(アップロード前のNULL値のも対応)
        tableOutput("widgets_file_load_table"),
        
        #--------------------------- 
        # データのダウンロード
        downloadButton( # なぜか別の画面が立ち上がる。ダウンロード自体は問題ない
          outputId = "widgets_file_download",
          label = "Download"
        )        
      )
    )
  )
)