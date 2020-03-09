tab_html_color <- tabItem(
  tabName = "html_color",
  fluidRow(
    box(title = "primary", width = 2, status = "primary", solidHeader = TRUE),
    box(title = "success", width = 2, status = "success", solidHeader = TRUE),
    box(title = "info", width = 2, status = "info", solidHeader = TRUE),
    box(title = "warning", width = 2, status = "warning", solidHeader = TRUE),
    box(title = "danger", width = 2, status = "danger", solidHeader = TRUE)
  ),
  fluidRow(
    box(title = "red", width = 2, background = "red"),
    box(title = "yellow", width = 2, background = "yellow"),
    box(title = "aqua", width = 2, background = "aqua"),
    box(title = "blue", width = 2, background = "blue"),
    box(title = "light-blue", width = 2, background = "light-blue"),
    box(title = "green", width = 2, background = "green"),
    box(title = "navy", width = 2, background = "navy"),
    box(title = "teal", width = 2, background = "teal"),
    box(title = "olive", width = 2, background = "olive"),
    box(title = "lime", width = 2, background = "lime"),
    box(title = "orange", width = 2, background = "orange"),
    box(title = "fuchsia", width = 2, background = "fuchsia"),
    box(title = "purple", width = 2, background = "purple"),
    box(title = "marmoon", width = 2, background = "maroon"),
    box(title = "black", width = 2, background = "black")
  )
)