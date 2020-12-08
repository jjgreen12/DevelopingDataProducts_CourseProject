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
    titlePanel("Present and Future Value of Money"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            textInput("pv", "Present Value:", value = "Principal investment"),
            textInput("i", "Interest Rate:", value = "Interest rate"),
            textInput("n", "Number of compounding periods of interest:", value = "Number of compounding periods"),
            textInput("t", "Number of years:", value = "Years of the investment"),
            textInput("fv", "Future Value:" , value = "Investment target"),
            submitButton("Submit")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            h3("Predicted Future Value:"),
            textOutput("fv_output"),
            h3("Predicted Present Value:"),
            textOutput("pv_output")
        )
    )
))

