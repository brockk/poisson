\name{plot.processes}
\alias{plot.processes}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
plot.processes(x, y = NULL, xlab = "t (years)", ylab = "N", type = "l", lty = 2, col = "cadetblue3", xlim = c(0, 1.1 * max(x)), lwd = 0.5, add = F, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
  \item{y}{
%%     ~~Describe \code{y} here~~
}
  \item{xlab}{
%%     ~~Describe \code{xlab} here~~
}
  \item{ylab}{
%%     ~~Describe \code{ylab} here~~
}
  \item{type}{
%%     ~~Describe \code{type} here~~
}
  \item{lty}{
%%     ~~Describe \code{lty} here~~
}
  \item{col}{
%%     ~~Describe \code{col} here~~
}
  \item{xlim}{
%%     ~~Describe \code{xlim} here~~
}
  \item{lwd}{
%%     ~~Describe \code{lwd} here~~
}
  \item{add}{
%%     ~~Describe \code{add} here~~
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
function (x, y = NULL, xlab = "t (years)", ylab = "N", type = "l", 
    lty = 2, col = "cadetblue3", xlim = c(0, 1.1 * max(x)), lwd = 0.5, 
    add = F, ...) 
{
    if (is.null(y)) 
        y = 0:(dim(x)[1] - 1)
    matplot(x, y, xlab = xlab, ylab = ylab, type = type, lty = lty, 
        col = col, xlim = xlim, lwd = lwd, add = add, ...)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
