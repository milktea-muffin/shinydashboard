##----------------------------------------------------------------------------##
## Custom functions
##----------------------------------------------------------------------------##
basicBox12 <- function (title, content) {
  box(
    title = title,
    status = "primary",
    solidHeader = TRUE,
    width = 12,
    collapsible = TRUE,
    content # tagList(...)
  )
}

basicBox6 <- function (title, content) {
  box(
    title = title,
    status = "primary",
    solidHeader = TRUE,
    width = 6,
    collapsible = TRUE,
    content # tagList(...)
  )
}

basicBox4 <- function (title, content) {
  box(
    title = title,
    status = "primary",
    solidHeader = TRUE,
    width = 4,
    collapsible = TRUE,
    content # tagList(...)
  )
}

basicBox3 <- function (title, content) {
  box(
    title = title,
    status = "primary",
    solidHeader = TRUE,
    width = 3,
    collapsible = TRUE,
    content # tagList(...)
  )
}

##----------------------------------------------------------------------------##
## 
##----------------------------------------------------------------------------##
source('./shiny/box/ui_box.R', local = TRUE, encoding = 'utf-8')
source('./shiny/box/ui_tabbox.R', local = TRUE, encoding = 'utf-8')
source('./shiny/box/ui_infobox.R', local = TRUE, encoding = 'utf-8')
source('./shiny/box/ui_valuebox.R', local = TRUE, encoding = 'utf-8')
source('./shiny/layout/ui_rowbased.R', local = TRUE, encoding = 'utf-8')
source('./shiny/layout/ui_columnbased.R', local = TRUE, encoding = 'utf-8')
source('./shiny/layout/ui_mixed.R', local = TRUE, encoding = 'utf-8')
source('./shiny/widgets/ui_button.R', local = TRUE, encoding = 'utf-8')
source('./shiny/widgets/ui_checkbox.R', local = TRUE, encoding = 'utf-8')
source('./shiny/widgets/ui_date.R', local = TRUE, encoding = 'utf-8')
source('./shiny/widgets/ui_file.R', local = TRUE, encoding = 'utf-8')
source('./shiny/widgets/ui_numeric.R', local = TRUE, encoding = 'utf-8')
source('./shiny/widgets/ui_radio.R', local = TRUE, encoding = 'utf-8')
source('./shiny/widgets/ui_select.R', local = TRUE, encoding = 'utf-8')
source('./shiny/widgets/ui_slider.R', local = TRUE, encoding = 'utf-8')
source('./shiny/widgets/ui_text.R', local = TRUE, encoding = 'utf-8')
source('./shiny/color/ui_color.R', local = TRUE, encoding = 'utf-8')
source('./shiny/icon/ui_icon.R', local = TRUE, encoding = 'utf-8')
source('./shiny/html/ui_html.R', local = TRUE, encoding = 'utf-8')

