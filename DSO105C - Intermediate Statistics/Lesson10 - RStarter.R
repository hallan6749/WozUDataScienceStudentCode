# Lesson 10 Starter in R

## Scenario 2 Starter
df2 <- read.csv("antiseptic.csv")

df2.expanded <- df2[rep(row.names(df2), df2$Number.of.applications), 1:2]

## Scenario 3 Starter

df3 <- read.csv("savings.csv")

df3.reformat <- gather(df3, key="Group", value="Price")


