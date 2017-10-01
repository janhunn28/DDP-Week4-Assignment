# Take 2
# This model will predict the height of a Loblolly tree from it's age. 
# 
#

library(shiny)
shinyServer(function(input, output) {
  model <- lm(height ~ age, data = Loblolly)
  
  modelTree <- reactive({
    ageInput <- as.numeric(input$age)
    predict(model, newdata = data.frame(age = ageInput))
  })
  
  
  output$plot <- renderPlot({
    ageInput <- input$age
    
    plot(Loblolly$age, Loblolly$height, xlab = "Age of Loblolly Tree",    
         ylab = "Height", bty = "n", pch = 16,
         xlim = c(0, 70), ylim = c(0, 200))
    if(input$DisplayModel){
      abline(model, col = "green", lwd = 2)
    }
    
    legend(25, 250, c("Model Prediction"), pch = 16, 
           col = c("green"), bty = "n", cex = 1.2)
    points(ageInput, modelTree(), col = "red", pch = 16, cex = 2)
  })
  
  output$pred <- renderText({
    modelTree()
  })
  
  
})