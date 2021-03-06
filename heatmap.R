uniMap <- gvisGeoMap(instStats, locationvar='LatLong', 
                     numvar='instPremMean',
                     hovervar='NAME',
                     options=list(showTip=TRUE, showLine=TRUE,
                                  enableScrollWheel=TRUE,
                                  mapType='hybrid', useMapTypeControl=TRUE,
                                  width=1600,height=2000,
                                  region='GB', dataMode='Markers'))


plot(uniMap)

Bubble <- gvisBubbleChart(instStats, idvar="NAME", 
                          xvar="tariffMean", yvar="instPremMean",
                          sizevar="totalFirst",
                          options=list(
                            width=1200,height=800,
                            hAxis='{minValue:75, maxValue:125}'))
plot(Bubble)