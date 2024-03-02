#installing a package
install.packages("") 
?library()
library(calendR)
library(help = "base") 

install.packages("pacman")

pacman::p_load(pacman, dplyr, ggplot2, lubridate)
??pacman 

#Installing packages in R from zip source
install.packages("file_path\\package_file_name.extension",
                 repos = NULL, type = "source")

#Install multiple packages at once
install.packages(c("ggplot2", "dplyr"))

#Update R packages
old.packages()
update.packages()
update.packages(ask = FALSE)

#NOTE:You will only be able to update a package if it is not loaded. If you have already loaded a package and you want to update it, use the detach function as follows: detach(package:some_package, unload = TRUE)


#List functions in R package
help(package = ggplot2)
#Another way:
lsf.str("package:ggplot2")
ls("package:ggplot2")


# R program to illustrate taking input from the user

# string input
var1 = readline(prompt = "Enter your name : ")

# character input
var2 = readline(prompt = "Enter any character : ")
# convert to character
var2 = as.character(var2)

# printing values
var1
var2


# taking multiple inputs using braces
{
  var1 = readline("Enter 1st number : ")
  var2 = readline("Enter 2nd number : ")
  var3 = readline("Enter 3rd number : ")    
  var4 = readline("Enter 4th number : ")
}

# converting each value
var1 = as.integer(var1)
var2 = as.integer(var2)
var3 = as.integer(var3)
var4 = as.integer(var4)

# print the sum of the 4 number
var1 + var2 + var3 + var4


# R program to illustrate taking input from the user

# taking input using scan()
x = scan()
# print the inputted values
x


#Taking double, string, character type values using scan() method
#Syntax: 
#x = scan(what = double()) — for double 
#x = scan(what = ” “) — for string 
#x = scan(what = character()) — for character 

# R program to illustrate taking input from the user

# double input using scan()
d = scan(what = double())

# string input using 'scan()'
s = scan(what = " ")

# character input using 'scan()'
c = scan(what = character())

# print the inputted values
d # double
s # string
c # character


#Read File data using scan() method
#Syntax: 
#x = scan(“fileDouble.txt”, what = double()) —-for double 
#x = scan(“fileString.txt”, what = ” “) —-for string 
#x = scan(“fileChar.txt”, what = character()) —-for character

# R program to illustrate taking input from the user

# string file input using scan()
s = scan("fileString.txt", what = " ")

# double file input using scan()
d = scan("fileDouble.txt", what = double())

# character file input using scan()
c = scan("fileChar.txt", what = character())

# print the inputted values
s # string
d # double
c # character






