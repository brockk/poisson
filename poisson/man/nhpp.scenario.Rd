\name{nhpp.scenario}
\alias{nhpp.scenario}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
nhpp.scenario(rate, num.events, prob.func, num.sims = 100, t0 = 0, t1 = NULL, num.points = 100, quantiles = c(0.025, 0.975), ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{rate}{
%%     ~~Describe \code{rate} here~~
}
  \item{num.events}{
%%     ~~Describe \code{num.events} here~~
}
  \item{prob.func}{
%%     ~~Describe \code{prob.func} here~~
}
  \item{num.sims}{
%%     ~~Describe \code{num.sims} here~~
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
  \item{quantiles}{
%%     ~~Describe \code{quantiles} here~~
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
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
function (rate, num.events, prob.func, num.sims = 100, t0 = 0, 
    t1 = NULL, num.points = 100, quantiles = c(0.025, 0.975), 
    ...) 
{
    x = nhpp.sim(rate, num.events, prob.func, num.sims = num.sims, 
        t0 = t0, ...)
    if (is.null(t1)) 
        t1 = 1.1 * max(x)
    x.bar = nhpp.mean(rate, prob.func, t0 = t0, t1 = t1, num.points = num.points, 
        maximum = num.events)
    x.q = t(apply(x, 1, function(x) quantile(x, probs = quantiles)))
    return(new("PoissonProcessScenario", x = x, x.bar = x.bar, 
        x.bar.index = seq(t0, t1, length.out = num.points), x.q = x.q))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
