
library(shiny)
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Calculation of free testosterone"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      h3('Input concentrations'),
       numericInput(inputId = 'testo',label = 'Testosterone (nmol/l)',value=20,min = 0.1,max = 40,width = '80%'),
       numericInput(inputId = 'shbg',label = 'SHBG (nmol/l)',value=40,min = 1,max = 100,width='80%' )
    ),
    
    
    
    mainPanel(
      tabsetPanel(type = "tabs", 
                  tabPanel("Calculator",
                           h3('Free testosterone'),
                           textOutput('free_t')), 
                  tabPanel("Documentation", 
                           h3('Description of the app'),
                           p('text')))
                  
      
    )
  )
))
