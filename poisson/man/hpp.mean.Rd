\name{hpp.mean}
\alias{hpp.mean}
\title{Expected value of an homogeneous Poisson process.}
\description{Calculate the expected value of an homogeneous Poisson process at regular points in time.}
\usage{hpp.mean(rate, t0 = 0, t1 = 1, num.points = 100, maximum = NULL)}
\arguments{
  \item{rate}{The rate at which events occur in the Poisson process, aka lambda}
  \item{t0}{Start time}
  \item{t1}{End time}
  \item{num.points}{Number of points to use between t0 and t1 in calulating the mean}
  \item{maximum}{The optional maximum value that the process should take}
}
\value{A numeric vector of length num.points}
\author{Kristian Brock - Author, Daniel Slade - Contributor}
\examples{
hpp.mean(rate = 20, t1 = 5, maximum = 50)
}
\keyword{poisson}
\keyword{HPP}
\seealso{\code{\link{hpp.scenario}}, \code{\link{nhpp.mean}}}