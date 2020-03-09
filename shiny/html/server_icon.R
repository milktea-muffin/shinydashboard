##----------------------------------------------------------------------------##
## html_icon
##----------------------------------------------------------------------------##
#
# -- Reference
#   DT内でアイコンを表示する
#   https://gist.github.com/cecilialee/e848068cfd5862fd63961b03b42ead78
#
#   Font Awesomeのクラス
#   https://saruwakakun.com/html-css/basic/font-awesome
# 
#---------------------------
# Font Awesome
#---------------------------
output[["html_icon_fontawesome_table"]] <- renderDT({
  # アイコンファイルの読み込み
  icon_df <- read.csv("./shiny/html/icon_fontawesome.txt",
                      sep="\t", header = FALSE, stringsAsFactors = FALSE,
                      blank.lines.skip = TRUE, comment.char = "#")
  
  # 列名の設定
  colnames(icon_df) = c("icon_name")
  
  # font awesomeアイコンに変換する関数
  icon_to_html <- function(x) as.character(icon(x, class = "fa-lg", lib = "font-awesome"))
  
  # データ作成
  icon_df["icon_html"] = apply(icon_df["icon_name"], 1, icon_to_html)
  
  # 表示用テーブル作成
  datatable(icon_df, escape = FALSE)
})

#---------------------------
# glyphicon
#---------------------------
output[["html_icon_glyphicon_table"]] <- renderDT({
  # アイコンファイルの読み込み
  icon_df <- read.csv("./shiny/html/icon_glyphicon.txt",
                      sep="\t", header = FALSE, stringsAsFactors = FALSE,
                      blank.lines.skip = TRUE, comment.char = "#")
  
  # 列名の設定
  colnames(icon_df) = c("icon_name")
  
  # font awesomeアイコンに変換する関数
  icon_to_html <- function(x) as.character(icon(x, lib = "glyphicon"))
  
  # データ作成
  icon_df["icon_html"] = apply(icon_df["icon_name"], 1, icon_to_html)
  
  # 表示用テーブル作成
  datatable(icon_df, escape = FALSE)
})

