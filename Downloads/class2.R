# Creating R vectors with 'c' function
?str()
?c()
?seq()
x <- c(12, 6, 67)
y <- c(2, 13)
y
x

a <- t
class(a)
t <- a
class(t)


state <- c("New York", "Ohio", "Washington", "Alabama")
class(state) # "character"

logic <- c(TRUE, TRUE, FALSE, TRUE)
class(logic) # "logical"




#if we mix the data inside a vector the components will be coerced.
mix <- c(TRUE, "Correct", 8, 2.2)
mix # "TRUE" "Correct"  "8"  "2.2"

class(mix)  # "character"
typeof(mix) # "character"


#name vector in R
my_vector <- c(orange = 4, apple = 6)
my_vector
class(my_vector)


?setNames()
setNames(y, c("orange", "apple"))



#order vector in R
z <- c(12, 15, 3, 22)
sort(z)  #by default increasing order


sort(z, decreasing = TRUE) # decreasing order

# Increasing order
z[order(z)]  # Equivalent to sort(z)

# Decreasing order
z[order(-z)] # Equivalent to sort(z, decreasing = TRUE)


# Reversing the order of a vector
rev(z)

#Combine vectors
x <- c(1, 2, 3)
y <- c(4, 5, 6)
c(x, y)
c(y, x)



#Create empty vector
# Empty vector
my_vector <- c()
my_vector
# Filling the vector using a for loop
for(i in 1:10) {
  my_vector[i] <- i
}

my_vector

#If you want to fill an empty vector, 
#it is more efficient to pre-allocate memory creating a vector 
#(for example with NA values) of the length of your final vector or using the vector function.
# Memory pre-allocation
my_vector <- rep(NA, 5)
my_vector <- vector(length = 5)

# Filling the vector using a for loop
for(i in 1:5) {
  my_vector[i] <- i
}


#Compare two vectors
#1.You can compare the elements one by one with some logical operator.
x <- c(1, 5)
y <- c(4, 0)
x > y # FALSE TRUE


#Note that if one vector is greater than the other, the number of elements must be multiples or an error will occur.
x <- c(1, 5)
y <- c(4, 0, 1, 3)

# This compares 1 > 4, 5 > 0, 1 > 1 y 5 > 3
x > y # FALSE TRUE FALSE TRUE

x <- c(1, 5, 1)
y <- c(4, 0, 1, 3)
x > y # Error


#2.You can also check if the elements of the first vector are contained in the second with %in%.
x %in% y # TRUE FALSE

#3.Another option is to return the common elements between the first vector and the second
# Return common elements
x[x %in% y] # 1



#4.You could compare if all the elements of the first vector are in the second with the function all as follows
x <- c(1, 5)
y <- c(4, 5, 1, 3)

all(x %in% y) # TRUE




#Sequence vectors in R
1:4
# 1 2 3 4
?seq()
seq(1, 4, 0.5)
# 1.0 1.5 2.0 2.5 3.0 3.5 4.0

seq(from = 1, to = 5, length.out = 9)
# 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0

rep(1, 5)

vec4 <- c(54, 87,98)
rep(vec4, 6)
z<- c("54", "67", "87")
?rep()
rep.int(z, 7)
rep(z, 6)
rep.int(z, 0)
#Generate random vector in R
sample(1:6, size = 5, replace = TRUE) 
?sample()
sample(1:6, size = 5, replace = FALSE) 

# Normal values
rnorm(5, mean = 0, sd = 1)


# Uniform values
runif(5, min = 2, max = 10)

#Note on random number generation. When generating random numbers, you will obtain different values each time you execute the command, so your previous results will be different from ours. In order to set a random number generator seed to make a reproducible example you first need to call the set.seed function.
set.seed(1) # You can set any other integer number as seed

# Normal values
?rnorm()
rnorm(5, mean = 0, sd = 1)
 
# Uniform values
runif(5, min = 2, max = 10)

#Length of vector
my_data <- c("vector", "sequence", "rnorm", "runif")

n <- length(my_data)

# Length of the vector
n # 4

#Access elements of vectors in R
#Numeric index for accessing vector elements
lett <- letters
lett

lett1 <- LETTERS
lett1
# First element
lett[1]

# First element, simplifying the output class
lett[[1]]

# Third and fourth element
lett[c(3, 4)]

# Last element of vector
lett[length(lett)]

# Even letters
lett[seq(2, n, 2)]

# Odd letters
lett[seq(1, n, 2)]
lett[-seq(2, n, 2)] # Equivalent



#Logical index for accessing vector elements
temp <- c(22.52, 18.70, 19.61, 22.79, 29.38, 30.19,
          33.16, 36.97, 33.29, 28.98, 24.31, 22.43)

month <- c("January", "February", "March", "April", "May", "June",
           "July", "August", "September", "October", "November", "December")
# Months with maximum temperature greater than 30
month[temp > 30] 

#Add element to R vector
#Now you can try to add the ‘ñ’ letter to the vector we created before. First, you need to find the previous (or the following) letter in the alphabet. We will look for the ‘n’ letter and put the ‘ñ’ just after. You can make use of the which function to find the index of the element in the vector that corresponds with the letter ‘n’.
# Looking for the index
n1 <- which(lett == "n")
n1 # 14

c(lett[1:n1], "ñ", lett[-(1:n1)])
# Adding the letter 'ñ' at the beginning of the vector
c("ñ", lett)

# Adding the letter 'ñ' at the end of the vector
c(lett, "ñ")

#How to delete a vector in R?
#You can delete a vector in R with the rm function or assigning it other value, like NULL.
my_vector <- c(1, 2, 5, 6, 7)

# With rm function
rm(my_vector)

# Overriding the vector with other value
my_vector <- 0

# Assigning NULL
my_vector <- NULL

#Delete value from vector
#If you want to delete only some specific values of a vector 
#you can use the - sign indicating the indexes you don’t want
vector <- c("London", "New York", "Paris")

# Deleting 'London'
vector[-1] # "New York" "Paris"
vector[which(vector != "London")]  # Equivalent
vector[-which(vector == "London")] # Equivalent




