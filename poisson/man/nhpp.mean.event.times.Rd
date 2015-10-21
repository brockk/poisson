\name{nhpp.mean.event.times}
\alias{nhpp.mean.event.times}
\title{Expected event times of a non-homogeneous Poisson process.}
\description{Calculate the expected event times of a non-homogeneous Poisson process.}
\usage{nhpp.mean.event.times(rate, num.events, prob.func, max.time = 1000)}
\arguments{
  \item{rate}{The rate at which events occur in the Poisson process, aka lambda}
  \item{num.events}{Observe mean event times at this many points}
  \item{prob.func}{aka intensity function, function that takes time as sole argument and returns value between 0 and 1}
  \item{max.time}{}
}
\value{A vector of length num.events giving the expected times}
\author{Kristian Brock - Author, Daniel Slade - Contributor}
\examples{
intensity <- function(t) pmin(t/3, 1)
rate <- 10
nhpp.mean.event.times(rate, 50, prob.func = intensity)
}
\keyword{poisson}
\keyword{NHPP}
\seealso{\code{\link{nhpp.event.times}}, \code{\link{nhpp.scenario}}, \code{\link{hpp.mean.event.times}}}