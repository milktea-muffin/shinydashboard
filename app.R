# 
# -- shiny
#     |-- global.R: パッケージのロード、ui.R, server.Rの共通の変数/関数定義など
#     |-- server.R: 全画面で共通の関数など
#     |-- ui.R: 全体の枠などの基本レイアウト
#
# -- www
#     |-- custom.css:
#     |-- custom.js:
#     |-- custom.:
#
# 注意事項
# - ui.Rよりも先にserver.Rを読み込む
# - Electronを使う場合はフォルダの指定を./から始める必要がある
# - Windowsで実行する場合はencoding = 'utf-8'を指定する必要がある
# - wwwフォルダはapp.Rと同じフォルダに配置しなければならない
# - fileInputのように最初はNULLの値となる入力値を処理する場合、req()を使ってNULLでなくなった時点でそれ以降の処理が実行されるようにする
#
# References:
#   https://qiita.com/tomotagwork/items/0efe3f08ddd1f268c8f8
#
source('./shiny/global.R', local = TRUE, encoding = 'utf-8')
source('./shiny/server.R', local = TRUE, encoding = 'utf-8') # !!ui.Rよりも先にserver.Rを読み込む!!
source('./shiny/ui.R', local = TRUE, encoding = 'utf-8')

shinyApp(ui, server)
