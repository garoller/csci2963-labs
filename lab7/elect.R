# col_names <- names(elect)
# 
# names(elect) <- c("State", "TotalVote", "BushPct", "KerryPct")
# summary(elect)
# 
# install.packages("arules")
# library(arules)
# rules <-apriori(elect, control = list(verbose=T),
#                 parameter = list(supp=0.001, conf=0.005))
# rules.sorted <- sort(rules, by="lift")
# inspect(rules.sorted)

str(elect)
attributes(elect)
elect[10:13,] #rows 10-13
head(elect,5)
tail(elect,5)
elect[1:50, "State"]
install.packages("Hmisc")
library(Hmisc)
describe(elect[, c(1:4)])

range(elect$TotalVote)
range(elect$BushPct)
range(elect$KerryPct)

quantile(elect$BushPct)
quantile(elect$KerryPct)

var(elect$BushPct)

bushwon <- elect[elect$BushPct>elect$KerryPct, "State"]
print(bushwon)
