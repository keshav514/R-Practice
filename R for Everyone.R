#Basic Statistics
# Creation of data set of sample size 100
x <- sample(x = 1:100, size = 100, replace= TRUE)
#replace = TRUE means that the same number can be drawn multiple times.
x
# x to print the complete x data set.
# 1. statistics parameters is mean
mean(x)
# mean is the average of the data set its simply sum of the all data set entries divided by total number of observation
# copy x
y <- x
# choose a random 20 elements, using sample to set to NA
y[sample(x= 1:100, size = 20, replace= FALSE)] <- NA
# If mean encounter even one element that is NA it wll returen NA. This is providing misleading information.
mean(y)
# to avoid this, set na.rm to TRUE. This will remove the all NA value after that calculate mean.
mean(y, na.rm= TRUE)
#weighted.mean is function takes a vector of numbers and vector of weights.
#creation of dataset for weighted mean
grades <- c(95, 75, 83, 66)
weights <- c(1/2, 1/4, 1/8, 1/8)
weighted.mean(x= grades, w= weights)

#2. Variance is the expectation of the squared deviation of a random variable from its mean, 
#and it informally measures how far a set of (random) numbers are spread out from their mean.
variance= sum((x-mean(x))^2)/(length(x) -1)

#variance can be calcuated through variance function var()
var(x)

# 3. In statistics, the standard deviation (SD, also represented by the Greek letter sigma σ 
#or the Latin letter s) is a measure that is used to quantify the amount of variation or dispersion of a set of data values.
# standard deviation is the square root of variance
sqrt(var(x))

# standard deviation can directly calculated through vector x
sd(x)

#4. Other commonly used statistic function are max, min and median
max(x)

min(x)

median(x)
# Median is the middle of an ordered set of numbers. In the case, when there is an even amount of numbers, the median is the mean of the middle two numbers.

# A single, which camputes the mean, minimum, maximum and median is summary.
summary(x)
#summary computes the mean, maximum, median, minimum 1st qu., 3rd qu., NA's

#Quantile function: The word “quantile” comes from the word quantity. In simple terms, a quantile is 
#where a sample is divided into equal-sized, adjacent, subgroups (that's why it's sometimes called a “fractile”). 
#It can also refer to dividing a probability distribution into areas of equal probability.
quantile(x, probs= c(0.25,0.75))



