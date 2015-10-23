\name{PoissonProcessScenario-class}
\Rdversion{1.1}
\docType{class}
\alias{PoissonProcessScenario-class}
\title{Class \code{"PoissonProcessScenario"}}
\description{
This class is the result of a Poisson process simulation scenario, yielded by methods like \code{\link{hpp.scenario}} and \code{\link{nhpp.scenario}}. The object has slots for the simulated random processes, the mean process, and quantile processes. It has specific implementations of plot and show.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("PoissonProcessScenario", ...)}, although they would more commonly be fetched from calls to \code{\link{hpp.scenario}} and \code{\link{nhpp.scenario}}.
}
\section{Slots}{
  \describe{
    \item{\code{x}:}{Object of class \code{"matrix"}, the simulated process paths}
    \item{\code{x.bar}:}{Object of class \code{"numeric"}, the mean process}
    \item{\code{x.bar.index}:}{Object of class \code{"numeric"}, the time variable of the mean process}
    \item{\code{x.q}:}{Object of class \code{"matrix"}, the quantile processes.}
  }
}
\section{Methods}{
  \describe{
    \item{plot}{\code{signature(x = "PoissonProcessScenario")}: ... }
    \item{show}{\code{signature(object = "PoissonProcessScenario")}: ... }
	 }
}
\author{Kristian Brock - Author, Daniel Slade - Contributor}
\seealso{\code{\link{hpp.scenario}}, \code{\link{nhpp.scenario}}}
\keyword{classes}
\keyword{poisson}
\keyword{HPP}
\keyword{NHPP}

