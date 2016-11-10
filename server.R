

require(shiny)

shinyServer(function(input, output) {

  calc_free<-reactive({
    t<-input$testo
    s<-input$shbg
    round((-1*((23.32-t+s)/(2*23.32)))+sqrt(((((23.32-t+s)^2)/((4*(23.32^2)))+t/(23.32*1)))),4)
  })
  
  output$free_t<-renderText({paste(calc_free(),'nmol/l',sep=' ')})
  
})

