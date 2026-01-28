#Ojochide Usman-Aguda, 01/26/2026, Purpose: Perform Correlation Test

#Load the ggpubr library
library("ggpubr")

#Load dummy dataset
my_data <- mtcars 

#Check the read dataset
head(my_data, 6)

#Create scatter plot of dummy dataset
ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")

#Apply the correlationn function
res <- cor.test(my_data$wt, my_data$mpg, method = "pearson") 

#result
res

#Pearson's product-moment correlation

data:  my_data$wt and my_data$mpg
t = -9.559, df = 30, p-value = 1.294e-10
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 -0.9338264 -0.7440872
sample estimates:
       cor 
-0.8676594 

res2 <-cor.test(my_data$wt, my_data$mpg, method = "spearman")

#result
res2

#	Spearman's rank correlation rho

data:  my_data$wt and my_data$mpg
S = 10292, p-value = 1.488e-11
alternative hypothesis: true rho is not equal to 0
sample estimates:
  rho 

-0.886422 
