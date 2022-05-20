library(stringr)
library(dplyr)

gender_pay_df <- read.csv("/Users/bellagatz/Downloads/UW/22spring/info201/project/glassdoor.csv")

gender_group_df <- gender_pay_df %>% 
  group_by(Gender) %>%
  summarize(
            #percent_of_df = str_detect(Gender, "Female"),
            avg_pay = round(mean(BasePay + Bonus), 0),
            #manager_percent = round(mean(str_detect(JobTitle, "Manager")),4)*100,
            highest_pay_job = (max(BasePay)),
            lowest_pay_job = min(BasePay),
            hs_percent = round(mean(str_detect(Education, "High School")),4)*100,
            college_percent = round(mean(str_detect(Education, "College")),4)*100,
            graduate_percent = round(mean(str_detect(Education, "Masters"))
            + mean(str_detect(Education, "PhD")),4)*100,
            #avg_senority = round(mean(Seniority),2),
            #avg_age = round(mean(Age),0),
            #avg_preference = round(mean(PerfEval),2),
            ) 


  


