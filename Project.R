library(readr)
lego_sets <- read_csv("C:/Users/brand/DSC 140 TR/lego_sets.csv")
View(lego_sets)
library(ggplot2)
library(caret)

#Creates the Density plot that represents the distribution of list price
dens_plot <- ggplot(lego_sets, aes(x=list_price)) + 
  geom_density()+xlim(0,300)
#Adds a red vertical line to the plot that represents the average value of the cleaned list price data
dens_plot+ geom_vline(aes(xintercept=mean(list_price)),
                      color="red", linetype="dashed", size=1)


#Pearson R
#Gets rid of any NA values
lego_sets<- na.omit(lego_sets)
#Finds the correlation score between list price and number of reviews
cor(lego_sets$list_price,lego_sets$num_reviews)

#Spearman
#Finds the correlation score between list price and number of reviews
cor(lego_sets$list_price,lego_sets$num_reviews, method = "spearman") 