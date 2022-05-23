library(tidyverse)
gender_data <- read.csv("https://raw.githubusercontent.com/info201b-2022-spring/final-projects-gwenfuri2/main/GenderPGap.csv")

female_min_bp <- gender_data %>% 
  select(BasePay, Gender) %>% 
  filter(Gender == "Female") %>% 
  filter(BasePay == min(BasePay)) %>% 
  pull(BasePay)
male_min_bp <- gender_data %>% 
  select(BasePay, Gender) %>% 
  filter(Gender == "Male") %>% 
  filter(BasePay == min(BasePay)) %>% 
  pull(BasePay)
female_max_bp <- gender_data %>% 
  select(BasePay, Gender) %>% 
  filter(Gender == "Female") %>% 
  filter(BasePay == max(BasePay)) %>% 
  pull(BasePay)
male_max_bp <- gender_data %>% 
  select(BasePay, Gender) %>% 
  filter(Gender == "Male") %>% 
  filter(BasePay == max(BasePay)) %>% 
  pull(BasePay)
female_min_b <- gender_data %>% 
  select(Bonus, Gender) %>% 
  filter(Gender == "Female") %>% 
  filter(Bonus == min(Bonus)) %>% 
  pull(Bonus)
male_min_b <- gender_data %>% 
  select(Bonus, Gender) %>% 
  filter(Gender == "Male") %>% 
  filter(Bonus == min(Bonus)) %>% 
  pull(Bonus)
female_max_b <-gender_data %>% 
  select(Bonus, Gender) %>% 
  filter(Gender == "Female") %>% 
  filter(Bonus == max(Bonus)) %>% 
  pull(Bonus)
male_max_b <- gender_data %>% 
  select(Bonus, Gender) %>% 
  filter(Gender == "Male") %>% 
  filter(Bonus == max(Bonus)) %>% 
  pull(Bonus)
female_educ <- gender_data %>% 
  select(Education, Gender) %>% 
  filter(Gender == "Female") %>% 
  filter(Education == "PhD") %>% 
  select(Education, Gender)
male_educ <- gender_data %>% 
  select(Education, Gender) %>% 
  filter(Gender == "Male") %>% 
  filter(Education == "PhD") %>% 
  select(Education, Gender)
female_educ_m <- gender_data %>% 
  select(Education, Gender) %>% 
  filter(Gender == "Female") %>% 
  filter(Education == "High School") %>% 
  select(Education, Gender)
male_educ_m <- gender_data %>% 
  select(Education, Gender) %>% 
  filter(Gender == "Male") %>% 
  filter(Education == "High School") %>% 
  select(Education, Gender)



