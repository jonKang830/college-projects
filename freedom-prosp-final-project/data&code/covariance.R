
library("readxl")

freedom <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = " Freedom Index time")
economic <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Economic Freedom time")
property <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Property Rights time")
trade <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Trade Freedom time")
investment <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Investment Freedom time")
women <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Women's Economic freedom time")
political <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Political Freedom time")
constraint <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Constraints on Government time")
rights <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Political Rights time")
civil <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Civil Liberties time")
legal <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Legal Freedom time")
judicial <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Judicial Effectiveness time")
judiciary <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Efficient Judiciary time")
justice <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Civil Justice time")
criminal <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Criminal Justice time")
integrity <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = " Government Integrity time")
corruption <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Perceptions of Corruption time")
absenceCorruption <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Absence of Corruption time")
disclosure <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Public Disclosure time")
capacity <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "State Capacity time")
security <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Order and Security time")
regulatory <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Regulatory Effectivness time")
prosperity <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = " Prosperity Index time")
income <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Income time")
environment <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Environment time")
minority <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Minority Rights time")
minority[minority == "no data"] <- NA
health <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Health time")
happiness <- read_excel("Freedom-and-Prosperity-Indexes-Full-Data-Set.xlsx", sheet = "Happiness time")

data <- data.frame("Freedom Score 2021"=freedom[1:174, "Freedom Score 2021"])
# data["Freedom Score 2021"] <- freedom[1:174, "Freedom Score 2021"]
data["Economic Freedom score 2021"] <- economic[1:174, "Economic Freedom score 2021"]
data["Property Rights score 2021"] <- property[1:174, "Property Rights score 2021"]
data["Trade Freedom score 2021"] <- trade[1:174, "Trade Freedom score 2021"]
data["Investment Freedom score 2021"] <- investment[1:174, "Investment Freedom score 2021"]
data["Women's Economic Freedom score 2021"] <- women[1:174, "Women's Economic Freedom score 2021"]
data["Political Freedom score 2021"] <- political[1:174, "Political Freedom score 2021"]
data["Constrainsts on Government score 2021"] <- constraint[1:174, "Constrainsts on Government score 2021"]
data["Political Rights score 2021"] <- rights[1:174, "Political Rights score 2021"]
data["Civil liberties score 2021"] <- civil[1:174, "Civil liberties score 2021"]
data["Legal Freedom score 2021"] <- legal[1:174, "Legal Freedom score 2021"]
data["Judicial Effectiveness score 2021"] <- judicial[1:174, "Judicial Effectiveness score 2021"]
data["Efficient Judiciary score 2021"] <- judiciary[1:174, "Efficient Judiciary score 2021"]
data["Civil Justice score 2021"] <- justice[1:174, "Civil Justice score 2021"]
data["Criminal Justice score 2021"] <- criminal[1:174, "Criminal Justice score 2021"]
data["Government Integrity score 2021"] <- integrity[1:174, "Government Integrity score 2021"]
data["Perceptions of Corruption score 2021"] <- corruption[1:174, "Perceptions of Corruption score 2021"]
data["Absence of Corruption  score 2021"] <- absenceCorruption[1:174, "Absence of Corruption  score 2021"]
data["Public Disclosure score 2021"] <- disclosure[1:174, "Public Disclosure score 2021"]
data["State Capacity score 2021"] <- capacity[1:174, "State Capacity score 2021"]
data["Order and Security score 2021"] <- security[1:174, "Order and Security score 2021"]
data["Regulatory Effectivness score 2021"] <- regulatory[1:174, "Regulatory Effectivness score 2021"]
data["Prosperity Index 2021"] <- prosperity[1:174, "Prosperity Index 2021"]
data["GNI per capita 2021 score"] <- income[1:174, "GNI per capita 2021 score"]
data["Environment score 2021"] <- environment[1:174, "Environment score 2021"]
data["Minority Rights 2021 score"] <- minority[1:174, "Minority Rights 2021 score"]
data["Health 2021 score"] <- health[1:174, "Health 2021 score"]
data["Happiness score 2021"] <- happiness[1:174, "Happiness score 2021"]

sapply(data, is.numeric)
matrix = cov(data, use="complete.obs")
write.csv(matrix, "2021Covariances.csv")

matrix_ = cor(data, use="complete.obs")
write.csv(matrix_, "2021Correlation.csv")



