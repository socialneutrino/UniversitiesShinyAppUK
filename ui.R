library(shiny)

shinyUI(pageWithSidebar(
  # Application title
  headerPanel("EAHU Panel"),
  
  sidebarPanel( 
    numericInput("minedad", "Minimum Age",-1,-1,99),
    numericInput("maxedad", "Maximum Age",99,-1,99),
    checkboxGroupInput("gender","Gender",c(
      "Male"="Varon",
      "Female"="Mujer")),
    checkboxGroupInput("region","Region",c(
      "NOA"="NOA",
      "NEA"="NEA",
      "Cuyo"="Cuyo",
      "CABA"="CABA",
      "Buenos Aires"="BA",
      "Centro"="Centro",
      "Patagonia"="Patagonia")),
    checkboxGroupInput("year","Year",c(
      "2010"="2010",
      "2011" ="2011",
      "2012" = "2012")),
    submitButton(text="Ready")),
  
  mainPanel(
    tabsetPanel(
      tabPanel("Income",h4("Yearly income"),htmlOutput("motionchart")),
      tabPanel("Demography",h4("Ages by provinces"),htmlOutput("edades")),
      tabPanel("Occupation",h4("Occupation by province (in %)"),htmlOutput("tabla1"),
               h4("Activity of the occupied people (in %)"),htmlOutput("tabla2")),
      tabPanel("Education",htmlOutput("linech"))
    )
  )
))
 