
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)
gradeCalc <- function (q1,q2,q3,q4,pt,pg)(q1+q2+q3+q4)*.15+(pg/pt)*40
  
## ((q1+q2+q3+q4)*.15+pg/pt*40)



shinyServer(function(input, output) {
   output$grade <- renderPrint(gradeCalc(input$quiz1,input$quiz2,input$quiz3,input$quiz4,input$pointsproject,input$gradeproject))
})
