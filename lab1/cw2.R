# a
list1 <- list(string = c("ab","cd","ef"),int = matrix(3,2,2,FALSE),
              bool = matrix(TRUE,2,2,FALSE))
typeof(list1)

#apply(list1$int, MARGIN=c(1, 2), FUN=sqrt)
#or
sqrt(list1$int)

#b
palenie <- sample(c(TRUE,FALSE),10,replace = TRUE)
p³eæ <- sample(c("K","M"),10,replace = TRUE)
wiek <- sample(seq(1:100),10,replace = TRUE)

table <- data.frame(czy_pali = palenie, plec = p³eæ, wiek = wiek)
table
sapply(table, FUN = class)
data.frame(table(table$plec))
table

save(table, file='lab1/table.RData')
