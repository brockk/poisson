\name{show-methods}
\docType{methods}
\alias{show-methods}
\alias{show, PoissonProcessScenario-method}
\title{\code{show}}

\usage{\S4method{show}{PoissonProcessScenario}(x)}
\arguments{
  \item{x}{The \code{\linkS4class{PoissonProcessScenario}} object to plot}
}
\description{
A simulated scenario can be examined with a show.
}
\examples{
scen = hpp.scenario(rate = 5, num.events = 20, num.sims = 100)
show(scen)
}
\keyword{methods}
\keyword{show}
