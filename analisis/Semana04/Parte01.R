#Part 01

#Sampling values in the project.

library(tidyverse)

lambda <- 0.2 # Set lambda = 0.2 for all of the simulations.
n <- 40  # You will investigate the distribution of averages of 40 exponentials.
simulations <- 1000 # You will need to do a thousand simulations.

#Run Simulation 

sim_expect <- replicate(simulations, rexp(n,lambda))

#Find the means

mean_expect <- apply(sim_expect, 2, mean)

#Histogram

hist(mean_expect, breaks = n, main = "Project expotential distribution")

#1.Show the sample mean and compare it to the theoretical mean of the distribution.

hist(mean_expect, breaks = n, main = "Sample mean - Theoretical mean")
abline(v = mean(mean_expect), col = "green", lwd = 2)
mean(mean_expect)

#2.Show how variable the sample is (via variance) and compare it to the theoretical variance of the distribution.

#Sample Variance

sd(mean_expect)^2

#Theoretical Variance

(1/lambda / sqrt(n))^2
tv <- (1/lambda / sqrt(n))^2

#The variances is very close.


#3.Show that the distribution is approximately normal.

#The plot shows a normal distribution to the Central Limit Theorem.


hist(mean_expect, prob=TRUE,main="Distribution", breaks=n, xlim=c(2,9))
lines(density(mean_expect), col="red",lwd=2)
x <- seq(min(mean_expect), max(mean_expect), length.out = 2*n)
y <- dnorm(x, mean = 1/lambda, sd = sqrt(tv))
lines(x,y,lwd = 2, col = "black", lty = 2)

