\name{nhpp.lik}
\alias{nhpp.lik}
\title{Non-homogeneous Poisson process likelihood}
\description{Get the likelihood of a rate parameter at a specific time for observed NHPP event times and given intensity function.}
\usage{nhpp.lik(x, T1, rate, prob.func)}
\arguments{
  \item{x}{a vector of HPP event times}
  \item{T1}{Calculate likelihood at this time}
  \item{rate}{the putative HPP event rate}
  \item{prob.func}{aka intensity function, function that takes time as sole argument and returns value between 0 and 1}
}
\value{Returns a numerical value for the likelihood.}
\author{Kristian Brock - Author, Daniel Slade - Contributor}
\seealso{}
\examples{
intensity <- function(t) pmin(t/3, 1)
X = c(0.74, 1.50, 1.67, 2.01, 2.27)
nhpp.lik(X, T1 = 2.3, rate = 5, prob.func = intensity)
nhpp.lik(X, T1 = 2.3, rate = 6, prob.func = intensity)
nhpp.lik(X, T1 = 2.3, rate = 7, prob.func = intensity)
# 6 is the most likely of these three rates
}
\keyword{poisson}
\keyword{likelihood}
\keyword{NHPP}
