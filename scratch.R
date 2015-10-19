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



# Demo for Dan
# Imagine a scenario where event intensity increases
# linearly from 0 at t=0 to 100% at t=3, and remains at 100% thereafter
intensity <- function(t) pmin(t/3, 1)
curve(intensity, from = 0, to = 5, main='Intensity function', xname = 't')
# Let's simulate a scenario where there are 10 events per year on average
# when the event intensity is at 100%. Our hitting time is 50 events.
X <- nhpp.scenario(rate = 10, num.events = 50, prob.func = intensity)
plot(X, main='Expect 50 events within 5-8 years')


# install.packages('rstudio')
# require(rstudio)
install.packages('devtools')
require(devtools)
find_rtools()
load_all('poisson')
dev_help('hpp.mean')
