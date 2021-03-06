# Title: "Get started with R basic coding"

#  To find  R version

cat("R version =",
    paste(R.version$major, R.version$minor, sep="."), "\n")


# Below print() function has two parameters first a string "Hello World"
# second parameter quote=TRUE indicating string to be displayed with surrounding double quotes.

print("Hello World", quote = TRUE)


# library(tidyverse) loads the core tidyverse packages.
# data(iris) loads the iris data set with 150 rows and 5 variables from the tidyverse package. 

library(tidyverse)

data(iris)

# Function nrow(iris) determines the number of records for iris dataset
# and using <- right to left assignment operator to assign the value to variable 'number_of_records'.

number_of_records <- nrow(iris)


#  Below code calculates & print the result of raising number_of_records to the 1/2 power.

result_of_raising_n <- number_of_records^(1/2)
cat("The result of raising n(number of records) to the 1/2 power is",result_of_raising_n,"\n")


# Using iris$Petal.Width notation retrieves only Petal.Width column values of iris dataset
# na.rm=TRUE will remove NA values for the column price of iris dataset.

# Using min(), mean(), median() and interquartile() function

PetalWidth_min_value <- min(iris$Petal.Width,na.rm=TRUE)

PetalWidth_mean_value <- mean(iris$Petal.Width,na.rm=TRUE)

PetalWidth_median_value <- median(iris$Petal.Width,na.rm=TRUE)

PetalWidth_interquartile_value <- IQR(iris$Petal.Width,na.rm=TRUE)


# Use cat() to print an informative message 

cat("The statistics iris petal width are \n", "mean  is ", PetalWidth_mean_value, "\n",
    "median  is ",PetalWidth_median_value, "\n",
    "minimum is ",PetalWidth_min_value,"\n",
    "interquartile  is ",PetalWidth_interquartile_value,"\n")


# Know your data well head(), tail(), str()
#    head(iris)         # returns first six rows by default
#    tail(iris, n = 4)  # last 4 rows
#    str(iris)          # structure synopsis

head(iris)
tail(iris)
str(iris)

# Using factor()  to create ordered vector
# Customer rating on the scale of 1 to 10 

customer_rating <- c(9, 3, 7, 2, 9, 4, 5, 6, 7, 2, 3, 9)

# Create ordered factor vector using factor() function
factor.customer_rating <- factor(customer_rating, ordered=TRUE)
str(factor.customer_rating)
table(factor.customer_rating)


# An ordered factor vector can be indexed by value using a comparison operator
satisfactory.rating  <- factor.customer_rating[factor.customer_rating > "5" ]
str(satisfactory.rating)
table(satisfactory.rating)

# The following code resets the levels of satisfactory.rating to only those with positive counts:
satisfactory.rating <- factor(satisfactory.rating)
str(satisfactory.rating)
table(satisfactory.rating)





