str(admissions)
col_names <- names(admissions)
admissions[,col_names] <- lapply(admissions[,col_names], factor)
names(admissions) <- c("admit", "gre", "gpa", "rank")

summary(admissions)

install.packages("arules")
library(arules)

print(admissions)
rules.all <- apriori(admissions)
rules.all
inspect(rules.all)
rules <-apriori(admissions, control = list(verbose=F),
                parameter = list(supp=0.001, conf=0.5),
                appearance = (list(rhs=c("gre=800"), default="lhs")))
rules.sorted <- sort(rules, by="lift")
inspect(rules.sorted)
install.packages("arulesViz")
library(arulesViz)
plot(rules.sorted)
plot(rules.sorted, method="grouped")

