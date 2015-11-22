require(googleVis)
require(shiny)
library(dplyr)
## Prepare data to be displayed
instStats <- readRDS("instStats.rda")

# Define server logic
shinyServer(function(input, output) {

# Filter universities by UCAS entry tariff
  uniFiltered <- reactive({
    # Due to dplyr issue #318, we need temp variables for input values
    minUCAS <- input$range[1]
    maxUCAS <- input$range[2]

  unis <- instStats %>%
    filter(tariffMean >= minUCAS, tariffMean <= maxUCAS)
  
  as.data.frame(unis)
  
  })
  
# Choose chart type
  chartChoice <- reactive({
    input$type_output
  })
  

# output$view <- renderPrint({ chartChoice() })
  
#   
# Display results using googleVis
  observe({
    if(chartChoice()=="Bubble"){
      output$view <- renderGvis({
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
    }else{
      output$view <- renderGvis({
            map.df <- uniFiltered()
            gvisGeoMap(map.df, 
                       locationvar='LatLong', 
                       numvar='instPremMean',
                       hovervar='NAME',
                       options=list(showTip=TRUE, showLine=TRUE,
                                    enableScrollWheel=TRUE,
                                    mapType='hybrid', useMapTypeControl=TRUE,
                                    width=1200,height=800,
                                    region='GB', dataMode='Markers'))
      })
    }
})
  
  

})





