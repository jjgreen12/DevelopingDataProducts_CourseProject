#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$fv_output <- renderText({

        fv_output <- as.numeric(input$pv) * (1 + (as.numeric(input$i)/ as.numeric(input$n)))^(as.numeric(input$n)*as.numeric(input$t))})

    output$pv_output <- renderText({

        pv_output <- as.numeric(input$fv) / (1 + (as.numeric(input$i) / as.numeric(input$n)))^(as.numeric(input$n)*as.numeric(input$t))})

})
