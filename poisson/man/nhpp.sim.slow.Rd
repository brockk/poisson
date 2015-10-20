\name{nhpp.sim.slow}
\alias{nhpp.sim.slow}
\title{Simulate a non-homogeneous Poisson process.}
\description{Get the n consecutive event times of a non-homogeneous poisson process.Events are simulated using an homogeneous process with rate, and an event at time t is admitted with probability prob.func(t).}
\usage{nhpp.sim.slow(rate, num.events, prob.func, num.sims = 1, t0 = 0, prepend.t0 = T)}
\arguments{
  \item{rate}{the rate at which events occur in the equivalent homogeneous Poisson process, aka lambda}
  \item{num.events}{number of event times to simulate in each process}
  \item{prob.func}{aka intensity function, function that takes time as sole argument and returns value between 0 and 1}
  \item{num.sims}{number of simulated paths to create}
  \item{t0}{the reference start time of all events}
  \item{prepend.t0}{T to include t0 at the start of the process}
}
\details{This method is called 'thinning' by Lewis & Shedler (1978)}
\value{a numeric vector of length num.events if num.sims=1 else, a num.events by num.sims matrix}
\references{Lewis & Shedler, Simulation of Non-Homogeneous Poisson Processes by Thinning, 1978}
\author{Kristian Brock - Author, Daniel Slade - Contributor}
\seealso{hpp.sim, nhpp.sim}
\examples{
intensity <- function(t) pmin(t/3, 1)
rate<-10
num.events<-100
nhpp.sim.slow(rate, num.events, prob.func=intensity)
}
\keyword{poisson}
\keyword{nhhp}
\keyword{sim}
