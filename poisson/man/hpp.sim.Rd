\name{hpp.sim}
\alias{hpp.sim}
\alias{hpp.event.times}
\title{Simulate homogeneous Poisson process(es).}
\description{Get the n consecutive event times of an homogeneous poisson process with given rate.
Note: the rate parameter is often referred to as lambda.}
\usage{hpp.sim(rate, num.events, num.sims = 1, t0 = 0, prepend.t0 = T)}
\arguments{
  \item{rate}{The rate at which events occur in the Poisson process, aka lambda}
  \item{num.events}{Number of event times to simulate in each process}
  \item{num.sims}{Number of simulated paths to create}
  \item{t0}{Start time}
  \item{prepend.t0}{TRUE: To include t0 at the start of the process, FALSE: Not include to at the start of the process.}
}
\value{A numeric vector of length num.events if num.sims=1,
 else, a num.events x num.sims matrix [num.events+1 if prepend.zero=T]}
\author{Kristian Brock - Author, Daniel Slade - Contributor}
\examples{
rate <- 10
target = 50
hpp.sim(rate,target)}
\keyword{poisson}