#change in 5 years
data5 <- data.frame("Freedom Score change in 5 years"=freedom[1:174, "Freedom Score 2021"]-freedom[1:174, "Freedom Score 2016"])
data5["Economic Freedom score change in 5 years"] <- economic[1:174, "Economic Freedom score 2021"] - economic[1:174, "Economic Freedom score 2016"]
data5["Property Rights score change in 5 years"] <- property[1:174, "Property Rights score 2021"] - property[1:174, "Property Rights score 2016"]
data5["Trade Freedom score change in 5 years"] <- trade[1:174, "Trade Freedom score 2021"] - trade[1:174, "Trade Freedom score 2016"]
data5["Investment Freedom score change in 5 years"] <- investment[1:174, "Investment Freedom score 2021"] - investment[1:174, "Investment Freedom score 2016"]
data5["Women's Economic Freedom score change in 5 years"] <- women[1:174, "Women's Economic Freedom score 2021"] - women[1:174, "Women's Economic Freedom score 2016"]
data5["Political Freedom score change in 5 years"] <- political[1:174, "Political Freedom score 2021"] - political[1:174, "Political Freedom score 2016"]
data5["Constrainsts on Government score change in 5 years"] <- constraint[1:174, "Constrainsts on Government score 2021"] - constraint[1:174, "Constrainsts on Government score 2016"]
data5["Political Rights score change in 5 years"] <- rights[1:174, "Political Rights score 2021"] - rights[1:174, "Political Rights score 2016"]
data5["Civil liberties score change in 5 years"] <- civil[1:174, "Civil liberties score 2021"] - civil[1:174, "Civil liberties score 2016"]
data5["Legal Freedom score change in 5 years"] <- legal[1:174, "Legal Freedom score 2021"] - legal[1:174, "Legal Freedom score 2016"]
data5["Judicial Effectiveness score change in 5 years"] <- judicial[1:174, "Judicial Effectiveness score 2021"] - judicial[1:174, "Judicial Effectiveness score 2016"]
data5["Efficient Judiciary score change in 5 years"] <- judiciary[1:174, "Efficient Judiciary score 2021"] - judiciary[1:174, "Efficient Judiciary score 2016"]
data5["Civil Justice score change in 5 years"] <- justice[1:174, "Civil Justice score 2021"] - justice[1:174, "Civil Justice score 2016"]
data5["Criminal Justice score change in 5 years"] <- criminal[1:174, "Criminal Justice score 2021"] - criminal[1:174, "Criminal Justice score 2016"]
data5["Government Integrity score change in 5 years"] <- integrity[1:174, "Government Integrity score 2021"] - integrity[1:174, "Government Integrity score 2016"]
data5["Perceptions of Corruption score change in 5 years"] <- corruption[1:174, "Perceptions of Corruption score 2021"] - corruption[1:174, "Perceptions of Corruption score 2016"]
data5["Absence of Corruption  score change in 5 years"] <- absenceCorruption[1:174, "Absence of Corruption  score 2021"] - absenceCorruption[1:174, "Absence of Corruption score 2016"]
data5["Public Disclosure score change in 5 years"] <- disclosure[1:174, "Public Disclosure score 2021"] - disclosure[1:174, "Public Disclosure score 2016"]
data5["State Capacity score change in 5 years"] <- capacity[1:174, "State Capacity score 2021"] - capacity[1:174, "State Capacity score 2016"]
data5["Order and Security score change in 5 years"] <- security[1:174, "Order and Security score 2021"] - security[1:174, "Order and Security score 2016"]
data5["Regulatory Effectivness score change in 5 years"] <- regulatory[1:174, "Regulatory Effectivness score 2021"] - regulatory[1:174, "Regulatory Effectivness score 2016"]
data5["Prosperity Index change in 5 years"] <- prosperity[1:174, "Prosperity Index 2021"] - prosperity[1:174, "Prosperity Index 2016"]
data5["GNI per capita score change in 5 years"] <- income[1:174, "GNI per capita 2021 score"] - income[1:174, "GNI per capita 2016 score"]
data5["Environment score change in 5 years"] <- environment[1:174, "Environment score 2021"] - environment[1:174, "Environment score 2016"]
data5["Minority Rights score change in 5 years"] <- minority[1:174, "Minority Rights 2021 score"] - minority[1:174, "Minority Rights 2016 score"]
data5["Health score change in 5 years"] <- health[1:174, "Health 2021 score"] - health[1:174, "Health 2016 score"]
data5["Happiness score change in 5 years"] <- happiness[1:174, "Happiness score 2021"] - happiness[1:174, "Happiness score 2016"]

sapply(data5, is.numeric)
matrix = cov(data5, use="complete.obs")
write.csv(matrix2, "5YearsChangeCovariances.csv")

matrix_2 = cor(data5, use="complete.obs")
write.csv(matrix_2, "5YearsChangeCorrelation.csv")




