\name{hpp.mean.event.times}
\alias{hpp.mean.event.times}
\title{Expected event times of a non-homogeneous Poisson process.}
\description{Calculate the expected event times of a non-homogeneous Poisson process.}
\usage{hpp.mean.event.times(rate, num.events)}
\arguments{
  \item{rate}{The rate at which events occur in the Poisson process, aka lambda}
  \item{num.events}{Number of event times to simulate in each process}
}
\value{A vector of length num.events giving the expected times}
\author{Kristian Brock - Author, Daniel Slade - Contributor}
\examples{
rate<-10
hpp.mean.event.times(rate,50)
}
\keyword{poisson}

