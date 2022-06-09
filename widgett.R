library(shiny)
library(dplyr)
library(fmsb)

GenderPay <- read.csv("https://raw.githubusercontent.com/info201b-2022-spring/final-projects-gwenfuri2/main/GenderPGap.csv")
genderPay <- select(GenderPay, c(Gender, Age, PerfEval, Seniority, BasePay, Bonus))
table <- genderPay %>%
  group_by(Gender) %>%
  summarize(
    Basepay = mean(BasePay),
    Bonus = mean(Bonus),
    Age = mean(Age),
    PerfEval = mean(PerfEval),
    Seniority = mean(Seniority),
  ) 


ui <- fluidPage(
  selectInput(
    inputId = "gender",
    label = "Male or Female Data?",
    choices = list("Female" = "Female", 
                   "Male" = "Male"),
  ),
  mainPanel(
    plotOutput(outputId = 'radar')
  )
) 


server <- function(input, output) {
  
  make_radar <- function(genderChoice) {
    rd_df <- select(genderPay, -c(Gender))
    
    min_df <- summarise_all(rd_df, min)
    max_df <- summarise_all(rd_df, max)
    
    data_pt <- filter(genderPay, Gender == input$gender)
    data_pt <- summarise_all(data_pt, mean)
    data_pt <- select(data_pt, -c(Gender))
    
    return(do.call("rbind", list(max_df, min_df, data_pt)))
  }
  
  output$radar <- renderPlot({
    radarchart(make_radar(input$gender))
  })
}

shinyApp(ui = ui, server = server)

