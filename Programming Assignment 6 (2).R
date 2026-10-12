# Name: Labour Modi

# Course: COP2073C

# Assignment: Programming Assignment 6

# Date: October 9, 2026

# Define a vectorized function with exception handling.

custom_function <- function(x) {
  temp <- try(x * 2, silent = TRUE)
  
  if (class(temp) == "try-error") {
    return(rep(NA, length(x)))
  } else {
    return(temp)
  }
}

# Test 1: Apply the function to a numeric vector.

numbers <- c(1, 2, 3, 4, 5)
result1 <- sapply(numbers, custom_function)
print(result1)

# Test 2: Apply the function to a vector containing a string.

mixed_numbers <- c(1, 2, "hello", 4, 5)
result2 <- sapply(mixed_numbers, custom_function)
print(result2)
