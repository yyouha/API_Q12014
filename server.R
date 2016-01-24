library(shiny)
library(ggplot2)
library(dplyr)
library(shinydashboard)


function(input, output) {
  
  ipu <- read.csv("15-BacaanIPU-JanToMarch2014-cleanedData.csv", stringsAsFactors = FALSE)
  
  output$countryOutput <- renderUI({
    selectInput("countryInput", "Negeri",
                sort(unique(ipu$Negeri)),
                selected = "Selangor")
  })
  
  filtered <- reactive({
    if (is.null(input$countryInput)) {
      return(NULL)
    }
    ipu %>%
      filter(
        Negeri == input$countryInput
      )
  })
  
  
  output$coolplot <- renderPlot({
    if (is.null(filtered())) {
      return()
    }
    
    ggplot(filtered(), aes(API)) +
      geom_histogram(binwidth = 0.5)
    
  })
  output$results <- renderTable({
    filtered()
  })
  
  
  output$results2 = renderDataTable({
    ipu
  })
  
}