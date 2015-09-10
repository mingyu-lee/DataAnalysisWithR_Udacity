library(ggplot2)
data(diamonds)
summary(diamonds)
dim(diamonds)

# Create a histogram of the price of all the diamonds in the diamond data set
qplot(data=diamonds, x=price, binwidth=500)
dim(subset(diamonds, diamonds$price<500))
dim(subset(diamonds, diamonds$price<250))
dim(subset(diamonds, diamonds$price<15000))


# Explore the larget peak in the price histogram you created earlier.
# Try limiting the x-axis, altering the bin width, and setting differenet breaks on the x-axis
qplot(data=diamonds, x=price, binwidth=50) + scale_x_continuous(limits=c(0,1500))

# Break out the histogram of diamond prices by cut
qplot(data=diamonds, x=price, binwidth=500) + facet_wrap(~cut, scales="free")

# Create a histogram of price per carat and facet it by cut.
# Adjust the binwidth and transform the scale of the x-axis using log10
qplot(data=diamonds, x=price/carat, binwidth=.02) + facet_wrap(~cut,scales = "free") + scale_x_log10()

# Investigate the price of diamonds using box plots, numerical summaries, and one of the following categorical variables: cut, clarity, or color.

a<-qplot(x=clarity, y=price, data=diamonds, geom='boxplot') + coord_cartesian(ylim = c(0,7000))
b<-qplot(x=color, y=price, data=diamonds, geom='boxplot') + coord_cartesian(ylim=c(0,8000))
c<-qplot(x=cut, y=price, data=diamonds, geom='boxplot') + coord_cartesian(ylim=c(0,7000))

# summary of price data of diamonds split by each cut level
by(diamonds$price, diamonds$cut, summary)
