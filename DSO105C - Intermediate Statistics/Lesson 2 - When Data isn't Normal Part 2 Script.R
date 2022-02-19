install.packages(rcompanion)
library(rcompanion)

plotNormalHistogram(Seattle_ParksnRec$`# of trips Fall`)
Seattle_ParksnRec$`# of trips FallSQRT` <- sqrt(Seattle_ParksnRec$`# of trips Fall`)
plotNormalHistogram(Seattle_ParksnRec$`# of trips FallSQRT`)
# # of trips Fall SQRT made it normal

plotNormalHistogram(Seattle_ParksnRec$`# of participants Fall`)
Seattle_ParksnRec$`# of participants FallSQRT` <- sqrt(Seattle_ParksnRec$`# of participants Fall`)
plotNormalHistogram(Seattle_ParksnRec$`# of participants FallSQRT`)
# # of participants Fall SQRT made it normal


library("IDPmisc")
Seattle <- NaRV.omit(Seattle_ParksnRec)
plotNormalHistogram(Seattle$`# of trips per year`)
Seattle$`# of trips per yearSQRT` <- sqrt(Seattle$`# of trips per year`)
plotNormalHistogram(Seattle$`# of trips per yearSQRT`)
Seattle$`# of trips per yearSQRTLOG` <- log(Seattle$`# of trips per yearSQRT`)
plotNormalHistogram(Seattle$`# of trips per yearSQRTLOG`)
# # of trips per year SQRT & LOG made it normal

plotNormalHistogram(Seattle$`# participants per year`)
Seattle$`# participants per yearSQRT` <- sqrt(Seattle$`# participants per year`)
plotNormalHistogram(Seattle$`# participants per yearSQRT`)
Seattle$`# of participants per yearSQRTLOG` <- log(Seattle$`# participants per yearSQRT`)
plotNormalHistogram(Seattle$`# of participants per yearSQRTLOG`)
# # of participants per year SQRT & LOG made it normal

plotNormalHistogram(Seattle$`increase/decrease of prior year`)
Seattle$`increase/decrease of prior yearSQRT` <- sqrt(Seattle$`increase/decrease of prior year`)
plotNormalHistogram(Seattle$`increase/decrease of prior yearSQRT`)
# increase/decrease of prior year SQRT with NANs however already ran the finite fix so I don't know what is going on

plotNormalHistogram(Seattle$`Average # people per trip`)
Seattle$`Average # people per tripSQRT` <- sqrt(Seattle$`Average # people per trip`)
plotNormalHistogram(Seattle$`Average # people per tripSQRT`)
Seattle$`Average # people per tripSQRTLOG` <- log(Seattle$`Average # people per tripSQRT`)
plotNormalHistogram(Seattle$`Average # people per tripSQRTLOG`)
# Average # people per trip used SQRT and LOG to make it normal