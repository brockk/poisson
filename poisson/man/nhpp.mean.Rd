\name{nhpp.mean}
\alias{nhpp.mean}
\title{Expected value of a non-homogeneous Poisson process.}
\description{Calculate the expected value of a non-homogeneous Poisson process at points in time.}
\usage{nhpp.mean(rate, prob.func, t0 = 0, t1 = 1, num.points = 100, maximum = NULL)}
\arguments{
  \item{rate}{the rate at which events occur in the Poisson process, aka lambda}
  \item{prob.func}{function that takes time as sole argument and returns value between 0 and 1}
  \item{t0}{start time}
  \item{t1}{end time}
  \item{num.points}{number of points between t0 and t1 to use in estimating mean}
  \item{maximum}{the optional maximum value that the process should take}
}
\value{A numeric vector of length num.points}
\author{Kristian Brock - Author, Daniel Slade - Contributor}
\examples{
intensity <- function(t) pmin(t/3, 1)
nhpp.mean(rate = 20, t1 = 5, maximum = 50, prob.func=intensity)
}
\keyword{poisson}
\keyword{nhhp}