#change in 10 years
data10 <- data.frame("Freedom Score change in 10 years"=freedom[1:174, "Freedom Score 2021"]-freedom[1:174, "Freedom Score 2011"])
data10["Economic Freedom score change in 10 years"] <- economic[1:174, "Economic Freedom score 2021"] - economic[1:174, "Economic Freedom score 2011"]
data10["Property Rights score change in 10 years"] <- property[1:174, "Property Rights score 2021"] - property[1:174, "Property Rights score 2011"]
data10["Trade Freedom score change in 10 years"] <- trade[1:174, "Trade Freedom score 2021"] - trade[1:174, "Trade Freedom score 2011"]
data10["Investment Freedom score change in 10 years"] <- investment[1:174, "Investment Freedom score 2021"] - investment[1:174, "Investment Freedom score 2011"]
data10["Women's Economic Freedom score change in 10 years"] <- women[1:174, "Women's Economic Freedom score 2021"] - women[1:174, "Women's Economic Freedom score 2011"]
data10["Political Freedom score change in 10 years"] <- political[1:174, "Political Freedom score 2021"] - political[1:174, "Political Freedom score 2011"]
data10["Constrainsts on Government score change in 10 years"] <- constraint[1:174, "Constrainsts on Government score 2021"] - constraint[1:174, "Constrainsts on Government score 2011"]
data10["Political Rights score change in 10 years"] <- rights[1:174, "Political Rights score 2021"] - rights[1:174, "Political Rights score 2011"]
data10["Civil liberties score change in 10 years"] <- civil[1:174, "Civil liberties score 2021"] - civil[1:174, "Civil liberties score 2011"]
data10["Legal Freedom score change in 10 years"] <- legal[1:174, "Legal Freedom score 2021"] - legal[1:174, "Legal Freedom score 2011"]
data10["Judicial Effectiveness score change in 10 years"] <- judicial[1:174, "Judicial Effectiveness score 2021"] - judicial[1:174, "Judicial Effectiveness score 2011"]
data10["Efficient Judiciary score change in 10 years"] <- judiciary[1:174, "Efficient Judiciary score 2021"] - judiciary[1:174, "Efficient Judiciary score 2011"]
data10["Civil Justice score change in 10 years"] <- justice[1:174, "Civil Justice score 2021"] - justice[1:174, "Civil Justice score 2011"]
data10["Criminal Justice score change in 10 years"] <- criminal[1:174, "Criminal Justice score 2021"] - criminal[1:174, "Criminal Justice score 2011"]
data10["Government Integrity score change in 10 years"] <- integrity[1:174, "Government Integrity score 2021"] - integrity[1:174, "Government Integrity score 2011"]
data10["Perceptions of Corruption score change in 10 years"] <- corruption[1:174, "Perceptions of Corruption score 2021"] - corruption[1:174, "Perceptions of Corruption score 2011"]
data10["Absence of Corruption  score change in 10 years"] <- absenceCorruption[1:174, "Absence of Corruption  score 2021"] - absenceCorruption[1:174, "Absence of Corruption score 2011"]
data10["Public Disclosure score change in 10 years"] <- disclosure[1:174, "Public Disclosure score 2021"] - disclosure[1:174, "Public Disclosure score 2011"]
data10["State Capacity score change in 10 years"] <- capacity[1:174, "State Capacity score 2021"] - capacity[1:174, "State Capacity score 2011"]
data10["Order and Security score change in 10 years"] <- security[1:174, "Order and Security score 2021"] - security[1:174, "Order and Security score 2011"]
data10["Regulatory Effectivness score change in 10 years"] <- regulatory[1:174, "Regulatory Effectivness score 2021"] - regulatory[1:174, "Regulatory Effectivness score 2011"]
data10["Prosperity Index change in 10 years"] <- prosperity[1:174, "Prosperity Index 2021"] - prosperity[1:174, "Prosperity Index 2011"]
data10["GNI per capita score change in 10 years"] <- income[1:174, "GNI per capita 2021 score"] - income[1:174, "GNI per capita 2011 score"]
data10["Environment score change in 10 years"] <- environment[1:174, "Environment score 2021"] - environment[1:174, "Environment score 2011"]
data10["Minority Rights score change in 10 years"] <- minority[1:174, "Minority Rights 2021 score"] - minority[1:174, "Minority Rights 2011 score"]
data10["Health score change in 10 years"] <- health[1:174, "Health 2021 score"] - health[1:174, "Health 2011 score"]
data10["Happiness score change in 10 years"] <- happiness[1:174, "Happiness score 2021"] - happiness[1:174, "Happiness score 2011"]

sapply(data10, is.numeric)
matrix3 = cov(data10, use="complete.obs")
write.csv(matrix3, "10YearsChangeCovariances.csv")

matrix_3 = cor(data10, use="complete.obs")
write.csv(matrix_3, "10YearsChangeCorrelation.csv")




