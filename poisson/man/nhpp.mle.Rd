\name{nhpp.mle}
\alias{nhpp.mle}
\title{Get the maximum-likelihood rate parameter of an NHPP (non-homogenous Poisson process)}
\description{Get the maximum-likelihood rate parameter for given NHPP event times.}
\usage{nhpp.mle(x, T1, prob.func, max.val)}
\arguments{
  \item{x}{a vector of NHPP event times}
  \item{T1}{calculate MLE at this time}
  \item{prob.func}{function that takes time as sole argument and returns value between 0 and 1 }
  \item{max.val}{maximum value to consider for MLE of NHPP rate parameter}}
\value{Returns a numeric value, the maximum-likelihood rate parameter}
\author{Kristian Brock - Author, Daniel Slade - Contributor}
\examples{
intensity <- function(t) pmin(t/3, 1)
X = c(0.74, 1.50, 1.67, 2.01, 2.27)
nhpp.mle(X, T1=1, prob.func=intensity, max.val = 70)
}
\keyword{poisson}
\keyword{maximum likelihood}
\keyword{MLE}
\keyword{NHPP}
\seealso{\code{\link{nhpp.lik}}, \code{\link{hpp.mle}}}