## Script for reading in data and saving it as a csv

library(haven)
library(data.table)

raw_data <- data.table(read_sav("raw_data/FulldatasetInsomnianegativeaffectandparanoia.sav"))


write.csv(raw_data, "data/full_data_insomina.csv")
