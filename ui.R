### DEVELOPING DATA PRODUCTS
### COURSE PROJECT APP
### JUAN ESTEBAN MEJIA VILLEGAS
### INICIO: 2016-03-18

### INTERFAZ ###
shinyUI(fluidPage(
  headerPanel('Normal Distribution Similation'),
  sidebarPanel(
    sliderInput('media', h5('Select mean'), min = -10, max = 10, value = 0),
    sliderInput('sd', h5('Select standar deviation'), min = 1, max = 5, value = 0, step = 0.5),
    uiOutput('var'),
    checkboxInput('lines', 'Draw probability dist. function', T)
  ),
  mainPanel(plotOutput('graf'))
))