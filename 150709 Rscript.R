# 1 #
#data
c1 <- c(20,32,35,34,40,51,52,56,57,68)
c2 <- c(23,34,36,44,42,51,54,57,54,62)

# 1a
plot(c1,c2, xlab="first visit spending",ylab="second visit spending")

# 1b: positive, linear, strong

# 1c
# note the differences between correlation and regression
r <- cor(c1,c2)  # answer: 0.97


# SE of p is sqrt((1-r2)/n-2)), also output from cor.test from "estimate" and "parameter", plug into formula for SE
# SE used for hypthesis testing of correlation but not confidence interval because r is not normal
SE <- sqrt((1-r^2)/(length(c1)-2))   # answer: 0.087


# 1d, the standard error is the standard deviation of the sample distribution of r

# 1e confidene interval of p (population correlation coefficient), can only approximate p because r is not normal, need large n for this to work, Fisher's z-transformation
rt <- cor.test(c1,c2)   
rt$conf.int		# answer: 0.87 - 0.99 [0.95 confidence interval]


# 2 #

# 2a, correlation is the same, unaffected by constant
c1_B <- c1 + 30
c2_B <- c2 + 30
cor(c1,c2_B)

# 2b,correlation is the same, unaffect multiplying by constant
c1_C <- c1*100
cor(c1_C,c2)
# what if switch the order, doesn't change as well



# 3 #

# 3a

b1 <- c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,0.4,0.5,0.1,0.2,0.4,1.3,1.2,1.4,1.6,1.6,1.8,3.1)
b2 <- c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,19,25,65)

plot(b1,b2)

# 3b, mortality = 16.37 + 10.26 * (log home range)
m <- lm(b2~b1)
abline(m)

# 3c 

# Ho: home range size does not predict infant mortality (beta = 0)
# Ha: home range size does predict infant mortality (beta != 0)

# answer: b = 9.955, a=16.280, SE = 2.766, t=3.6, df=18, P = 0.002
# reject null Ho
summary(m)
a <- m$coefficients[1]
b <- m$coefficients[2]

a = 16.28047
b = 9.955187


# predicted values vs actual values
b3 <- mat.or.vec(20,1)
for (i in 1:length(b3)) {
  b3[i] = b*b1[i] + a
}

points(b1,b3,col="red")

# also cor.test(b1,b2)

# you can also do this for the intercept



# 3d
b1_p <- c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,0.4,0.5,0.1,0.2,0.4,1.3,1.2,1.4,1.6,1.6,1.8)
b2_p <- c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,25,25)
m_p <- lm(b2_p~b1_p)
abline(m_p)
summary(m_p)

# answer: b = 6.600, a=17.510, SE = 3.074, t=2.147, df=17, P = 0.0465
# still reject Ho but not as strongly, the slope changes from 9.955 to 6.600