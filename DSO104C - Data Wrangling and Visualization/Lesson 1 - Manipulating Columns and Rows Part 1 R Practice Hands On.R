FakeNews$StoryType = "Fake"
FakeNews1 <- FakeNews[, 2:4]
library("tidyr")
FakeNews2 <- separate(FakeNews1, url, c("Website", "Domain"), sep="_")
FakeNews3 <- unite(FakeNews2, FullSiteName, Website, Domain, sep = "_")
FakeNews4 <- FakeNews3[1:10,]
