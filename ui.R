require(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Mean Entry UCAS Tariff"),
  sidebarPanel(
    sliderInput("range", "UCAS Points:", 
                min=0, max=600, value = c(200,500)
  ),
  mainPanel(
    h3(textOutput("year")), 
    htmlOutput("gvis")
  )
)
)
 