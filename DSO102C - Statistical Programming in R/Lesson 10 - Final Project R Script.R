# loading the libraries
install.packages("Ecdat")
library(Ecdat)
install.packages("dplyr")
library("dplyr")
library("ggplot2")

head(Cigarette)
View(Cigarette)

# Create a boxplot of the average number of packs by state
ggplot(Cigarette, aes(x = state, y= packpc)) + geom_boxplot()

# Which state have the highest average number of packs and which have the lowest?
#lowest is UT
Cigarette %>% group_by(state) %>% summarise(Mean = mean(packpc)) %>% arrange(Mean)

#highest is KY
Cigarette %>% group_by(state) %>% summarise(Mean = mean(packpc)) %>% arrange(desc(Mean))

# Find the median number of packs per capita for all the states for each year
Cigarette %>% group_by(state) %>% summarise(Median = median(packpc))
MedianDF = Cigarette %>% group_by(year) %>% summarise(Median = median(packpc))

# problem
# Plot the median for the years 1985-1995 
ggplot(MedianDF, aes(x=year, y=Median) + geom_point()

# Create a scatter plot of price per pack vs number of packs per capita for all states and years
ggplot(Cigarette, aes(x=avgprs, y=packpc)) + geom_point() + geom_smooth(method=lm)
cor.test(Cigarette$avgprs, Cigarette$packpc, method="pearson", use="complete.obs")
# Yes they are negatively correlated and it is significant

# Change the scatter plot to show the points for each year in a different color
ggplot(Cigarette, aes(x=avgprs, y=packpc, color=year)) + geom_point() + geom_smooth(method=lm)

# Do a linear regression
regression = lm(packpc~avgprs, Cigarette)
summary(regression)
# Significant p-value & variability  is 34%

# Adjust for inflation
Inflation = Cigarette %>% mutate(AdjustedPrice = avgprs / cpi)
ggplot(Inflation, aes(x=AdjustedPrice, y=avgprs)) + geom_point()

# create a data frame with just the rows from 1985
Year1985 = Cigarette %>% filter(year == 1985)

# create a data frame with just the rows from 1995
Year1995 = Cigarette %>% filter(year == 1995)


# Used paired  t-test to see if the amount of packs per capita has changed over time
t.test(Year1985$packpc, Year1995$packpc, paired=TRUE)
# p-value is less than 0.05 so it is significant

#Last attempt to fix problem
ggplot(Cigarette, aes(x = state, y = packpc)) + geom_boxplot()
medianCig = Cigarette %>% select(year, packpc) %>% group_by(year) %>% summarise(medianPacks = median(packpc))
ggplot(medianCigs, aes(x=year, y=medianPacks)) + geom_point()