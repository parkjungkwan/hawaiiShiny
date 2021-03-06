library(shiny)
library(shinydashboard)
library(shinyjs)

ui <- fluidPage(
  dateRangeInput("date",
                 label = h3("기간 설정")
                 ),
  hr(),
  fluidRow(column(4, verbatimTextOutput("value")))
)

server <- function(input, output, session) {
  output$value <- renderPrint({input$date})
  
}

shinyApp(ui, server)