#change in 15 years
data15 <- data.frame("Freedom Score change in 15 years"=freedom[1:174, "Freedom Score 2021"]-freedom[1:174, "Freedom Score 2006"])
data15["Economic Freedom score change in 15 years"] <- economic[1:174, "Economic Freedom score 2021"] - economic[1:174, "Economic Freedom score 2006"]
data15["Property Rights score change in 15 years"] <- property[1:174, "Property Rights score 2021"] - property[1:174, "Property Rights score 2006"]
data15["Trade Freedom score change in 15 years"] <- trade[1:174, "Trade Freedom score 2021"] - trade[1:174, "Trade Freedom score 2006"]
data15["Investment Freedom score change in 15 years"] <- investment[1:174, "Investment Freedom score 2021"] - investment[1:174, "Investment Freedom score 2006"]
data15["Women's Economic Freedom score change in 15 years"] <- women[1:174, "Women's Economic Freedom score 2021"] - women[1:174, "Women's Economic Freedom score 2006"]
data15["Political Freedom score change in 15 years"] <- political[1:174, "Political Freedom score 2021"] - political[1:174, "Political Freedom score 2006"]
data15["Constrainsts on Government score change in 15 years"] <- constraint[1:174, "Constrainsts on Government score 2021"] - constraint[1:174, "Constrainsts on Government score 2006"]
data15["Political Rights score change in 15 years"] <- rights[1:174, "Political Rights score 2021"] - rights[1:174, "Political Rights score 2006"]
data15["Civil liberties score change in 15 years"] <- civil[1:174, "Civil liberties score 2021"] - civil[1:174, "Civil liberties score 2006"]
data15["Legal Freedom score change in 15 years"] <- legal[1:174, "Legal Freedom score 2021"] - legal[1:174, "Legal Freedom score 2006"]
data15["Judicial Effectiveness score change in 15 years"] <- judicial[1:174, "Judicial Effectiveness score 2021"] - judicial[1:174, "Judicial Effectiveness score 2006"]
data15["Efficient Judiciary score change in 15 years"] <- judiciary[1:174, "Efficient Judiciary score 2021"] - judiciary[1:174, "Efficient Judiciary score 2006"]
data15["Civil Justice score change in 15 years"] <- justice[1:174, "Civil Justice score 2021"] - justice[1:174, "Civil Justice score 2006"]
data15["Criminal Justice score change in 15 years"] <- criminal[1:174, "Criminal Justice score 2021"] - criminal[1:174, "Criminal Justice score 2006"]
data15["Government Integrity score change in 15 years"] <- integrity[1:174, "Government Integrity score 2021"] - integrity[1:174, "Government Integrity score 2006"]
data15["Perceptions of Corruption score change in 15 years"] <- corruption[1:174, "Perceptions of Corruption score 2021"] - corruption[1:174, "Perceptions of Corruption score 2006"]
data15["Absence of Corruption  score change in 15 years"] <- absenceCorruption[1:174, "Absence of Corruption  score 2021"] - absenceCorruption[1:174, "Absence of Corruption score 2006"]
data15["Public Disclosure score change in 15 years"] <- disclosure[1:174, "Public Disclosure score 2021"] - disclosure[1:174, "Public Disclosure score 2006"]
data15["State Capacity score change in 15 years"] <- capacity[1:174, "State Capacity score 2021"] - capacity[1:174, "State Capacity score 2006"]
data15["Order and Security score change in 15 years"] <- security[1:174, "Order and Security score 2021"] - security[1:174, "Order and Security score 2006"]
data15["Regulatory Effectivness score change in 15 years"] <- regulatory[1:174, "Regulatory Effectivness score 2021"] - regulatory[1:174, "Regulatory Effectivness score 2006"]
data15["Prosperity Index change in 15 years"] <- prosperity[1:174, "Prosperity Index 2021"] - prosperity[1:174, "Prosperity Index 2006"]
data15["GNI per capita score change in 15 years"] <- income[1:174, "GNI per capita 2021 score"] - income[1:174, "GNI per capita 2006 score"]
data15["Environment score change in 15 years"] <- environment[1:174, "Environment score 2021"] - environment[1:174, "Environment score 2006"]
data15["Minority Rights score change in 15 years"] <- minority[1:174, "Minority Rights 2021 score"] - minority[1:174, "Minority Rights 2006 score"]
data15["Health score change in 15 years"] <- health[1:174, "Health 2021 score"] - health[1:174, "Health 2006 score"]
data15["Happiness score change in 15 years"] <- happiness[1:174, "Happiness score 2021"] - happiness[1:174, "Happiness score 2006"]

sapply(data15, is.numeric)
matrix4 = cov(data15, use="complete.obs")
write.csv(matrix4, "15YearsChangeCovariances.csv")

matrix_4 = cor(data15, use="complete.obs")
write.csv(matrix_4, "15YearsChangeCorrelation.csv")



