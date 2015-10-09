\name{hpp.plot}
\alias{hpp.plot}
\alias{plot.processes}
\title{Plot simulated homogeneous Poisson processes}
\description{Plot simulated homogeneous Poisson processes, also returning the mean and quantiles}
\usage{hpp.plot(rate, num.events, num.sims = 100, t0 = 0, t1 = NULL, num.points = 100, quantiles = c(0.025, 0.975), ...)}
\arguments{
  \item{rate}{The rate at which events occur in the Poisson process, aka lambda}
  \item{num.events}{Number of event times to simulate in each process}
  \item{num.sims}{Number of simulated paths to plot}
  \item{t0}{Start time}
  \item{t1}{End time}
  \item{num.points}{Number of points to use in estimating mean and quantile processes}
  \item{quantiles}{plot these quantile processes}
  \item{\dots}{further arguments to be passed to or from methods}
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\author{
%%  ~~who you are~~
}
\examples{

}
\keyword{poisson}
