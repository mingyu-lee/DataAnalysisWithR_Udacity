list.files()
getwd()
reddit <- read.csv("reddit.csv")
reddit
View(reddit)
age.range
reddit$age.range <- ordered(reddit$age.range, levels = c("Under 18", "18-24", "25-34", "35-44", "45-54", "55-64", "65 or Above"))
View(age.range)

levels(reddit$age.range)

library(ggplot2)

qplot(data=reddit, x=age.range)

tShirts <- factor(c('medium', 'small', 'large', 'medium', 'large', 'large'), levels = c('medium','small','large'))
tShirts
qplot(x = tShirts)
tShirts <- ordered(tShirts, levels = c('small', 'medium', 'large'))
tShirts
qplot(x = tShirts)
