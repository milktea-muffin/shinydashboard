##----------------------------------------------------------------------------##
## dt_interactive
##----------------------------------------------------------------------------##
output[["dt_interactive"]] <- renderDataTable(
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