#change in 15 years
dataGraph <- data.frame("Freedom"=freedom[1:174, "Freedom Score 2021"]-freedom[1:174, "Freedom Score 2006"])
dataGraph["Economic Freedom"] <- economic[1:174, "Economic Freedom score 2021"] - economic[1:174, "Economic Freedom score 2006"]
dataGraph["Property Rights"] <- property[1:174, "Property Rights score 2021"] - property[1:174, "Property Rights score 2006"]
dataGraph["Trade Freedom"] <- trade[1:174, "Trade Freedom score 2021"] - trade[1:174, "Trade Freedom score 2006"]
dataGraph["Investment Freedom"] <- investment[1:174, "Investment Freedom score 2021"] - investment[1:174, "Investment Freedom score 2006"]
dataGraph["Women's Economic Freedom"] <- women[1:174, "Women's Economic Freedom score 2021"] - women[1:174, "Women's Economic Freedom score 2006"]
dataGraph["Political Freedom"] <- political[1:174, "Political Freedom score 2021"] - political[1:174, "Political Freedom score 2006"]
dataGraph["Constrainsts on Government"] <- constraint[1:174, "Constrainsts on Government score 2021"] - constraint[1:174, "Constrainsts on Government score 2006"]
dataGraph["Political Rights"] <- rights[1:174, "Political Rights score 2021"] - rights[1:174, "Political Rights score 2006"]
dataGraph["Civil liberties"] <- civil[1:174, "Civil liberties score 2021"] - civil[1:174, "Civil liberties score 2006"]
dataGraph["Legal Freedom"] <- legal[1:174, "Legal Freedom score 2021"] - legal[1:174, "Legal Freedom score 2006"]
dataGraph["Judicial Effectiveness"] <- judicial[1:174, "Judicial Effectiveness score 2021"] - judicial[1:174, "Judicial Effectiveness score 2006"]
dataGraph["Efficient Judiciary"] <- judiciary[1:174, "Efficient Judiciary score 2021"] - judiciary[1:174, "Efficient Judiciary score 2006"]
dataGraph["Civil Justice"] <- justice[1:174, "Civil Justice score 2021"] - justice[1:174, "Civil Justice score 2006"]
dataGraph["Criminal Justice"] <- criminal[1:174, "Criminal Justice score 2021"] - criminal[1:174, "Criminal Justice score 2006"]
dataGraph["Government Integrity"] <- integrity[1:174, "Government Integrity score 2021"] - integrity[1:174, "Government Integrity score 2006"]
dataGraph["Perceptions of Corruption"] <- corruption[1:174, "Perceptions of Corruption score 2021"] - corruption[1:174, "Perceptions of Corruption score 2006"]
dataGraph["Absence of Corruption"] <- absenceCorruption[1:174, "Absence of Corruption  score 2021"] - absenceCorruption[1:174, "Absence of Corruption score 2006"]
dataGraph["Public Disclosure"] <- disclosure[1:174, "Public Disclosure score 2021"] - disclosure[1:174, "Public Disclosure score 2006"]
dataGraph["State Capacity"] <- capacity[1:174, "State Capacity score 2021"] - capacity[1:174, "State Capacity score 2006"]
dataGraph["Order and Security"] <- security[1:174, "Order and Security score 2021"] - security[1:174, "Order and Security score 2006"]
dataGraph["Regulatory Effectivness"] <- regulatory[1:174, "Regulatory Effectivness score 2021"] - regulatory[1:174, "Regulatory Effectivness score 2006"]
dataGraph["Prosperity Index"] <- prosperity[1:174, "Prosperity Index 2021"] - prosperity[1:174, "Prosperity Index 2006"]
dataGraph["GNI per capita"] <- income[1:174, "GNI per capita 2021 score"] - income[1:174, "GNI per capita 2006 score"]
dataGraph["Environment"] <- environment[1:174, "Environment score 2021"] - environment[1:174, "Environment score 2006"]
dataGraph["Minority Rights"] <- minority[1:174, "Minority Rights 2021 score"] - minority[1:174, "Minority Rights 2006 score"]
dataGraph["Health"] <- health[1:174, "Health 2021 score"] - health[1:174, "Health 2006 score"]
dataGraph["Happiness"] <- happiness[1:174, "Happiness score 2021"] - happiness[1:174, "Happiness score 2006"]

matrix_graph = cor(dataGraph, use="complete.obs")

#jpeg(file="change15_years.jpg")
heatmap(matrix_graph, Colv = NA, Rowv = NA, scale = "none", cexRow=0.5, cexCol = 0.4)
#dev.off()



EconomicGraph15 <- data.frame(economic[1:174, "Economic Freedom score 2021"] - economic[1:174, "Economic Freedom score 2006"])
EconomicGraph15["Property Rights"] <- property[1:174, "Property Rights score 2021"] - property[1:174, "Property Rights score 2006"]
EconomicGraph15["Trade Freedom"] <- trade[1:174, "Trade Freedom score 2021"] - trade[1:174, "Trade Freedom score 2006"]
EconomicGraph15["Investment Freedom"] <- investment[1:174, "Investment Freedom score 2021"] - investment[1:174, "Investment Freedom score 2006"]
EconomicGraph15["Women's Economic Freedom"] <- women[1:174, "Women's Economic Freedom score 2021"] - women[1:174, "Women's Economic Freedom score 2006"]


