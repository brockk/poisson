\name{nhpp.event.times}
\alias{nhpp.event.times}
\title{Simulate non-homogeneous Poisson process event times}
\description{Randomly simulate the num.events consecutive event times of a non-homogeneous poisson process.
Events are simulated using an underlying homogeneous process with given rate. 
An event at time t is admitted with probability prob.func(t).
Note: The rate parameter of an homogeneous process is often called lambda.}
\usage{nhpp.event.times(rate, num.events, prob.func, num.sims = 1, t0 = 0)}
\arguments{
  \item{rate}{the rate at which events occur in the equivalent homogeneous Poisson process, aka lambda}
  \item{num.events}{number of event times to simulate in each process}
  \item{prob.func}{aka intensity function, function that takes time as sole argument and returns value between 0 and 1}
  \item{num.sims}{number of simulated paths to create}
  \item{t0}{the reference start time of all events}
}
\details{This method is called 'thinning' by Lewis & Shedler (1978). }
\value{A numeric vector of length num.events if num.sims=1, 
else, a num.events by num.sims matrix }
\references{Lewis & Shedler, Simulation of Non-Homogeneous Poisson Processes by Thinning, 1978}
\author{Kristian Brock - Author, Daniel Slade - Contributor}
\examples{
rate <- 10
target <- 50
intensity <- function(t) pmin(t/3, 1)
nhpp.event.times(rate, target, intensity)
}
\keyword{poisson}
\keyword{NHPP}
\keyword{simulation}
\seealso{\code{\link{nhpp.mean.event.times}}, \code{\link{nhpp.scenario}}, \code{\link{hpp.event.times}}}