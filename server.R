require(googleVis)
require(shiny)
library(dplyr)
## Prepare data to be displayed
instStats <- readRDS("instStats.rda")

# Define server logic for slider examples
shinyServer(function(input, output) {
  
  # Reactive expression to compose a data frame containing all of the values
  sliderValues <- reactive({
    
    # Compose data frame
    data.frame(
      Name = "UCAS",
      Value = as.character(paste(input$range, collapse=' ')), 
      stringsAsFactors=FALSE)
  }) 
  
  # Show the values using an HTML table
  output$values <- renderTable({
    sliderValues()
  })
})