EconomicMatrix15 = cor(EconomicGraph15, use="complete.obs")
#png("Correlation Matrix of Economic Freedom Increase in 15 years.png", width = 20, height = 20, units = 'in', res = 1200)
heatmap(EconomicMatrix15, Colv = NA, Rowv = NA, scale = "none", cexRow=1, cexCol = 1, main = "Correlation Matrix of Economic Freedom Increase in 15 years")
#dev.off()




PoliticalGraph15 <- data.frame(political[1:174, "Political Freedom score 2021"] - political[1:174, "Political Freedom score 2006"])
PoliticalGraph15["Constrainsts on Government"] <- constraint[1:174, "Constrainsts on Government score 2021"] - constraint[1:174, "Constrainsts on Government score 2006"]
PoliticalGraph15["Political Rights"] <- rights[1:174, "Political Rights score 2021"] - rights[1:174, "Political Rights score 2006"]
PoliticalGraph15["Civil liberties"] <- civil[1:174, "Civil liberties score 2021"] - civil[1:174, "Civil liberties score 2006"]


PoliticalMatrix15 = cor(PoliticalGraph15, use="complete.obs")
#png("Correlation Matrix of Economic Freedom Increase in 15 years.png", width = 20, height = 20, units = 'in', res = 1200)
heatmap(PoliticalMatrix15, Colv = NA, Rowv = NA, scale = "none", cexRow=1, cexCol = 1, main = "Correlation Matrix of Political Freedom Increase in 15 years")
#dev.off()





LegalGraph15 <- data.frame(legal[1:174, "Legal Freedom score 2021"] - legal[1:174, "Legal Freedom score 2006"])
LegalGraph15["Judicial Effectiveness"] <- judicial[1:174, "Judicial Effectiveness score 2021"] - judicial[1:174, "Judicial Effectiveness score 2006"]
LegalGraph15["Efficient Judiciary"] <- judiciary[1:174, "Efficient Judiciary score 2021"] - judiciary[1:174, "Efficient Judiciary score 2006"]
LegalGraph15["Civil Justice"] <- justice[1:174, "Civil Justice score 2021"] - justice[1:174, "Civil Justice score 2006"]
LegalGraph15["Criminal Justice"] <- criminal[1:174, "Criminal Justice score 2021"] - criminal[1:174, "Criminal Justice score 2006"]
LegalGraph15["Government Integrity"] <- integrity[1:174, "Government Integrity score 2021"] - integrity[1:174, "Government Integrity score 2006"]
LegalGraph15["Perceptions of Corruption"] <- corruption[1:174, "Perceptions of Corruption score 2021"] - corruption[1:174, "Perceptions of Corruption score 2006"]
LegalGraph15["Absence of Corruption"] <- absenceCorruption[1:174, "Absence of Corruption  score 2021"] - absenceCorruption[1:174, "Absence of Corruption score 2006"]
LegalGraph15["Public Disclosure"] <- disclosure[1:174, "Public Disclosure score 2021"] - disclosure[1:174, "Public Disclosure score 2006"]
LegalGraph15["State Capacity"] <- capacity[1:174, "State Capacity score 2021"] - capacity[1:174, "State Capacity score 2006"]
LegalGraph15["Order and Security"] <- security[1:174, "Order and Security score 2021"] - security[1:174, "Order and Security score 2006"]
LegalGraph15["Regulatory Effectivness"] <- regulatory[1:174, "Regulatory Effectivness score 2021"] - regulatory[1:174, "Regulatory Effectivness score 2006"]


LegalMatrix15 = cor(LegalGraph15, use="complete.obs")
#png("Correlation Matrix of Economic Freedom Increase in 15 years.png", width = 20, height = 20, units = 'in', res = 1200)
heatmap(LegalMatrix15, Colv = NA, Rowv = NA, scale = "none", cexRow=1, cexCol = 1, main = "Correlation Matrix of Legal Freedom Increase in 15 years")
#dev.off()




ProsperityGraph15 <- data.frame(prosperity[1:174, "Prosperity Index 2021"] - prosperity[1:174, "Prosperity Index 2006"])
ProsperityGraph15["GNI per capita"] <- income[1:174, "GNI per capita 2021 score"] - income[1:174, "GNI per capita 2006 score"]
ProsperityGraph15["Environment"] <- environment[1:174, "Environment score 2021"] - environment[1:174, "Environment score 2006"]
ProsperityGraph15["Minority Rights"] <- minority[1:174, "Minority Rights 2021 score"] - minority[1:174, "Minority Rights 2006 score"]
ProsperityGraph15["Health"] <- health[1:174, "Health 2021 score"] - health[1:174, "Health 2006 score"]
ProsperityGraph15["Happiness"] <- happiness[1:174, "Happiness score 2021"] - happiness[1:174, "Happiness score 2006"]

