library(boot)
acme$market
N <- length(acme$market)
n <- ceiling(sqrt(N))
cut(acme$market, n)
table(cut(acme$market, n))
