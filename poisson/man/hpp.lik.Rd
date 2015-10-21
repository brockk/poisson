\name{hpp.lik}
\alias{hpp.lik}
\title{Homogeneous Poisson process likelihood}
\description{Get the likelihood of a rate parameter at a specific time for observed HPP event times.}
\usage{hpp.lik(x, T1, rate)}
\arguments{
  \item{x}{a vector of HPP event times}
  \item{T1}{Calculate likelihood at this time}
  \item{rate}{the putative HPP event rate}
  }
\value{Returns a numerical value for the likelihood.}
\author{Kristian Brock - Author, Daniel Slade - Contributor}
\examples{
X = c(0.17, 0.39, 0.63, 0.78, 0.99)
hpp.lik(X, T1 = 1, rate = 4)
hpp.lik(X, T1 = 1, rate = 5)
hpp.lik(X, T1 = 1, rate = 6)
# 5 is the most likely of these three rates
}
\keyword{poisson}
\keyword{likelihood}
\keyword{HPP}
\seealso{\code{\link{hpp.mle}}, \code{\link{nhpp.lik}}}
