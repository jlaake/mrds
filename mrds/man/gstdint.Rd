\name{gstdint}
\alias{gstdint}
\title{Integral of pdf of distances}
\usage{
gstdint(x, ddfobj, index = NULL, select = NULL, width, standardize = TRUE,
  point = FALSE, stdint = TRUE)
}
\arguments{
  \item{x}{lower,upper value for integration}

  \item{ddfobj}{distance detection function specification}

  \item{index}{specific data row index}

  \item{select}{logical vector for selection of data
  values}

  \item{width}{truncation width}

  \item{standardize}{logical used to decide whether to
  divide through by the function evaluated at 0}

  \item{point}{logical to determine if point count(TRUE) or
  line transect(FALSE)}

  \item{stdint}{if TRUE, scale=1 otherwise specified scale
  used}
}
\value{
vector of integral values of detection function
}
\description{
Computes the integral of distpdf with scale=1 (stdint=TRUE)
or specified scale (stdint=FALSE)
}
\note{
This is an internal function that is not intended to be
invoked directly.
}
\author{
Jeff Laake
}
\seealso{
\code{\link{tablecgf}}
}
\keyword{utility}

