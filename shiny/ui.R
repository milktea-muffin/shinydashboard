##----------------------------------------------------------------------------##
## 
##----------------------------------------------------------------------------##
source('shiny/box/ui_box.R', local = TRUE)
source('shiny/box/ui_tabbox.R', local = TRUE)
source('shiny/box/ui_infobox.R', local = TRUE)
source('shiny/box/ui_valuebox.R', local = TRUE)
source('shiny/layout/ui_rowbased.R', local = TRUE)
source('shiny/layout/ui_columnbased.R', local = TRUE)
source('shiny/layout/ui_mixed.R', local = TRUE)
source('shiny/widgets/ui_button.R', local = TRUE)
source('shiny/widgets/ui_checkbox.R', local = TRUE)
source('shiny/widgets/ui_date.R', local = TRUE)
source('shiny/widgets/ui_file.R', local = TRUE)
# source('shiny/widgets/ui_numeric.R', local = TRUE)
# source('shiny/widgets/ui_radio.R', local = TRUE)
# source('shiny/widgets/ui_select.R', local = TRUE)
# source('shiny/widgets/ui_slider.R', local = TRUE)
# source('shiny/widgets/ui_text.R', local = TRUE)
source('shiny/color/ui_color.R', local = TRUE)
source('shiny/icon/ui_icon.R', local = TRUE)
source('shiny/html/ui_html.R', local = TRUE)

##----------------------------------------------------------------------------##
## 
##----------------------------------------------------------------------------##
ui <- dashboardPage(
  ##----------------------------------------------------------------------------##
  ## Header
  ##----------------------------------------------------------------------------##
  dashboardHeader(
    title = "Dashboard Demo",
    # titleWidth = 350, # タイトルが長い場合は幅を設定する。sidebarの幅も同じ値に設定する。
    
    dropdownMenuOutput("header_message_menu"), # server_header.RのoutputであるmessageMenuを呼び出している
    # または
    # dropdownMenu(type = "messages",
    #              badgeStatus = "success",
    #              messageItem(from = "from",
    #                          message = "message",
    #                          time = "5 mins"
    #              ),
    #              messageItem(from = "Support Team",
    #                          message = "This is the content of another message.",
    #                          time = "2 hours"
    #              ),
    #              messageItem("New User",
    #                          "Can I get some help?",
    #                          time = "Today"
    #              )
    # ),
    
    dropdownMenu(type = "notifications",
                 badgeStatus = "warning",
                 notificationItem(icon = icon("users"),
                                  status = "info",
                                  "5 new members joined today"
                 ),
                 notificationItem(icon = icon("warning"),
                                  status = "danger",
                                  "Resource usage near limit."
                 ),
                 notificationItem(icon = icon("shopping-cart", lib = "glyphicon"),
                                  status = "success",
                                  "25 sales made"
                 ),
                 notificationItem(icon = icon("user", lib = "glyphicon"),
                                  status = "danger",
                                  "You changed your username"
                 )
    ),
    
    dropdownMenu(type = "tasks",
                 badgeStatus = "danger",
                 taskItem(value = 20, 
                          color = "aqua",
                          "Refactor code"
                 ),
                 taskItem(value = 40, 
                          color = "green",
                          "Design new layout"
                 ),
                 taskItem(value = 60, 
                          color = "yellow",
                          "Another task"
                 ),
                 taskItem(value = 80, 
                          color = "red",
                          "Write documentation"
                 )
    )
  ),

  ##----------------------------------------------------------------------------##
  ## Sidebar
  ##----------------------------------------------------------------------------##
  dashboardSidebar(
    # width = 350, # 幅を変えたい場合は設定する。titleWidthも同じ値に設定する。
    
    sidebarUserPanel("User Name",
                     subtitle = a(href = "#", icon("circle", class = "text-success"), "Online"),
                     # Image file should be in www/ subdir
                     image = "userimage.png"
    ),
    
    sidebarSearchForm(textId = "searchText", 
                      buttonId = "searchButton",
                      label = "Search..."),
    
    # sidebarMenuOutput("sidebar_menu")
    # または
    sidebarMenu(
      id = "tabs", # idを設定すると選択中のタブの名前が入る
      
      # menuItemOutput("sidebar_menu_items")
      # または
      menuItem("Menu (with badge)",
               tabName = "menu",
               icon = icon("dashboard"),
               badgeLabel = "new",
               badgeColor = "green"
      ),
      menuItem("Box",
               icon = icon("bar-chart-o"),
               menuSubItem("box", tabName = "box"),
               menuSubItem("tabBox", tabName = "tabbox"),
               menuSubItem("infoBox", tabName = "infobox"),
               menuSubItem("valueBox", tabName = "valuebox")
      ),
      menuItem("Layout",
               icon = icon("bar-chart-o"),
               menuSubItem("Row-based", tabName = "rowbased"),
               menuSubItem("Column-based", tabName = "columnbased"),
               menuSubItem("Mixed", tabName = "mixed")
      ),
      menuItem("Widgets",
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
      menuItem("HTML", 
               tabName = "html",
               icon = icon("th")
      ),
      menuItem("Colors", 
               tabName = "color",
               icon = icon("th")
      ),
      menuItem("Icons", 
               tabName = "icon",
               icon = icon("th")
      ),
      menuItem("References", 
               tabName = "reference",
               icon = icon("th")
      ),
      menuItem("Source code",
               icon = icon("file-code-o"), 
               href = "https://github.com/rstudio/shinydashboard/",
               newtab = TRUE
      )
    )
  ),
  
  ##----------------------------------------------------------------------------##
  ## Body
  ##----------------------------------------------------------------------------##
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
      # tab_widgets_numeric,
      # tab_widgets_radio,
      # tab_widgets_select,
      # tab_widgets_slider,
      # tab_widgets_text,
      tab_color,
      tab_icon,
      tab_html
    )
  ),
  
  ##----------------------------------------------------------------------------##
  ## Others
  ##----------------------------------------------------------------------------##
  skin = "blue" # blue, black, purple, green, red, yellow
)
