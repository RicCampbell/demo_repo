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
  
  

  

  
  
  