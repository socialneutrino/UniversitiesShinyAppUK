require(googleVis)
require(shiny)
library(dplyr)
## Prepare data to be displayed
instStats <- readRDS("instStats.rda")

# Define server logic for slider examples
shinyServer(function(input, output) {
  
  uniFiltered <- reactive({
    # Due to dplyr issue #318, we need temp variables for input values
    minUCAS <- input$range[1]
    maxUCAS <- input$range[2]

  unis <- instStats %>%
    filter(tariffMean >= minUCAS, tariffMean <= maxUCAS)
  
  as.data.frame(unis)
  
  })
  
#   # Reactive expression to compose a data frame containing all of the values
#   sliderValues <- reactive({
#     
#     # Compose data frame
#     data.frame(
#       Name = "UCAS",
#       Value = as.character(paste(input$range, collapse=' ')), 
#       stringsAsFactors=FALSE)
#   })
#   
# Show the values using an HTML table
  output$bubble <- renderGvis({
    gvisBubbleChart(uniFiltered(),
                    idvar="NAME", 
                    xvar="totalUpper", yvar="instPremMean",
                    sizevar="tariffMean",
                    options=list(
                       width=1200, height=800,
                       colorAxis="{colors: ['blue','yellow', 'red'], minValue: [150], maxValue: [600]}",
                       hAxis="{title:'Percentage of Graduates Achieving First and Upper-Second Degrees'}",
                       vAxis="{title:'Percentage Increase on Salary from Institution'}"))
  })
  output$map <- renderGvis({
    gvisGeoMap(uniFiltered(), 
               locationvar='LatLong', 
               numvar='tariffMean',
               hovervar='NAME',
               options=list(showTip=TRUE, showLine=TRUE,
                            enableScrollWheel=TRUE,
                            mapType='hybrid', useMapTypeControl=TRUE,
                            width=1200,height=800,
                            region='GB', dataMode='Markers'))
  })
})