tab_html_tag <- tabItem(
  tabName = "html_tag",
  fluidPage(
    h1("First level title"),
    h2("Second level title"),
    h3("Third level title"),
    h4("Fourth level title"),
    h5("Fifth level title"),
    h6("Sixth level title", align = "center"),
    
    p("p creates a paragraph of text."),
    p("A new p() command starts a new paragraph. Supply a style attribute to change the format of the entire paragraph.", style = "font-family: 'times'; font-si16pt"),
    strong("strong() makes bold text."),
    em("em() creates italicized (i.e, emphasized) text."),
    br(),
    code("code displays your text similar to computer code"),
    div("div creates segments of text with a similar style. This division of text is all blue because I passed the argument 'style = color:blue' to div", style = "color:blue"),
    br(),
    p("span does the same thing as div, but it works with",
      span("groups of words", style = "color:blue"),
      "that appear inside a paragraph."),
    
    img(src = "my_image.png", height = 72, width = 72),
    
    #----- ここまではshinyにラッパーされており、tags$が不要
    
    #----- ここからはtags$をつける必要がある
    # https://shiny.rstudio.com/articles/tag-glossary.html
    # 
    # > names(tags)
    ##   [1] "a"           "abbr"        "address"     "area"        "article"
    ##   [6] "aside"       "audio"       "b"           "base"        "bdi"
    ##  [11] "bdo"         "blockquote"  "body"        "br"          "button"
    ##  [16] "canvas"      "caption"     "cite"        "code"        "col"
    ##  [21] "colgroup"    "command"     "data"        "datalist"    "dd"
    ##  [26] "del"         "details"     "dfn"         "div"         "dl"
    ##  [31] "dt"          "em"          "embed"       "eventsource" "fieldset"
    ##  [36] "figcaption"  "figure"      "footer"      "form"        "h1"
    ##  [41] "h2"          "h3"          "h4"          "h5"          "h6"
    ##  [46] "head"        "header"      "hgroup"      "hr"          "html"
    ##  [51] "i"           "iframe"      "img"         "input"       "ins"
    ##  [56] "kbd"         "keygen"      "label"       "legend"      "li"
    ##  [61] "link"        "mark"        "map"         "menu"        "meta"
    ##  [66] "meter"       "nav"         "noscript"    "object"      "ol"
    ##  [71] "optgroup"    "option"      "output"      "p"           "param"
    ##  [76] "pre"         "progress"    "q"           "ruby"        "rp"
    ##  [81] "rt"          "s"           "samp"        "script"      "section"
    ##  [86] "select"      "small"       "source"      "span"        "strong"
    ##  [91] "style"       "sub"         "summary"     "sup"         "table"
    ##  [96] "tbody"       "td"          "textarea"    "tfoot"       "th"
    ## [101] "thead"       "time"        "title"       "tr"          "track"
    ## [106] "u"           "ul"          "var"         "video"       "wbr"    
    tags$textarea()
  )
)