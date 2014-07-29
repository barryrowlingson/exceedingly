library(shiny)

# Define server logic required to draw exceedence plot
shinyServer(function(input, output) {

    output$exceedPlot <- renderPlot({
        nsamples = dim(array_data)[3]
        count = apply(array_data,c(1,2),function(x){sum(x>input$threshold)})
        exceeds = (count/nsamples) > input$prob
        image(exceeds, asp=1)
    })
})
