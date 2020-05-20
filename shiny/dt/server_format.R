##----------------------------------------------------------------------------##
## dt_format
##----------------------------------------------------------------------------##
output[["dt_format_simple"]] <- renderDataTable(
  # --- required ---
  iris,

  # --- options ---
  rownames = TRUE, # 列番号
  options = list(
    pageLength = 5, # 1ページに表示する行数の初期値
    lengthMenu = c(5, 10, 15, 20), # 1ページに表示する行数のリスト
    order = list(list(2, 'asc'), list(4, 'desc')),
    
    # -- 列の表示を調整する方法1(文字数制限) ... 下のformat関数を使う方が簡単
    columnDefs = list(list(
      targets = 5,
      render = JS(
        "function(data, type, row, meta) {",
        "return type === 'display' && data.length > 6 ?",
        "'<span title=\"' + data + '\">' + data.substr(0, 6) + '...</span>' : data;",
        "}"
      )
    )),
    
    # -- 列の表示を調整する方法2(ドルマークを付ける) ... 下のformat関数を使う方が簡単
    rowCallback = JS(
      "function(row, data) {",
      "var num = '$' + data[3].toString().replace(/\\B(?=(\\d{3})+(?!\\d))/g, ',');",
      "$('td:eq(3)', row).html(num);",
      "}"
    )
  )
)

output[["dt_format_func"]] <- renderDataTable(
  datatable(
    iris,
    rownames = TRUE,
    options = list(
      pageLength = 5,
      lengthMenu = c(5, 10, 15, 20),
      order = list(list(2, 'asc'), list(4, 'desc'))
    )
  )
  
  %>% formatCurrency(c('Sepal.Length', 'Sepal.Width')) # ドルマークを付ける
  # %>% formatCurrency(1:2, '\U20AC', digits = 0) # 1-2列目にユーロマークがついて小数点以下切り捨て
  # 細かい設定をするならこっち
  # %>% formatCurrency(
  #   # --- required ---
  #   # table, # %>%でデータを流し込んでいるので、tableは不要
  #   columns = c('Sepal.Length', 'Sepal.Width'),
  # 
  #   # --- options ---
  #   currency = "$",
  #   interval = 3,
  #   mark = ",",
  #   digits = 2,
  #   dec.mark = getOption("OutDec"),
  #   before = TRUE
  # )
  
  # %>% formatString(c(''), prefix = "A", suffix = "Z")
  
  %>% formatPercentage('Petal.Length', 2)
  # %>% formatPercentage(
  #   columns = c('Petal.Length')
  #   digits = 0,
  #   interval = 3,
  #   mark = ",",
  #   dec.mark = getOption("OutDec")
  # )
  
  # %>% formatRound('E', 3) # 小数点以下3桁
  # %>% formatRound(
  #   columns = c('E'),
  #   digits = 2,
  #   interval = 3,
  #   mark = ",",
  #   dec.mark = getOption("OutDec")
  # )
  
  # formatDate(table, columns, method = "toDateString", params = NULL)
  # https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date
)

output[["dt_format_style"]] <- renderDataTable(
  datatable(
    iris,
    rownames = TRUE,
    options = list(
      pageLength = 5,
      lengthMenu = c(5, 10, 15, 20)
    )
  )
  
  # %>% formatStyle(
  #   columns,
  #   valueColumns = columns,
  #   target = c("cell", "row"),
  #   fontWeight = NULL,
  #   color = NULL,
  #   backgroundColor = NULL,
  #   background = NULL,
  #   ...
  # )
  %>% formatStyle(
    columns = 'Sepal.Length',
    color = 'red',
    backgroundColor = 'orange',
    fontWeight = styleInterval(5, c('normal', 'bold'))
    # fontWeight = 'bold'
  )
  %>% formatStyle(
    'Sepal.Width',
    color = styleInterval(c(3.4, 3.8), c('white', 'blue', 'red')),
    backgroundColor = styleInterval(3.4, c('gray', 'yellow'))
  )
  %>% formatStyle(
    'Petal.Length',
    background = styleColorBar(iris$Petal.Length, 'steelblue'),
    backgroundSize = '100% 90%',
    backgroundRepeat = 'no-repeat',
    backgroundPosition = 'center'
  )
  %>% formatStyle(
    'Species',
    transform = 'rotateX(45deg) rotateY(20deg) rotateZ(30deg)',
    backgroundColor = styleEqual(
      unique(iris$Species), c('lightblue', 'lightgreen', 'lightpink')
    )
  )
)

output[["dt_format_extension"]] <- renderDataTable(
  iris,
  rownames = FALSE,
  extensions = c('Buttons', 'ColReorder'),
  options = list(
    dom = 'Bfrtip',
    buttons = c(I('colvis'), 'copy', 'csv', 'excel', 'pdf', 'print'),
    colReorder = list(realtime = FALSE)
  )
)