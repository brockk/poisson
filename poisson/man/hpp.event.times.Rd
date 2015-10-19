\name{hpp.event.times}
\alias{hpp.event.times}
\title{Simulate homogeneous Poisson process event times.}
\description{Get the n consecutive event times of a homogeneous poisson process with given rate.
Note: the rate parameter is often referred to as lambda.}
\usage{hpp.event.times(rate, num.events, num.sims = 1, t0 = 0)}
\arguments{
  \item{rate}{The rate at which events occur in the Poisson process, aka lambda}
  \item{num.events}{Number of event times to simulate in each process}
  \item{num.sims}{Number of simulated paths to create}
  \item{t0}{start time}
}
\value{A numeric vector of length num.events if num.sims=1, 
else, a num.events by num.sims matrix }
\author{Kristian Brock - Author, Daniel Slade - Contributor}
\examples{
rate <- 10
target <- 50
hpp.event.times(rate, target)
}
\keyword{poisson}
