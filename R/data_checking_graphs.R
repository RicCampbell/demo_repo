## Script for making some nice graphs of the data

library(ggplot2)
library(data.table)


## Read in data

  project_data <- fread("data/full_data_insomina.csv")
  
  
## Bar chart for age
  
  age_bar_graph <- ggplot(project_data[, .N, by = Age],
                          aes(x = Age, y = N, fill = Age)) + 
                  geom_bar(stat = "identity") + 
                  ggtitle("Number of patients by age")
  
  
## Bar chart for sex
  
  sex_bar_graph <- ggplot(project_data[, .N, by = Gender],
                          aes(x = Gender, y = N, fill = Gender)) +
                    geom_bar(stat = "identity") +
                    ggtitle("Number of patients by gender")
  
  average_paranoia_data <- project_data[, round(mean(Total_Paranoia), digits = 1), by = Age]
  setnames(average_paranoia_data, c("Age", "average_paranoia"))
  
  ## Bar chart for average paranoia
  
  paranoia_bar_chart <- ggplot(average_paranoia_data,
                               aes(x = Age, y = average_paranoia, fill = Age)) +
    geom_bar(stat = "identity") +
    ggtitle("Average Total Paranoia by Age")
  
  
  