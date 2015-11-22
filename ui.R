library(shiny)

# Define UI for slider demo application
shinyUI(fluidPage(
  
  #  Application title
  headerPanel("English and Welsh University Information"),

  
  # Sidebar with sliders that demonstrate various available options
  fluidRow(
    column(6,
           wellPanel(
    
    # Specification of range within an interval
    sliderInput("range", "Average Entry UCAS Tariff:",
                min = 0, max = 600, value = c(100,580))
           )),
    column(6,
           selectInput("type_output",
                       "Plot Type:",
                       c("GeoMap", "Bubble"))
    )
),

  # Show a table summarizing the values entered
  fluidRow(
    column(12,
    htmlOutput("bubble")
  )),
fluidRow(
  column(12,
  htmlOutput("map")
  ))
))