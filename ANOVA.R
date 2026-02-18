#Author: Usman-Aguda, Date: 02/18/2026, Purpose: ANOVA test

#Load library dplyr
library(dplyr)
library(ggplot2) 

#Reading the poisons.csv file from Github Repository
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"

#Read the dataset using read.csv function
df <- read.csv(PATH) 

#Plot the data in a box plot
ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()
