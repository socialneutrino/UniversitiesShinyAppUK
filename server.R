# Markus Gesmann, February 2013
require(googleVis)
require(shiny)
## Prepare data to be displayed
instStats <- loadRDS("instStats.rda")


##shiny server
shinyServer(function(input, output) {
  output$range <- renderPrint({ input$slider1 })
  ?
})



# ## Add min and max values to the data
# datminmax = data.frame(state=rep(c("Min", "Max"),21), 
#                        demVote=rep(c(0, 100),21),
#                        year=sort(rep(seq(1932,2012,4),2)))
# dat <- rbind(dat[,1:3], datminmax)
# 
# shinyServer(function(input, output) {
#   myYear <- reactive({
#     input$Year
#   })
#   output$year <- renderText({
#     paste("Democratic share of the presidential vote in", myYear())
#   })
#   output$gvis <- renderGvis({
#     myData <- subset(dat, 
#                      (year > (myYear()-1)) & (year < (myYear()+1)))
#     gvisGeoChart(myData,
#                  locationvar="state", colorvar="demVote",
#                  options=list(region="US", displayMode="regions", 
#                               resolution="provinces",
#                               width=500, height=400,
#                               colorAxis="{colors:['#FFFFFF', '#0000FF']}"
#                  ))     
#   })
# })