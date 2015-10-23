\name{plotprocesses}
\alias{plotprocesses}
\title{Plot simulated process paths}
\description{Plot a matrix of simulated process paths}
\usage{plotprocesses(x, y = NULL, xlab = "t (years)", ylab = "N", type = "l", lty = 2, col = "cadetblue3", 
                xlim = c(0, 1.1 * max(x)), lwd = 0.5, add = F, ...)}
\arguments{
  \item{x}{matrix of process paths}
  \item{y}{variable for y axis, index of x if NULL}
  \item{xlab}{Label for x-axis}
  \item{ylab}{Label for y-axis}
  \item{type}{Type of plot for simulated processes paths}
  \item{lty}{Line type for simulated processes paths}
  \item{col}{Colour for simulated processes paths}
  \item{xlim}{The range for the x-axis}
  \item{lwd}{Line-width for simulated processes paths}
  \item{add}{TRUE to add to existing plot; FALSE to start afresh}
  \item{...}{Additional arguments affecting the plot}
}
\author{Kristian Brock - Author, Daniel Slade - Contributor}
\examples{
scen = hpp.scenario(rate = 5, num.events = 20, num.sims = 100)
plotprocesses(scen@x, main='My HPP paths')
}
\keyword{poisson}