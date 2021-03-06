\name{assign.default.values}
\alias{assign.default.values}
\title{Assign default values to list elements that have not been already assigned}
\usage{
assign.default.values(x, ...)
}
\arguments{
  \item{x}{generic list}

  \item{\dots}{unspecified list of argument=value pairs
  that are used to assign values}
}
\value{
x - list with filled values
}
\description{
Assigns default values for \code{argument} in list \code{x}
from \code{argument=value} pairs in \dots{} if
\code{x$argument} doesn't already exist
}
\author{
Jeff Laake
}
\keyword{~utility}

