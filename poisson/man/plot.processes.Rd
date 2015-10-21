\name{plot.processes}
\alias{plot.processes}
\title{Plot simulated process paths}
\description{Plot a matrix of simulated process paths}
\usage{
plot.processes(x, y = NULL, xlab = "t (years)", ylab = "N", type = "l", lty = 2, col = "cadetblue3", xlim = c(0, 1.1 * max(x)), lwd = 0.5, add = F, ...)
}
\arguments{
  \item{x}{matrix of process paths}
  \item{...}{Additional arguments affecting the plot}
}
\author{Kristian Brock - Author, Daniel Slade - Contributor}
\seealso{}
\examples{
scen = hpp.scenario(rate = 5, num.events = 20, num.sims = 100)
plot.processes(scen@x, main='My HPP paths')
}
\keyword{poisson}
