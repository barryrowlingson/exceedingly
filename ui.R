library(shiny)


shinyUI(fluidPage(

  # Application title
    titlePanel("Exceedence Vis"),

  # Sidebar with a slider input for the threshold and prob
    sidebarLayout(
        sidebarPanel(
            sliderInput("threshold",
                        "Threshold Value:",
                        min = 1,
                        max = 50,
                        value = 30),
            sliderInput("prob",
                        "Exceedence Probability:",
                        min = 0,
                        max = 1,
                        value = 0.9)
            ),
                                        # Plot it
        mainPanel(
            plotOutput("exceedPlot")
            )
        )
    )
        )



