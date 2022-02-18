View(nhtemp)
first25 = nhtemp[1:25]
last25 = nhtemp[36:60]

#Dependent t-Test

nhtempFirst = t.test(first25, last25, paired=TRUE)
nhtempFirst

mean(first25)
mean(last25)