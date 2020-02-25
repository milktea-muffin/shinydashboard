# 
# -- shiny
#     |-- global.R: パッケージのロード、ui.R, server.Rの共通の変数/関数定義など
#     |-- server.R: 全画面で共通の関数など
#     |-- ui.R: 全体の枠などの基本レイアウト
#
# References:
#   https://qiita.com/tomotagwork/items/0efe3f08ddd1f268c8f8
#
source('shiny/global.R', local = TRUE)
source('shiny/server.R', local = TRUE) # !!ui.Rよりも先にserver.Rを読み込む!!
source('shiny/ui.R', local = TRUE)

shinyApp(ui, server)
