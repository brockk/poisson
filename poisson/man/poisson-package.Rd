\name{poisson-package}
\alias{poisson-package}
\alias{poisson}
\docType{package}
\title{Simulating Homogenous & Non-Homogenous Poisson Processes}
\description{This package contains a functions and classes for simulating, plotting and analysing homogenous and non-homogenous Poisson processes.}
\details{
\tabular{ll}{
Package: \tab poisson\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-10-01\cr
License: \tab GPL-2\cr
}
The original motivation for this package was modelling recruitment to clinical trials.
The gap between patients registering is random.
There were examples where we expected that gap to be the same, on average, throughout the trial and for this problem, we simulated patient arrival times as homogeneous Poisson processes.
In multi-centre trials, however, we expected that gap to be large at the start of the trial but get smaller as more recruitment centres opened.
This scenario required non-homogeneous Poisson processes.
Though this package appeared through a medical statistics application, the ability to simulate and analyse Poisson processes is helpful in lots of fields.

The most useful methods are those that simulate scenarios. 
A scenario consists of many simulated processes, a mean process, and quantile processes.
The mean process shows the average number of events through time, i.e. the most likely process path.
The simulated paths and the quantile processes inform the analyst about the level of variance about this mean, allowing inference on best and worst outcomes, as well as the most likely outcome.

Imagine a scenario where we expect 5 events per unit of time, on average, and don't expect that average to change.
We want to analyse the distribution of paths and hitting times of observing 20 events.
To simulate and view the scenario, run:

\code{scen = hpp.scenario(rate = 5, num.events = 20, num.sims = 100)}

\code{plot(scen, main='My HPP Scenario')}

The mean process values are in \code{scen@x.bar} and the quantile processes are in \code{scen@x.q}.

In contrast, let us now assume that the rate of events will be time-varying.
Say we expect the event intensity to start at zero and increase linearly to 100\% after three units of time.
When event intensity is at 100\%, we expect 10 events per unit time.
To simulate this scenario, we run:

\code{intensity <- function(t) pmin(t/3, 1)}

\code{rate <- 10}

\code{num.events <- 100}

\code{scen = nhpp.scenario(rate, num.events, num.sims = 100, prob.func=intensity)}

\code{plot(scen, main='My NHPP Scenario')}
}
\author{Kristian Brock [aut], Daniel Slade [ctb]

Maintainer: Daniel Slade <sladeD@bham.ac.uk>
}

