\name{hpp.mle}
\alias{hpp.mle}
\title{Get the maximum-likelihood rate parameter of an HPP (homogenous Poisson process)}
\description{Get the maximum-likelihood rate parameter for given HPP event times.}
\usage{hpp.mle(x, T1)}
\arguments{
  \item{x}{a vector of HPP event times}
  \item{T1}{Calculate MLE at this time}
}
\value{Returns a numeric value, the maximum-likelihood rate parameter}
\author{Kristian Brock - Author, Daniel Slade - Contributor}
\examples{
X = c(0.17, 0.39, 0.63, 0.78, 0.99)
hpp.mle(X, T1=1)
}
\keyword{poisson}
\keyword{maximum likelihood}
\keyword{MLE}
\keyword{HPP}
\seealso{\code{\link{hpp.lik}}, \code{\link{nhpp.mle}}}