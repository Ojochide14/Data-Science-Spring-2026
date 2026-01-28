Author: Usman-Aguda, Date: 01/28/2026

Load the library ggpubr
library(ggpubr)

Read the provided dataset from file 02-10-2020_1930.csv
df <- read.csv("C:/Users/usiel/Downloads/02-10-2020_1930.csv", stringsAsFactors = FALSE)

df$Confirmed <- as.numeric(df$Confirmed)
df$Deaths    <- as.numeric(df$Deaths)

Make sure Confirmed and Deaths are numeric (in case they were read as text)
df$Confirmed <- as.numeric(df$Confirmed)
df$Deaths    <- as.numeric(df$Deaths)

Create a scatter plot on columns “Confirmed” and “Deaths”.
p <- ggscatter(
  df,
  x = "Confirmed",
  y = "Deaths",
  add = "reg.line",
  title = "Confirmed vs Deaths",
  xlab = "Confirmed",
  ylab = "Deaths"
)

corr_value <- cor(df$Confirmed, df$Deaths, use = "complete.obs", method = "pearson")

cat("Correlation (Pearson) between Confirmed and Deaths:", corr_value, "\n")
Correlation (Pearson) between Confirmed and Deaths: 0.9975423 