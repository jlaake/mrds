\name{predict.ds}
\alias{predict.ddf}
\alias{predict.ds}
\alias{predict.io}
\alias{predict.io.fi}
\alias{predict.rem}
\alias{predict.rem.fi}
\alias{predict.trial}
\alias{predict.trial.fi}
\title{Predictions from \code{mrds} models}
\usage{
\method{predict}{ds}(object, newdata = NULL, compute = FALSE,
  int.range = NULL, esw = FALSE, ...)

\method{predict}{io}(object, newdata = NULL, compute = FALSE,
  int.range = NULL, ...)

\method{predict}{io.fi}(object, newdata = NULL, compute = FALSE,
  int.range = NULL, integrate = FALSE, ...)

\method{predict}{rem}(object, newdata = NULL, compute = FALSE,
  int.range = NULL, ...)

\method{predict}{rem.fi}(object, newdata = NULL, compute = FALSE,
  int.range = NULL, integrate = FALSE, ...)

\method{predict}{trial}(object, newdata = NULL, compute = FALSE,
  int.range = NULL, ...)

\method{predict}{trial.fi}(object, newdata = NULL, compute = FALSE,
  int.range = NULL, integrate = FALSE, ...)
}
\arguments{
  \item{object}{\code{ddf} model object.}

  \item{newdata}{new \code{data.frame} for prediction.}

  \item{compute}{if \code{TRUE} compute values and don't
  use the fitted values stored in the model object.}

  \item{int.range}{integration range for variable range
  analysis; either vector or matrix.}

  \item{esw}{if \code{TRUE}, returns effective strip
  half-width (or effective detection radius for points)
  integral from 0 to the truncation distance (\code{width})
  of p(y)dy; otherwise it returns the integral from 0 to
  truncation width of p(y)*pi(y) where pi(y)=1/W for lines
  and pi(y)=2r/W^2 for points.}

  \item{integrate}{for \code{io.fi} methods, see Details
  below.}

  \item{\dots}{for S3 consistency}
}
\value{
For all but the exceptions below, the value is a list with
a single element: \tabular{ll}{ \code{fitted} \tab vector
of average detection probabilities or esw values for each
observation in the original data or \code{newdata} \cr }

For
\code{predict.io.fi},\code{predict.trial.fi},\code{predict.rem.fi}
with \code{integrate=TRUE}, the value is a list with the
elements: \tabular{ll}{\code{fitted} \tab vector of
integrated (average) detection probabilities for each
observation in the original data or \code{newdata} \cr }

For \code{predict.io.fi}, \code{predict.trial.fi}, or
\code{predict.rem.fi} with \code{integrate=FALSE}, the
value is a list with the following elements: \tabular{ll}{
\code{fitted} \tab p(y) values \cr \code{p1} \tab p_1|2(y)
(conditional detection probability for observer 1) \cr
\code{p2} \tab p_2|1(y) (conditional detection probability
for observer 2) \cr \code{fitted} \tab
p_.(y)=p_1|2(y)+p_2|1(y)-p_1|2(y)*p_2|1(y) (conditional
detection probability of being seen by either observer) \cr
}
}
\description{
Predict detection probabilities (or effective strip widths)
values from a fitted distance sampling model using either
the original data (i.e. "fitted" values) or using new data.
}
\details{
The first 4 arguments are the same in each predict
function.  The latter 2 are specific to certain functions.
The effective strip half-width (\code{esw}) is the integral
of the fitted detection function over either 0 to W or the
specified \code{int.range}.  The predicted detection
probability is the average probability which is simply the
integral divided by the distance range.

Fitted detection probabilities are stored in the
\code{model} object and these are returned unless
\code{compute=TRUE} or \code{newdata} is specified.

\code{compute=TRUE} is used to estimate numerical
derivatives for use in delta method approximations to the
variance.

For \code{method="io.fi"} or \code{method="trial.fi"} if
\code{integrate=FALSE}, \code{predict} returns the value of
the conditional conditional detection probability by
integrating over x (distance) with respect to a uniform
distribution.
}
\note{
Each function is called by the generic function
\code{predict} for the appropriate \code{ddf} model object.
They can be called directly by the user, but it is
typically safest to use \code{predict} which calls the
appropriate function based on the type of model.
}
\author{
Jeff Laake
}
\seealso{
\code{\link{ddf}}, \code{\link{summary.ds}},
\code{\link{plot.ds}}
}
\keyword{utility}

