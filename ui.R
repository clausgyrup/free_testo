
require(shiny)
shinyUI(fluidPage(
  titlePanel("Calculation of free testosterone"),
  sidebarLayout(
    sidebarPanel(
      h3('Input concentrations'),
       numericInput(inputId = 'testo',label = 'Testosterone (nmol/l)',value=20,min = 0.1,max = 40,width = '80%'),
       numericInput(inputId = 'shbg',label = 'SHBG (nmol/l)',value=40,min = 1,max = 100,width='80%' ),
      p('Adjust the variables and the concentration of free testosterone is automatically calculated.')
    ),
    
    
    
    mainPanel(
      tabsetPanel(type = "tabs", 
                  tabPanel("Calculator",
                           h3('Free testosterone'),
                           textOutput('free_t')), 
                  tabPanel("Description", 
                           h3('Description of the app'),
                           p('Testosterone, the male steroid hormone, is an important 
                             steroid hormone in the human body. It circulates in the blood bound to 
                             the plasma proteins albumin and sex hormone binding globulin (SHBG). A small 
                             fraction of testosterone is not bound to any proteins and is considered 
                             the active form. This form is difficult to measure, but can be estimated from the total testosterone 
                             concentration, the SHBG concentration and the concentration of albumin.'),
                           p('The calculation of free testosterone is carried out as described in Vermeulen A et.al. 1999 J
                             Clin Endocrin Metab, 84,3666-3672')
                           ))
                  
      
    )
  )
))
