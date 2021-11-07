#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)
# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$distPlot1 <- renderPlot({
        
       set.seed(8888)
       plot(x = runif(input$text1), y = runif(input$text1), xlab = "runif X", ylab = "runif Y", main="runif plot")
      
    })
    output$distPlot2 <- renderPlot({
      set.seed(8888)
      plot(x = rnorm(input$text1), y = rnorm(input$text1), xlab = "rnorm X", ylab = "rnorm Y", main="rnorm plot")
      
    })

})
