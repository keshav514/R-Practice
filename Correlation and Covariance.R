#Correlation is scaled to be between -1 and +1 depending on whether there is positive or negative 
#correlation, and is dimensionless. The covariance however, ranges from zero, in the case of two 
#independent variables, to Var(X), in the case where the two sets of data are equal.
#What is Correlation?
#Correlation is a statistical measure that indicates the extent to which two or more variables 
#fluctuate together. A positive correlation indicates the extent to which those variables increase 
#or decrease in parallel; a negative correlation indicates the extent to which one variable 
#increases as the other decreases.
# creation of data set
pce <- c(507.8, 510.9, 516.7, 513.3, 518.5, 526.2)
pop <- c(198712, 198911, 199113, 199311, 199484, 199657)
psavert <- c(9.8, 9.8, 9.0, 9.8, 9.7, 9.4)
unempmed <- c(4.5, 4.7, 4.6, 4.9, 4.7, 4.8)
unemploy <- c(2944, 2945, 2958, 3143, 3066, 3018)
year <- c(1967, 1967, 1967, 1967, 1967, 1967)
month <- c("Jun", "Jul", "Aug", "Sep", "Oct", "Nov")
economics <- matrix(c(pce, pop, psavert, unempmed, unemploy, year, month),nrow = 6, byrow = FALSE)
