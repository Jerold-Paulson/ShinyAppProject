
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Grading App"),
  sidebarPanel(
  
  # Sidebar with a slider input for number of bins
  numericInput('quiz1','grade on Quiz 1',0),
  numericInput('quiz2','grade on Quiz 2',0),
  numericInput('quiz3','grade on Quiz 3',0),
  numericInput('quiz4','grade on Quiz 4',0),
  numericInput('pointsproject','points on project',15),
  numericInput('gradeproject','grade on project',0),
  submitButton("Calculate Grades")
               ),
  
  mainPanel(
    h1("Instructions for use:"),
    h4("in the side panel, enter the student's grades for each of the four quizzes"),
    h4("also in the side panel, enter the total possible points on the project"),
    h4("followed by the points attained by the student on the project"),
    h4("when all this is entered, press the 'Calculate Grades' button to find the grade"),
    
    h1('Here is the calculated grade:'),
    verbatimTextOutput("grade")
  )
)
)
