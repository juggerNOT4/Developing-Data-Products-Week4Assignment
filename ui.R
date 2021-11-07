#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Understanding runif() and rnorm() using plots from random numbers"),
    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            
          textInput("text1", "Enter the number. This is the upper limit of the number of points. For a better understanding, keep the number above 500 and below 5000. Click the submit button once you have entered a number.", 
                    placeholder = "555", 
                    width = 255),
          
          
          submitButton("Submit")
          
            ),
      
    
        
        # Show a plot of the generated distribution
        mainPanel(
          
         
            plotOutput("distPlot1"),
          
          
            plotOutput("distPlot2"),
            
            print("Once the plots are generated, we see that the rnorm() plot has points more accumulated to the center, as it generates random numbers in a normal distribution. For runif(), the points are more evenly spread out, as it generates equally distributed numbers.")
        )
    )
    
))
