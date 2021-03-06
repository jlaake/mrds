\name{gof.ds}
\alias{gof.ds}
\title{Compute chi-square goodness-of-fit test for ds models}
\usage{
gof.ds(model, breaks = NULL, nc = NULL)
}
\arguments{
  \item{model}{\code{ddf} model object}

  \item{breaks}{distance cut points}

  \item{nc}{number of distance classes}
}
\value{
list with chi-square value, df and p-value
}
\description{
Compute chi-square goodness-of-fit test for ds models
}
\author{
Jeff Laake
}
\seealso{
ddf.gof
}

