\name{nhpp.mean}
\alias{nhpp.mean}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
nhpp.mean(rate, prob.func, t0 = 0, t1 = 1, num.points = 100, maximum = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{rate}{
%%     ~~Describe \code{rate} here~~
}
  \item{prob.func}{
%%     ~~Describe \code{prob.func} here~~
}
  \item{t0}{
%%     ~~Describe \code{t0} here~~
}
  \item{t1}{
%%     ~~Describe \code{t1} here~~
}
  \item{num.points}{
%%     ~~Describe \code{num.points} here~~
}
  \item{maximum}{
%%     ~~Describe \code{maximum} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (rate, prob.func, t0 = 0, t1 = 1, num.points = 100, 
    maximum = NULL) 
{
    f <- function(x) rate * prob.func(x)
    times = seq(t0, t1, length.out = num.points)
    y = sapply(times, function(x) integrate(f, lower = 0, upper = x)$value)
    if (is.null(maximum)) 
        return(y)
    else return(pmin(y, maximum))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
