\name{plot-methods}
\docType{methods}
\alias{plot-methods}
\alias{plot,PoissonProcessScenario-method}
\title{\code{plot}}
\usage{\S4method{plot}{PoissonProcessScenario}(x, plot.mean, plot.quantiles, ...)}
\arguments{
  \item{x}{The \code{\linkS4class{PoissonProcessScenario}} object to plot}
  \item{plot.mean}{TRUE to plot the mean process}
  \item{plot.quantiles}{TRUE to plot the quantile processes}
  \item{...}{Additional arguments affecting the plot}
}
\description{
A simulated scenario can be visualised with a plot. Included are process paths, the mean process and quartile processes.
}
\examples{
scen = hpp.scenario(rate = 5, num.events = 20, num.sims = 100)
scen@x.bar
plot(scen, main='My HPP Scenario')
}
\keyword{methods}
\keyword{plot}
