library("ggplot2")
###############################
quadPlot1 <- ggplot(nonlinear, aes(x = X1, y= Y1)) + geom_point() + stat_smooth(method = "lm", formula = y ~x + I(x^2), size =1)
quadPlot1

Agesq1 <- nonlinear$X1^2

quadModel1 <- lm(nonlinear$X1~nonlinear$X1+Agesq1)
summary(quadModel1)

exMod1 <- lm(log(nonlinear$X1)~nonlinear$Y1)
summary(exMod1)

### significate for both exponential and quadratic relationships, more towards quadratic relationship
###################################
quadPlot2 <- ggplot(nonlinear, aes(x = X2, y= Y2)) + geom_point() + stat_smooth(method = "lm", formula = y ~x + I(x^2), size =1)
quadPlot2

Agesq2 <- nonlinear$X2^2

quadModel2 <- lm(nonlinear$X2~nonlinear$X2+Agesq2)
summary(quadModel2)

exMod2 <- lm(log(nonlinear$X2)~nonlinear$Y2)
summary(exMod2)

### significate for both exponential and quadratic relationships, more towards quadratic relationship