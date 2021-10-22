#a
library(boot)
data(beaver)



calculate_product <- function(table) {
  result <- 0
  
  for(i in 1:dim(table)[1]) {
    result <- result + table[i,3]*table[i,4]
  }
  
  return(result)
}

calculate_product(beaver1)

#b

count_zeros <- function(vector) {
  counter <- 0
  
  for(i in 1:length(vector)) {
    if(vector[i] == 0) {
      counter <- counter + 1
    }
  }
  
  return(counter)
}

v <- c(1,2,0,2,0,1,0)
count_zeros(v)

#c

find_first_last <- function(vector) {
  first <- -1
  last <- -1
  
  for(i in 1:length(vector)) {
    if(first == -1 && vector[i] == TRUE) first = i
    if(first != -1 && vector[i] == TRUE) last = i
  }
  if(first == -1) return(c(NA,NA))
  else return(c(first,last))
  
}

v <- c(FALSE,TRUE,FALSE,FALSE,TRUE)
find_first_last(v)

#d

moda <- function(x) {
  x <- sort(x)
  leader <- -1
  temp_leader <- -1
  result <- 1
  temp_result <- 1
  
  for(i in 2:length(x)) {
    if(x[i] == x[i-1]) {
      temp_result <- temp_result + 1
      
      if(temp_result > result) {
        leader <- x[i]
        result <- temp_result
      }
      
    }else{
      temp_result <- 1
    }
  }
  
  return(leader)
}

x <- c(1,2,1,3,3,4,3,3,6,6,6,6,3)
moda(x)
