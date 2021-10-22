# a
x <- sample(seq(1:100), 10, replace=TRUE)
y <- sample(seq(1:100), 10, replace=TRUE)

A <- cbind(x,y)

A_t <- t(A)

A_t%*%y

# b
A <- matrix(c(3,2,1,4,9,2,1,2,9),nrow=3,ncol=3,byrow=TRUE)
b <- sample(seq(1:100), 3, replace=TRUE)

det(A)
x <- solve(A,b)

# c
c <- sample(seq(1:100), 3, replace=TRUE)
B <- cbind(A,c)

d <- sample(seq(1:100), 4, replace=TRUE)
G <- rbind(B,d)

# d
dimnames(G) = list(c("Jane","Amy","Gina","Rosa"),c("Rose","Daisy","Tulip","Cactus"))
dim(G)

# e
M <- matrix(c(3,2,1,4,9,2,1,2,9),nrow=3,ncol=3,byrow=TRUE,
            dimnames=list(c("A","B","C"),c("D","E","F")))

# f
Z <- array(x, dim=c(3,3,2))