##----------------------------------------------------------------------------##
## 
##----------------------------------------------------------------------------##
ui <- dashboardPage(
  
  dashboardHeader(
    title = "Dashboard Demo",
    # titleWidth = 350, # タイトルが長い場合は幅を設定する。sidebarの幅も同じ値に設定する。
    
    dropdownMenuOutput("header_message_menu"), # server_header.RのoutputであるmessageMenuを呼び出している
    # または
    # dropdownMenu(
    #   type = "messages",
    #   badgeStatus = "success",
    #
    #   messageItem(
    #     from = "from",
    #     message = "message",
    #     time = "5 mins"
    #   ),
    #   messageItem(
    #     from = "Support Team",
    #     message = "This is the content of another message.",
    #     time = "2 hours"
    #   ),
    #   messageItem(
    #     from = "New User",
    #     message = "Can I get some help?",
    #     time = "Today"
    #   )
    # ),
    
    dropdownMenu(
      type = "notifications",
      badgeStatus = "warning",
      
      notificationItem(
        icon = icon("users"),
        status = "info",
        "5 new members joined today"
      ),
      notificationItem(
        icon = icon("warning"),
        status = "danger",
        "Resource usage near limit."
      ),
      notificationItem(
        icon = icon("shopping-cart", lib = "glyphicon"),
        status = "success",
        "25 sales made"
      ),
      notificationItem(
        icon = icon("user", lib = "glyphicon"),
        status = "danger",
        "You changed your username"
      )
    ),
    
    dropdownMenu(
      type = "tasks",
      badgeStatus = "danger",
      
      taskItem(
        value = 20, 
        color = "aqua",
        "Refactor code"
      ),
      taskItem(
        value = 40, 
        color = "green",
        "Design new layout"
      ),
      taskItem(
        value = 60, 
        color = "yellow",
        "Another task"
      ),
      taskItem(
        value = 80, 
        color = "red",
        "Write documentation"
      )
    )
  ),

  dashboardSidebar(
    # width = 350, # 幅を変えたい場合は設定する。titleWidthも同じ値に設定する。
    
    sidebarUserPanel(
      "User Name",
      subtitle = a(href = "#", icon("circle", class = "text-success"), "Online"),
      # Image file should be in www/ subdir
      image = "userimage.png"
    ),
    
    sidebarSearchForm(
      textId = "searchText", 
      buttonId = "searchButton",
      label = "Search..."
    ),
    
    # sidebarMenuOutput("sidebar_menu")
    # または
    sidebarMenu(
      id = "tabs", # idを設定すると選択中のタブの名前が入る
      
      # menuItemOutput("sidebar_menu_items")
      # または
      menuItem(
        text ="Menu (with badge)",
        icon = icon("dashboard"),
        tabName = "menu",
        badgeLabel = "new",
        badgeColor = "green"
      ),
      menuItem(
        text = "Box",
        icon = icon("bar-chart-o"),
        menuSubItem("box", tabName = "box"),
        menuSubItem("tabBox", tabName = "tabbox"),
        menuSubItem("infoBox", tabName = "infobox"),
        menuSubItem("valueBox", tabName = "valuebox")
      ),
      menuItem(
        text = "Layout",
        icon = icon("bar-chart-o"),
        menuSubItem("Row-based", tabName = "rowbased"),
        menuSubItem("Column-based", tabName = "columnbased"),
        menuSubItem("Mixed", tabName = "mixed")
      ),
      menuItem(
        text = "Widgets",
        icon = icon("bar-chart-o"),
        menuSubItem("Button", tabName = "widgets_button"),
        menuSubItem("Checkbox", tabName = "widgets_checkbox"),
        menuSubItem("Date", tabName = "widgets_date"),
        menuSubItem("File", tabName = "widgets_file"),
        menuSubItem("Numeric", tabName = "widgets_numeric"),
        menuSubItem("Radio", tabName = "widgets_radio"),
        menuSubItem("Select", tabName = "widgets_select"),
        menuSubItem("Slider", tabName = "widgets_slider"),
        menuSubItem("Text", tabName = "widgets_text")
      ),
      menuItem(
        text = "HTML", 
        tabName = "html",
        icon = icon("th")
      ),
      menuItem(
        text = "Colors", 
        tabName = "color",
        icon = icon("th")
      ),
      menuItem(
        text = "Icons", 
        tabName = "icon",
        icon = icon("th")
      ),
      menuItem(
        text = "References", 
        tabName = "reference",
        icon = icon("th")
      ),
      menuItem(
        text = "Source code",
        icon = icon("file-code-o"), 
        href = "https://github.com/rstudio/shinydashboard/",
        newtab = TRUE
      )
    )
  ),
  
  dashboardBody(
    tags$head(
      tags$link(rel = "stylesheet", type = "text/css", href = "custom.css")
    ),
    tabItems(
      tab_box,
      tab_tabbox,
      tab_infobox,
      tab_valuebox,
      tab_rowbased,
      tab_columnbased,
      tab_mixed,
      tab_widgets_button,
      tab_widgets_checkbox,
      tab_widgets_date,
      tab_widgets_file,
      tab_widgets_numeric,
      tab_widgets_radio,
      tab_widgets_select,
      tab_widgets_slider,
      tab_widgets_text,
      tab_color,
      tab_icon,
      tab_html
    )
  ),
  
  skin = "blue" # blue, black, purple, green, red, yellow
)
