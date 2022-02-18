View(mtcars)
library(ggplot2)
library("dplyr")


ggplot(mtcars, aes(x = cyl, y = mpg)) + geom_boxplot(aes(group=cyl))

ComputeCyl = mtcars %>% group_by(cyl) %>% summarize(Count = n())
