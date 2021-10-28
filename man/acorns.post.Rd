\name{acorns.post}
\alias{acorns.post}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
acorns.post(action, args = list(), file = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{action}{
%%     ~~Describe \code{action} here~~
}
  \item{args}{
%%     ~~Describe \code{args} here~~
}
  \item{file}{
%%     ~~Describe \code{file} here~~
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
function (action, args = list(), file = NULL) 
{
    api <- Sys.getenv("acorns_url")
    url <- sprintf("\%s/api/\%s", api, action)
    if (!is.null(file)) {
        args[["file"]] = upload_file(file)
    }
    res <- POST(url, body = args, set_cookies(acorns_token = Sys.getenv("acorns_token")))
    res <- acornsResponseHandler(res)
    return(res)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