ProsperityMatrix15 = cor(ProsperityGraph15, use="complete.obs")
#png("Correlation Matrix of Economic Freedom Increase in 15 years.png", width = 20, height = 20, units = 'in', res = 1200)
heatmap(ProsperityMatrix15, Colv = NA, Rowv = NA, scale = "none", cexRow=1, cexCol = 1, main = "Correlation Matrix of Prosperity Increase in 15 years")
#dev.off()



Overall15<- data.frame(prosperity[1:174, "Prosperity Index 2021"] - prosperity[1:174, "Prosperity Index 2006"])
Overall15["Legal Freedom"] <- legal[1:174, "Legal Freedom score 2021"] - legal[1:174, "Legal Freedom score 2006"]
Overall15["Political Freedom"] <- political[1:174, "Political Freedom score 2021"] - political[1:174, "Political Freedom score 2006"]
Overall15["Economic Freedom"] <- economic[1:174, "Economic Freedom score 2021"] - economic[1:174, "Economic Freedom score 2006"]

OverallMatrix15 = cor(Overall15, use="complete.obs")
#png("Correlation Matrix of Economic Freedom Increase in 15 years.png", width = 20, height = 20, units = 'in', res = 1200)
heatmap(OverallMatrix15, Colv = NA, Rowv = NA, scale = "none", cexRow=1, cexCol = 1, main = "Correlation Matrix of Prosperity with Freedom Increase in 15 years")
#dev.off()




#current
dataGraph2 <- data.frame("Freedom"=freedom[1:174, "Freedom Score 2021"])
dataGraph2["Economic Freedom"] <- economic[1:174, "Economic Freedom score 2021"]
dataGraph2["Property Rights"] <- property[1:174, "Property Rights score 2021"]
dataGraph2["Trade Freedom"] <- trade[1:174, "Trade Freedom score 2021"]
dataGraph2["Investment Freedom"] <- investment[1:174, "Investment Freedom score 2021"]
dataGraph2["Women's Economic Freedom"] <- women[1:174, "Women's Economic Freedom score 2021"]
dataGraph2["Political Freedom"] <- political[1:174, "Political Freedom score 2021"]
dataGraph2["Constrainsts on Government"] <- constraint[1:174, "Constrainsts on Government score 2021"]
dataGraph2["Political Rights"] <- rights[1:174, "Political Rights score 2021"]
dataGraph2["Civil liberties"] <- civil[1:174, "Civil liberties score 2021"]
dataGraph2["Legal Freedom"] <- legal[1:174, "Legal Freedom score 2021"]
dataGraph2["Judicial Effectiveness"] <- judicial[1:174, "Judicial Effectiveness score 2021"]
dataGraph2["Efficient Judiciary"] <- judiciary[1:174, "Efficient Judiciary score 2021"]
dataGraph2["Civil Justice"] <- justice[1:174, "Civil Justice score 2021"]
dataGraph2["Criminal Justice"] <- criminal[1:174, "Criminal Justice score 2021"]
dataGraph2["Government Integrity"] <- integrity[1:174, "Government Integrity score 2021"]
dataGraph2["Perceptions of Corruption"] <- corruption[1:174, "Perceptions of Corruption score 2021"]
dataGraph2["Absence of Corruption"] <- absenceCorruption[1:174, "Absence of Corruption  score 2021"]
dataGraph2["Public Disclosure"] <- disclosure[1:174, "Public Disclosure score 2021"]
dataGraph2["State Capacity"] <- capacity[1:174, "State Capacity score 2021"]
dataGraph2["Order and Security"] <- security[1:174, "Order and Security score 2021"]
dataGraph2["Regulatory Effectivness"] <- regulatory[1:174, "Regulatory Effectivness score 2021"]
dataGraph2["Prosperity Index"] <- prosperity[1:174, "Prosperity Index 2021"]
dataGraph2["GNI per capita"] <- income[1:174, "GNI per capita 2021 score"]
dataGraph2["Environment"] <- environment[1:174, "Environment score 2021"]
dataGraph2["Minority Rights"] <- minority[1:174, "Minority Rights 2021 score"]
dataGraph2["Health"] <- health[1:174, "Health 2021 score"]
dataGraph2["Happiness"] <- happiness[1:174, "Happiness score 2021"]

matrix_graph2 = cor(dataGraph2, use="complete.obs")

#jpeg(file="change15_years.jpg")
heatmap(matrix_graph2, Colv = NA, Rowv = NA, scale = "none", cexRow=0.5, cexCol = 0.4)
#dev.off()



EconomicGraph <- data.frame(economic[1:174, "Economic Freedom score 2021"])
EconomicGraph["Property Rights"] <- property[1:174, "Property Rights score 2021"]
EconomicGraph["Trade Freedom"] <- trade[1:174, "Trade Freedom score 2021"]
EconomicGraph["Investment Freedom"] <- investment[1:174, "Investment Freedom score 2021"]
EconomicGraph["Women's Economic Freedom"] <- women[1:174, "Women's Economic Freedom score 2021"]

