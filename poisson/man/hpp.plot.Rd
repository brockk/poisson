\name{hpp.plot}
\alias{hpp.plot}
\title{Plot simulated homogeneous Poisson processes}
\description{Simulate and plot simulated homogeneous Poisson processes, also returning the mean and quantile processes.}
\usage{hpp.plot(rate, num.events, num.sims = 100, t0 = 0, t1 = NULL, 
            num.points = 100, quantiles = c(0.025, 0.975), ...)}
\arguments{
  \item{rate}{The rate at which events occur in the Poisson process, aka lambda}
  \item{num.events}{Number of event times to simulate in each process}
  \item{num.sims}{Number of simulated paths to plot}
  \item{t0}{Start time}
  \item{t1}{End time}
  \item{num.points}{Number of points to use in estimating mean and quantile processes}
  \item{quantiles}{plot these quantile processes}
  \item{\dots}{further arguments to be passed to methods}
}
\value{list
\item{x}{Matrix of event times, one process per column}
\item{x.bar}{Vector of mean process event times}
\item{x.q}{Matrix of quantile event times, one process per column}
}
\author{Kristian Brock - Author, Daniel Slade - Contributor}
\examples{
hpp.plot(rate = 5, num.events = 20, num.sims = 100, main='My simulated HPPs')
}
\keyword{poisson}
\keyword{HPP}
\seealso{\code{\link{hpp.scenario}}, \code{\link{nhpp.plot}}}