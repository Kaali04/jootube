
if (Condition) { # The condition must return TRUE or FALSE
  # Run some code
} else {
  # Run other code
}


if (Condition) print("Code") else print("More code")

if (Condition) { # The condition must return TRUE or FALSE
  # Code
} else {
  # Code
  if(Condition 2) { # The condition must return TRUE or FALSE
    # Code
  } else {
    # More code
  }
} 



f <- function(x) {
  if (x < 0) {
    0
  } else {
    if (x <= 10) {
      x / 10
    } else {
      1
    }
  }
}

# Calling the function
f(-1)  # 0
f(5)   # 0.5
f(100) # 1


#even or odd
is_even <- function(x) {
  if (x %% 2 == 0 ) {
    print("x is even")
  } else {
    print("x is odd")
  } 
}

# Calling the function
is_even(5)  # x is odd
is_even(10) # x is even


if (seq(1, 5) < 5) {
  print(TRUE)
} else {
  print(FALSE)
}

#Note that you are trying to compare a numeric vector with a unique number.

#the if condition only return TRUE or FALSE, and not a vector of conditions. 
#For that purpose you need to use the ifelse function, that has the following syntax:
ifelse(vector_with_condition, value_if_TRUE, value_if_FALSE)
?ifelse()
ifelse(seq(1, 5) < 5, TRUE, FALSE)

#You can also evaluate several conditions using the ifelse function with nested ifelse. 
#Note you can nest up to 50 conditions.
#ifelse(vector_with_condition,
       #ifelse(vector_with_condition_if_TRUE, value_if_TRUE, value_if_FALSE),
       #ifelse(vector_with_condition_if_FALSE, value_if_TRUE, value_if_FALSE))

#For loop
#syntax
for (i in list) {
  # Code
}
for (i in 1:5) {
  print(i + 1)
}

colors <- c("green", "blue", "red")
for (color in colors){
  print(paste("Color: ", color))
}
?paste()
#clock using for loop
angle <- seq(0, 360, length = 60)
radians <- angle * pi / 180
x <- cos(radians)
y <- sin(radians)
for (i in 1:60) {
  plot(y, x, axes = F, xlab = "", ylab = "", type = "l", col = "grey")
  arrows(0, 0, y[i], x[i], col = "blue")
  Sys.sleep(1) # Waits one second
}


for (iter in 1:15) {
  
  if (iter == 3) {
    next  
  }
  
  if (iter == 6) {
    break   
  }
  
  print(iter)
} 







#vectorised for loop
# install.packages("foreach")
library(foreach)

for_each <- function(x) {
  
  res <- foreach(i = 1:x, .combine = 'c') %do% {
    sqrt(i)
  }
  
  return(res)
}

for_each(10)





#while loop
#Factorial in R using while loop
factorialR <- function(x) {
  
  if (x == 0) {
    res <- 1
  } else {
    
    res <- x
    
    while(x > 1){
      res <- (x - 1) * res
      x <- x - 1
    }
  }
  return(res)
}

factorialR(5)
factorialR(0)
























