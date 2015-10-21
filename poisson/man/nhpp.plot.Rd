\name{nhpp.plot}
\alias{nhpp.plot}
\alias{plot.processes}
\alias{nhhp.mean}
\title{Plot simulated non-homogeneous Poisson processes}
\description{Plot num.events simulated non-homogeneous Poisson processes, plus
the mean and quantiles}
\usage{nhpp.plot(rate, num.events, prob.func, num.sims = 100, t0 = 0, t1 = NULL, num.points = 100, quantiles = c(0.025, 0.975), ...)}
\arguments{
  \item{rate}{the rate at which events occur in the Poisson process, aka lambda}
  \item{num.events}{the number of event times to simulate in each process}
  \item{prob.func}{function that takes time as sole argument and returns value between 0 and 1}
  \item{num.sims}{number of simulated paths to plot}
  \item{t0}{start time}
  \item{t1}{end time}
  \item{num.points}{number of points to use in estimating mean and quantile processes}
  \item{quantiles}{plot these quantile processes}
  \item{\dots}{further arguments to be passed to or from methods}}
\value{list
\item{x}{Matrix of event times, one process per column}
\item{x.bar}{Vector of mean process event times}
\item{x.q}{Matrix of quantile event times, one process per column}
}
\author{Kristian Brock - Author, Daniel Slade - Contributor}
\examples{
intensity <- function(t) pmin(t/3, 1)
nhpp.plot(rate = 5, num.events = 20, num.sims = 100, main='My simulated NHPPs',prob.func=intensity)
}
\keyword{poisson}
