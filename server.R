### DEVELOPING DATA PRODUCTS
### COURSE PROJECT APP
### JUAN ESTEBAN MEJIA VILLEGAS
### INICIO: 2016-03-18

library(shiny)

### SERVIDOR ###
shinyServer(function(input, output){
  
  output$graf <- renderPlot({
    x <- rnorm(1000, input$media, input$sd)
    hist(x, main = 'Normal Dist.', freq = F)
    if(input$lines)
      lines(density(x), col = 'blue')
    })
  
  output$var = renderText({
    var <- (input$sd)^2
    return(paste('Variance distribution:', var))
  })
  
})