library(ISLR2)

#Setting up the data
url <- "https://www.statlearning.com/s/Advertising.csv" 
Advertising <- read.csv(url)

Advertising
head(Advertising)
summary(Advertising)

#Visualizations 

#Scatter plot/Linear Regression (Sales vs. TV)
plot(Advertising$TV, Advertising$sales,
main = "Sales vs. TV",
xlab = "TV", ylab = "Sales")
abline(lm(sales ~ TV, data = Advertising), col = "red")

#Scatter plot/Linear Regression (Sales Vs. Radio)
plot(Advertising$radio, Advertising$sales,
     main = "Sales vs. Radio",
     xlab = "Radio", ylab = "Sales")
abline(lm(sales ~ radio, data = Advertising), col = "steelblue")

library(ggplot2)


#Multiple Regression 
model1 <- lm(sales ~ TV + radio + newspaper, data = Advertising)

summary(model1)

#Residual Plot 
ggplot(data.frame( fitted = fitted(model1), residuals = resid(model1) ), aes(fitted, residuals))
+ geom_point() + geom_hline(yintercept = 0, color = "red") 
+ geom_smooth(se = FALSE, color = "blue") + theme_minimal()
+ labs(x = "Fitted Values", y = "Residuals", title = "Residuals vs Fitted Values")


