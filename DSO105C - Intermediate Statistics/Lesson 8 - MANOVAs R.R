# specifying the path
path <- "/Users/music/Desktop/heartAttacks.csv"
# reading contents of csv file
hA <- read.csv(path)
# contents of the csv file
print (hA)

#Load Libraries
library("mvnormtest")
library("car")

# It is well-known that men are more likely to have heart attacks than women. How does gender (sex) influence some of the heart attack predictors like resting blood pressure (trestbps) and cholesterol (chol)?

# Ensure Variables are Numeric
str(hA$trestbps)
str(hA$chol)

hA$trestbps <- as.numeric(hA$trestbps)
hA$chol <- as.numeric(hA$chol)

# Subsetting
keeps = c("trestbps", 'chol')
hA1 = hA[keeps]

hA2 <- hA1[1:5000,]

hA3 <- as.matrix(hA2)

# Sample Size
# Yes has at least 20 cases per independent variable

# Multivariate Normality
hA4 <- na.omit(hA3)
mshapiro.test(t(hA4))

# You have violated the assumption of multivariate normality if the p value is significant at p < .05, so unfortunately, these data do not meet the assumption for MANOVAs. However, for learning purposes, you will continue.
# Violation at 3.93e-09

# Homogeneity of Variance
leveneTest(trestbps ~ sex, data=hA)
leveneTest(chol ~ sex, data=hA)
# Error -   Levene's test is not appropriate with quantitative explanatory variables.

# Absence of Multicollinearity
cor.test(hA$chol, hA$trestbps, method="pearson", use="complete.obs")
# Met this assumption 0.1231742

# Run a MANOVA
MANOVA <- manova(cbind(chol, trestbps) ~ sex, data = hA)
summary(MANOVA)
# Not significant - 0.002112

summary.aov(MANOVA, test = "wilks") 
# Significant = 0.3247

# Gender does influence some of the heart attack predictors like resting blood pressure and cholesterol but the chol and trestbps are closely related. 
# Multicollinearity is when there is a significant relationship between the dependent variables in your model. It is to be avoided, since having a lot of overlap between your DVs can again increase your chances of Type I error
