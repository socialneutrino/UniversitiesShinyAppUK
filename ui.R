library(shiny)

# Define UI for slider demo application
shinyUI(pageWithSidebar(
  
  #  Application title
  headerPanel("Sliders"),
  
  # Sidebar with sliders that demonstrate various available options
  sidebarPanel(
    
    # Specification of range within an interval
    sliderInput("range", "Range:",
                min = 0, max = 600, value = c(200,500))
),

  # Show a table summarizing the values entered
  mainPanel(
    htmlOutput("view")
  )
))