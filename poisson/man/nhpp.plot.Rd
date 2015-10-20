\name{nhpp.plot}
\alias{nhpp.plot}
\alias{plot.processes}
\alias{nhhp.sim}
\alias{nhhp.mean}
\title{Plot simulated non-homogeneous Poisson processes}
\description{Plot num.events simulated non-homogeneous Poisson processes, plus
the mean and quantiles}
\usage{nhpp.plot(rate, num.events, prob.func, num.sims = 100, t0 = 0, t1 = NULL, num.points = 100, quantiles = c(0.025, 0.975), ...)}
\arguments{
  \item{rate}{the rate at which events occur in the Poisson process, aka lambda}
  \item{num.events}{the number of event times to simulate in each process}
  \item{prob.func}{function that takes time as sole argument and returns value between 0 and 1}
  \item{num.sims}{number of simulated paths to plot}
  \item{t0}{start time}
  \item{t1}{end time}
  \item{num.points}{number of points to use in estimating mean and quantile processes}
  \item{quantiles}{plot these quantile processes}
\item{\dots}{further arguments to be passed to or from methods
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\author{
Kristian Brock - Author, Daniel Slade - Contributor
}
\examples{
%%%%%%%%%%%%%}
\keyword{poisson}
