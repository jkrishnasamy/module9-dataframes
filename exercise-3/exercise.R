# Load R's "USPersonalExpenditure" dataset using the "data()" function
# This will produce a data frame called `USPersonalExpenditure`
data(USPersonalExpenditure)

# The variable USPersonalExpenditure is now accessible to you. Unfortunately,
# it's not a data frame (it's actually what is called a matrix)
# Test this using the `is.data.frame()` function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable as an argument
# to the `data.frame()` function to convert it a data farm. Do this, storing the
# result in a new variable
PersonalExpenditure <- data.frame(USPersonalExpenditure)
View(PersonalExpenditure)
# What are the column names of your dataframe?
colnames(PersonalExpenditure)

# Why are they so strange? Think about whether you could use a number like 1940
# with dollar notation!
# Because if 
# What are the row names of your dataframe?
rownames(PersonalExpenditure)

# Create a column "category" that is equal to your rownames
PersonalExpenditure$category <- rownames(PersonalExpenditure)

# How much money was spent on personal care in 1940?
PersonalExpenditure["Personal Care", "X1940"]

# How much money was spent on Food and Tobacco in 1960?
PersonalExpenditure["Food and Tobacco", "X1960"]

# What was the highest expenditure category in 1960?
# Hint: use the `max()` function to find the largest, then compare that to the column
PersonalExpenditure$category[PersonalExpenditure$X1960 == max(PersonalExpenditure$X1960)]

# Define a function `DetectHighest` that takes in a year as a parameter, and
# returns the highest spending category of that year
DectectHighest <- function(year){
  year <- paste0("X", year)
  return(PersonalExpenditure$category[PersonalExpenditure[,year] == max(PersonalExpenditure[,year])])
}
  
DectectHighest("1940")
DectectHighest("1945")
DectectHighest("1950")
DectectHighest("1955")
DectectHighest("1960")
# Using your function, determine the highest spending category of each year
