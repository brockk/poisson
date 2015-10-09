\name{nhpp.event.times}
\alias{nhpp.event.times}
\alias{hpp.event.times}
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
nhpp.event.times(rate, num.events, prob.func, num.sims = 1, t0 = 0)
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
function (rate, num.events, prob.func, num.sims = 1, t0 = 0) 
{
    n <- num.events
    if (n <= 0) 
        return(c())
    if (num.sims == 1) {
        times = hpp.event.times(rate, 2 * n, t0 = t0)
        prob.accept = prob.func(times)
        rands = runif(2 * n)
        accept = rands < prob.accept
        if (sum(accept) >= n) {
            returnable = times[accept][1:n]
            return(returnable)
        }
        else {
            extra = hpp.event.times(rate, n - sum(accept), num.sims = 1, 
                t0 = max(times))
            returnable = c(times[accept], extra)
            return(returnable)
        }
    }
    else {
        f = function(x) nhpp.event.times(rate, num.events, prob.func, 
            num.sims = 1, t0 = t0)
        return(sapply(1:num.sims, f))
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
