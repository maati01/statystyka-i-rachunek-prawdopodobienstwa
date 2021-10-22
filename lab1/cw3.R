#a
load('lab1/table.RData')
Nowe_badanie <- table
Nowe_badanie

#b
library(boot)
data(beaver)

save(beaver, file = 'lab1/beaver1.RData')
