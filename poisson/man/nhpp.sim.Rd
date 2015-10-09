\name{nhpp.sim}
\alias{nhpp.sim}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
nhpp.sim(rate, num.events, prob.func, num.sims = 1, t0 = 0, prepend.t0 = T)
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
  \item{prepend.t0}{
%%     ~~Describe \code{prepend.t0} here~~
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
function (rate, num.events, prob.func, num.sims = 1, t0 = 0, 
    prepend.t0 = T) 
{
    if (num.sims == 1) {
        x = nhpp.event.times(rate, num.events, prob.func = prob.func, 
            num.sims = 1, t0 = t0)
        if (prepend.t0) 
            return(c(t0, x))
        else return(x)
    }
    else {
        x = nhpp.event.times(rate, num.events, prob.func = prob.func, 
            num.sims = num.sims, t0 = t0)
        if (prepend.t0) 
            return(rbind(rep(t0, num.sims), x))
        else return(x)
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
