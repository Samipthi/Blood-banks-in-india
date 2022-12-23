library(shiny)

library(leaflet)


navbarPage("Location of Blood Banks", id="main",
           theme = bslib::bs_theme(bootswatch = "darkly"),
           tabPanel("Map", leafletOutput("bbmap", height=1000)),
           tabPanel("Data", DT::dataTableOutput("data")),
           tabPanel("graphs",titlePanel("Hospital Anaysis"),
                    # Bar Chart
                    plotOutput("brandBar")),
           tabPanel("Read Me",includeMarkdown("readme.md")))
