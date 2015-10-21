\name{nhpp.scenario}
\alias{nhpp.scenario}
\title{Simulate a non-homogeneous Poisson process scenario}
\description{Simulate a non-homogeneous Poisson process scenario, with sample paths, expected value process, and quantile processes.}
\usage{
nhpp.scenario(rate, num.events, prob.func, num.sims = 100, t0 = 0, t1 = NULL, 
              num.points = 100, quantiles = c(0.025, 0.975), ...)
}
\arguments{
  \item{rate}{the rate at which events occur in the equivalent homogeneous Poisson process, aka lambda}
  \item{num.events}{Number of event times to simulate in each process}
  \item{prob.func}{aka intensity function, function that takes time as sole argument and returns value between 0 and 1}
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
rate <- 10
num.events <- 100
scen = nhpp.scenario(rate, num.events, num.sims = 100, prob.func=intensity)
scen@x.bar
plot(scen, main='My NHPP Scenario')
}
\keyword{poisson}
\keyword{NHPP}
\keyword{simulation}
\seealso{\code{\link{hpp.scenario}}, \code{\linkS4class{PoissonProcessScenario}}}