EconomicMatrix = cor(EconomicGraph, use="complete.obs")
#png("Correlation Matrix of Economic Freedom Increase in 15 years.png", width = 20, height = 20, units = 'in', res = 1200)
heatmap(EconomicMatrix, Colv = NA, Rowv = NA, scale = "none", cexRow=1, cexCol = 1, main = "Correlation Matrix of Economic Freedom in 2021")
#dev.off()


PoliticalGraph <- data.frame(political[1:174, "Political Freedom score 2021"])
PoliticalGraph["Constrainsts on Government"] <- constraint[1:174, "Constrainsts on Government score 2021"]
PoliticalGraph["Political Rights"] <- rights[1:174, "Political Rights score 2021"]
PoliticalGraph["Civil liberties"] <- civil[1:174, "Civil liberties score 2021"]


PoliticalMatrix = cor(PoliticalGraph, use="complete.obs")
#png("Correlation Matrix of Economic Freedom Increase in 15 years.png", width = 20, height = 20, units = 'in', res = 1200)
heatmap(PoliticalMatrix, Colv = NA, Rowv = NA, scale = "none", cexRow=1, cexCol = 1, main = "Correlation Matrix of Political Freedom in 2021")
#dev.off()



LegalGraph <- data.frame(legal[1:174, "Legal Freedom score 2021"])
LegalGraph["Judicial Effectiveness"] <- judicial[1:174, "Judicial Effectiveness score 2021"]
LegalGraph["Efficient Judiciary"] <- judiciary[1:174, "Efficient Judiciary score 2021"]
LegalGraph["Civil Justice"] <- justice[1:174, "Civil Justice score 2021"]
LegalGraph["Criminal Justice"] <- criminal[1:174, "Criminal Justice score 2021"]
LegalGraph["Government Integrity"] <- integrity[1:174, "Government Integrity score 2021"]
LegalGraph["Perceptions of Corruption"] <- corruption[1:174, "Perceptions of Corruption score 2021"]
LegalGraph["Absence of Corruption"] <- absenceCorruption[1:174, "Absence of Corruption  score 2021"]
LegalGraph["Public Disclosure"] <- disclosure[1:174, "Public Disclosure score 2021"]
LegalGraph["State Capacity"] <- capacity[1:174, "State Capacity score 2021"]
LegalGraph["Order and Security"] <- security[1:174, "Order and Security score 2021"]
LegalGraph["Regulatory Effectivness"] <- regulatory[1:174, "Regulatory Effectivness score 2021"]


LegalMatrix = cor(LegalGraph, use="complete.obs")
#png("Correlation Matrix of Economic Freedom Increase in 15 years.png", width = 20, height = 20, units = 'in', res = 1200)
heatmap(LegalMatrix, Colv = NA, Rowv = NA, scale = "none", cexRow=1, cexCol = 1, main = "Correlation Matrix of Legal Freedom in 2021")
#dev.off()




ProsperityGraph <- data.frame(prosperity[1:174, "Prosperity Index 2021"])
ProsperityGraph["GNI per capita"] <- income[1:174, "GNI per capita 2021 score"]
ProsperityGraph["Environment"] <- environment[1:174, "Environment score 2021"]
ProsperityGraph["Minority Rights"] <- minority[1:174, "Minority Rights 2021 score"]
ProsperityGraph["Health"] <- health[1:174, "Health 2021 score"]
ProsperityGraph["Happiness"] <- happiness[1:174, "Happiness score 2021"]

ProsperityMatrix15 = cor(ProsperityGraph15, use="complete.obs")
#png("Correlation Matrix of Economic Freedom Increase in 15 years.png", width = 20, height = 20, units = 'in', res = 1200)
heatmap(ProsperityMatrix15, Colv = NA, Rowv = NA, scale = "none", cexRow=1, cexCol = 1, main = "Correlation Matrix of Prosperity in 2021")
#dev.off()



Overall<- data.frame(prosperity[1:174, "Prosperity Index 2021"])
Overall["Legal Freedom"] <- legal[1:174, "Legal Freedom score 2021"]
Overall["Political Freedom"] <- political[1:174, "Political Freedom score 2021"]
Overall["Economic Freedom"] <- economic[1:174, "Economic Freedom score 2021"]

OverallMatrix = cor(Overall, use="complete.obs")
#png("Correlation Matrix of Economic Freedom Increase in 15 years.png", width = 20, height = 20, units = 'in', res = 1200)
heatmap(OverallMatrix, Colv = NA, Rowv = NA, scale = "none", cexRow=1, cexCol = 1, main = "Correlation Matrix of Prosperity with Freedom in 2021")
#dev.off()



