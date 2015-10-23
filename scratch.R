
# source("poisson.r")
library(poisson)
help(poisson)
search()
target = 50
t0 <- 0  # Start time
t1 <- 6  # End time
set.seed(123)
rate <- 10
x <- hpp.sim(rate, target)
plot(x, 0:target, main='A sample recruitment path', xlab='t', ylab='N', type='b')
help("nhpp.scenario")


# Demo for Dan
# Imagine a scenario where event intensity increases
# linearly from 0 at t=0 to 100% at t=3, and remains at 100% thereafter
intensity <- function(t) pmin(t/3, 1)
curve(intensity, from = 0, to = 5, main='Intensity function', xname = 't')
# Let's simulate a scenario where there are 10 events per year on average
# when the event intensity is at 100%. Our hitting time is 50 events.
X <- nhpp.scenario(rate = 10, num.events = 50, prob.func = intensity)
plot(X, main='Expect 50 events within 5-8 years')



# Test package
install.packages('devtools')
install.packages('roxygen2')
require(devtools)
require(roxygen2)
find_rtools()
load_all('poisson')


# When receiving error: rdFile must be a single element character vector. add .Rd to character string of name to fix

# Systematically going through each function / class
dev_help('hpp.event.times.Rd')
hpp.event.times(rate = 20, num.events = 10)

dev_help('hpp.lik')
X = c(0.17, 0.39, 0.63, 0.78, 0.99)
hpp.lik(X, T1 = 1, rate = 4)
hpp.lik(X, T1 = 1, rate = 5)
hpp.lik(X, T1 = 1, rate = 6)
# 5 is the most likely of these three rates

dev_help('hpp.mean.event.times')
rate <- 10
hpp.mean.event.times(rate, 50)

dev_help('hpp.mean')
hpp.mean(rate = 20, t1 = 5, maximum = 50)

dev_help('hpp.mle')
X = c(0.17, 0.39, 0.63, 0.78, 0.99)
hpp.mle(X, T1=1)

dev_help('hpp.plot')
hpp.plot(rate = 5, num.events = 20, num.sims = 100, main='My simulated HPPs')

dev_help('hpp.scenario')
scen = hpp.scenario(rate = 5, num.events = 20, num.sims = 100)
plot(scen)

dev_help('hpp.sim.Rd')
rate <- 10
target = 50
hpp.sim(rate,target)

dev_help('nhpp.event.times.Rd')
rate <- 10
target <- 50
intensity <- function(t) pmin(t/3, 1)
nhpp.event.times(rate, target, intensity)

dev_help('nhpp.lik')
intensity <- function(t) pmin(t/3, 1)
X = c(0.74, 1.50, 1.67, 2.01, 2.27)
nhpp.lik(X, T1 = 2.3, rate = 5, prob.func = intensity)
nhpp.lik(X, T1 = 2.3, rate = 6, prob.func = intensity)
nhpp.lik(X, T1 = 2.3, rate = 7, prob.func = intensity)
# 6 is the most likely of these three rates

dev_help('nhpp.mean.event.times')
intensity <- function(t) pmin(t/3, 1)
rate <- 10
nhpp.mean.event.times(rate, 50, prob.func = intensity)

dev_help("nhpp.mean")
intensity <- function(t) pmin(t/3, 1)
nhpp.mean(rate = 20, t1 = 5, maximum = 50, prob.func=intensity)

dev_help("nhpp.mle")
intensity <- function(t) pmin(t/3, 1)
X = c(0.74, 1.50, 1.67, 2.01, 2.27)
nhpp.mle(X, T1=1, prob.func=intensity, max.val = 70)

dev_help("nhpp.plot.Rd")
intensity <- function(t) pmin(t/3, 1)
nhpp.plot(rate = 5, num.events = 20, num.sims = 100, main='My simulated NHPPs',
          prob.func=intensity)

dev_help("nhpp.scenario")
intensity <- function(t) pmin(t/3, 1)
rate <- 10
num.events <- 100
scen = nhpp.scenario(rate, num.events, num.sims = 100, prob.func=intensity)
scen@x.bar
plot(scen, main='My NHPP Scenario')

dev_help("nhpp.sim.Rd")
intensity <- function(t) pmin(t/3, 1)
rate <- 10
num.events <- 100
nhpp.sim(rate, num.events, prob.func=intensity)

dev_help("nhpp.sim.slow.Rd")
intensity <- function(t) pmin(t/3, 1)
rate <- 10
num.events <- 100
nhpp.sim.slow(rate, num.events, prob.func=intensity)

dev_help("plot-methods")
scen = hpp.scenario(rate = 5, num.events = 20, num.sims = 100)
scen@x.bar
plot(scen, main='My HPP Scenario')

dev_help("plotprocesses.Rd")
scen = hpp.scenario(rate = 5, num.events = 20, num.sims = 100)
plotprocesses(scen@x, main='My HPP paths')

dev_help("poisson-package")
# no demo code.

dev_help("PoissonProcessScenario-class")
# no demo code, it's in hpp.scenario and nhpp.scenario

dev_help("show-methods")
scen = hpp.scenario(rate = 5, num.events = 20, num.sims = 100)
show(scen)

load_all('poisson')



# Check
check_doc('poisson/man/hpp.lik')
check_doc('poisson/man/plotprocesses')
check('poisson')
