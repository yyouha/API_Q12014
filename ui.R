library(shiny)
library(ggplot2)
library(dplyr)
library(shinydashboard)


dashboardPage(
  dashboardHeader(title = "IPU Q1 2014 in Malaysia"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
      menuItem("Help/Documentation", tabName = "menu", icon = icon("th")),
      menuItem("Git Repo", tabName = "git", icon = icon("th"))
    )
  ),
  ## Body content
  dashboardBody(
    tabItems(
      # First tab content
      tabItem(tabName = "dashboard",
              fluidRow(
                mainPanel(
                  tabsetPanel(
                    tabPanel(
                      "IPU reading (By State)",br(),
                      uiOutput("countryOutput"),
                      plotOutput("coolplot"),
                      br(), br(),
                      tableOutput("results")
                    ),
                    tabPanel( "Dataset",br(),
                              dataTableOutput("results2") 
                    )
                  )
                )
                
                
              )
      ),
      
      # Second tab content
      tabItem(tabName = "menu",
              h4("The dataset can be download from http://www.data.gov.my/view.php?view=273",
                 br(), br(),"I have selected only data from January 2014 - March 2014 and clean the data to suit my analysis. The higher the IPU reading the worse the condition is.
                 You can select to filter the record by state.",
                 br(), br(), "This project made use of the following packages: shiny, shinydashboard, ggplot to display plot and analysis of IPU reading in Malaysia.",
                 br(), br(), "Select the state to view the result for each state,",
                 br(), br(), "For the nice look and feel for this apps, I use shinydashboard library (https://rstudio.github.io/shinydashboard/get_started.html)"
              )
      ),
      # third tab content
      tabItem(tabName = "git",
              h4("Github Repo link : https://github.com/yyouha/API_Q12014",
                 br(), br(),"You can get the ui.R, server.R and the dataset from there."
              )
      )
    )
  )
  )