\name{nhpp.scenario}
\alias{nhpp.scenario}
\title{Simulate a non-homogeneous Poisson process scenario}
\description{Simulate an homogeneous Poisson process scenario, with sample paths, expected value process, and quantile processes.}
\usage{
nhpp.scenario(rate, num.events, prob.func, num.sims = 100, t0 = 0, t1 = NULL, num.points = 100, quantiles = c(0.025, 0.975), ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{rate}{The rate at which events occur in the Poisson process, aka lambda}
  \item{num.events}{Number of event times to simulate in each process}
  \item{prob.func}{function that takes time as sole argument and returns value between 0 and 1}
  \item{num.sims}{Number of simulated paths to plot}
  \item{t0}{Start time}
  \item{t1}{End time}
  \item{num.points}{Number of points to use in estimating mean and quantile processes}
  \item{quantiles}{plot these quantile processes}
  \item{\dots}{further arguments to be passed to or from methods}
}
\value{Instance of PoissonProcessScenario}
\author{Kristian Brock - Author, Daniel Slade - Contributor}
\examples{
intensity <- function(t) pmin(t/3, 1)
scen = nhpp.scenario(rate = 5, num.events = 20, num.sims = 100, prob.func=intensity)
}
\keyword{poisson}
\keyword{scenario}
