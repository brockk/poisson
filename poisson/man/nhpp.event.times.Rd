\name{nhpp.event.times}
\alias{nhpp.event.times}
\alias{hpp.event.times}
\title{
Simulate non-homogeneous Poisson process event times.
}
\description{
Get the n consecutive event times of a non-homogeneous poisson process.
Events are simulated using an homogeneous process with rate, and an event at time t is admitted with probability prob.func(t).
}
\usage{
nhpp.event.times(rate, num.events, prob.func, num.sims = 1, t0 = 0)
}
\arguments{
  \item{rate}{
the rate at which events occur in the equivalent homogeneous Poisson process, aka lambda
}
  \item{num.events}{number of event times to simulate in each process
}
  \item{prob.func}{function that takes time as sole argument and returns value between 0 and 1
}
  \item{num.sims}{number of simulated paths to create
}
  \item{t0}{the reference start time of all events
}
}
\details{
This method, called 'thinning' by Lewis & Shedler (1978) is described in Simulation of Non-Homogeneous Poisson Processes by Thinning. The rate parameter of an homogeneous process is often called lambda.
}
\value{
A numeric vector of length num.events if num.sims=1, else, a num.events * num.sims matrix
}
\author{
Kristian Brock - Author, Daniel Slade - Contributor
}
\examples{
%%%%%%%%%%%%%%%%
}
\keyword{poisson}
