

library(shiny)
library(dplyr)
library(RColorBrewer)
library(devtools)

ui <- fluidPage(

    titlePanel("Dades de Joventut Barcelona 2020"),

    fluidRow(
          column(2,
            selectInput("select1", h3("Grup de Variables a comparar:"), 
                      choices = list("Demogràfiques" = 1, "Polítiques" = 2,
                                     "Salut" = 3), selected = 1)),
          column(2,
                 selectInput("select2", h3("Grup de Variables a comparar:"), 
                             choices = list("Demogràfiques" = 1, "Polítiques" = 2,
                                            "Salut" = 3), selected = 2))
        ),
    fluidRow(
      column(2,
             selectInput("selecta", h3("Variables a comparar:"), choices = c("Districte" = "Districte" ), selected = "Districte")),
      column(2,
             selectInput("selectb", h3("Variables a comparar:"), choices = c("Immigracio" = "Immigracio"), selected = "Immigracio"))
      ),
        mainPanel(
           plotOutput("Plot")
        )
    )

library(devtools)
source_url("https://github.com/gmirfu/VDUOCGMIRFU/raw/main/PRA%202%20VD%20Analisis.R")
server <- function(input, output, session) {
    observe({
      if(input$select1 == 1) x1 <- demodata
      if(input$select1 == 2) x1 <- poldata
      if(input$select1 == 3) x1 <- saldata
      if(input$select2 == 1) x2 <- demodata
      if(input$select2 == 2) x2 <- poldata
      if(input$select2 == 3) x2 <- saldata
      
      updateSelectInput(session, "selecta",
                        choices = colnames(x1))
      
      
      updateSelectInput(session, "selectb",
                        choices = colnames(x2))
      
    })
   
    output$Plot <- renderPlot({
      if(input$select1 == 1) x1 <- demodata
      if(input$select1 == 2) x1 <- poldata
      if(input$select1 == 3) x1 <- saldata
      if(input$select2 == 1) x2 <- demodata
      if(input$select2 == 2) x2 <- poldata
      if(input$select2 == 3) x2 <- saldata
      a <- x1[,which(colnames(x1)==input$selecta)]; b <- x2[,which(colnames(x2)==input$selectb)]
      counts <- prop.table(table(a,b), margin=2)
      barplot(counts, main=paste(input$selecta,"vs",input$selectb),
              xlab=input$selectb, ylab=input$selecta, col = rainbow(length(counts[,1])),
              beside=TRUE)
      legend("topright", legend = rownames(counts), fill =  rainbow(length(counts[,1])), ncol = 2, cex = 0.75)
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
