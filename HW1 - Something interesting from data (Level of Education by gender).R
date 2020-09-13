Assignment: HW1
Name: Isabela Vieira
Group: Akimawe Kadiri, Christopher Tinevra, Mostafa Ragheb
Date: 09/13/2020

load("acs2017_ny_data.RData")
summary(acs2017_ny)
print(NN_obs <- length(AGE))
# [1] 196585 (Number of people in the dataset)
summary(AGE[female == 1])
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.00   23.00   44.00   42.72   61.00   95.00 
summary(AGE[!female])
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.00   21.00   40.00   40.35   59.00   95.00
# here i want to find average ages of men and women
mean(AGE[female == 1]) #Average Female Age: 42.71629
sd(AGE[female == 1]) #STDEV for Female Population: 23.72012
mean(AGE[!female]) #Average Male Age: 40.35398
sd(AGE[!female]) #STDEV for Male Population: 23.1098

#I want to see how many females have a doctoral degree:

#To get another set of data with only females that have doctoral degrees: 
  
library(dplyr)
female.data <- acs2017_ny %>%
  filter(EDUCD == "Doctoral degree") %>%
  filter(female == "1") 

male.data <- acs2017_ny %>%
  filter(EDUCD == "Doctoral degree") %>%
  filter(female == "0") 

#To count if female & doctoral/bachelor degree: 

nrow(subset(acs2017_ny,EDUCD == "Doctoral degree" & female == "1"))
#output: 968

nrow(subset(acs2017_ny,EDUCD == "Bachelor's degree" & female == "1"))
#output: 16170

#To count if male & doctoral/bachelor degree: 

nrow(subset(acs2017_ny,EDUCD == "Doctoral degree" & female == "0"))
#output: 1356                 

nrow(subset(acs2017_ny,EDUCD == "Bachelor's degree" & female == "0"))
#output: 14632

#From this we can see that the number of women with bachelor degrees is higher than males.However, women in NYS are less likely than man to keep pursuing their higher education, since the number of males with doctor degree is greater than the number of females.

968/16170
#output: 0.05986395 > only 5.9% of women that enter college have continued education to doctoral level

1356/14632
# output: 0.09267359 > While 9.2% of males that started college earned a doctoral degree as well. Not surprising at all, I sort of expected more males to hold doctoral degrees relative to women just because of my previous biases on academia. 
#It would be nice to see if the trend has changed over the years, maybe get a table with the age and education level of males & females? I'm not sure how to do that right now, but can find out soon. 
#I sort of expect barriers in academia for females to have diminished in more recent times. 

#To understand the mean age of females with doctoral degrees: 
mean(female.data$AGE)
#Output: 51.18182
sd(female.data$AGE, na.rm = TRUE)
#Output: 16.3154

mean(male.data$AGE)
#Output: 56.70796
sd(male.data$AGE, na.rm = TRUE)
#Output: 16.39918
                    
#So, indeed the population of males with doctoral degrees in NYS is older on average than the female's. 
#The difference isn't really that great, but we're also in NYS which is a pretty liberal state, I wonder in other parts of the country have a greater disparity because of limited opportunities for females. 


