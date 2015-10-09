require(rmarkdown)
install.packages('rmarkdown')

source("poisson.r")
target = 50
t0 <- 0  # Start time
t1 <- 6  # End time

set.seed(123)

rate <- 10
x <- hpp.sim(rate, target)
plot(x, 0:target, main='A sample recruitment path', xlab='t', ylab='N', type='b')

