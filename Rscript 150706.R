d = 10000

dice1 <- sample(6,d,replace=TRUE)
dice2 <- sample(6,d,replace=TRUE)

# sum of rolling dice
dice_roll <- dice1+dice2

# histogram of rolling dice
hist(dice_roll)
hist(dice_roll,freq=FALSE)

# cumulative distribution plot
plot(ecdf(dice_roll))

# normal distribution
n <- rnorm(1000)
plot(n)
hist(n)

hist(rnorm(10000,mean=5,sd=10))

# what is percentile of my height - mean=70inch, sd=5inch
# my height= 174cm
z=(174-177.8)/12.7
pnorm(z)