# This model will predict the height of a Loblolly tree from it's Age
#

shinyUI(fluidPage(
  titlePanel("Predict Height of Loblolly Tree from Its Age"),
  sidebarLayout(
    sidebarPanel(
     tags$p("Directions: Use the checkbox below to display or hide the predictive model line."),
     checkboxInput("DisplayModel", "Display/Hide Model Line", value = TRUE),
     tags$p("Directions: Use the dropdown below to select the number for age of the Loblolly 
            tree.  The predicted height will be shown on both the graph and the exact number 
            will also be displayed below the graph."),
     selectInput("age",label="Select Age", selected=25, choices=c(0,5,10,15,20,25,30,35,45,50))
     
       ),
    
    
    mainPanel(
      plotOutput("plot"),
      h3("Predicted Height of Loblolly Tree"),
      textOutput("pred")
      
    )
  )
))