\name{coef.ds}
\alias{coef.ds}
\alias{coef.io}
\alias{coef.io.fi}
\alias{coef.rem}
\alias{coef.rem.fi}
\alias{coef.trial}
\alias{coef.trial.fi}
\alias{coefficients}
\title{Extract coefficients}
\usage{
\\method{coef}{ds}(object,...)
       \\method{coef}{io}(object,...)
       \\method{coef}{io.fi}(object,...)
       \\method{coef}{trial}(object,...)
       \\method{coef}{trial.fi}(object,...)
       \\method{coef}{rem}(object,...)
       \\method{coef}{rem.fi}(object,...)
}
\arguments{
  \item{object}{ddf model object of class "ds", "io",
  "io.fi", "trial", "trial.fi", "rem", or "rem.fi"}

  \item{\dots}{unspecified arguments that are unused at
  present}
}
\value{
For \code{coef.ds} List of data frames for coefficients
(scale and exponent (if hazard)) \item{scale}{dataframe of
scale coefficent estimates and standard errors}
\item{exponent}{dataframe with exponent estimate and
standard error if hazard detection function}

For all others Data frame containing each coefficient and
standard error
}
\description{
Extract coefficients and provide a summary of parameters
and estimates from the output of \code{\link{ddf}} model
objects.
}
\note{
These functions are called by the generic function
\code{coef} for any \code{ddf} model object.  It can be
called directly by the user, but it is typically safest to
use \code{coef} which calls the appropriate function based
on the type of model.
}
\author{
Jeff Laake;
}

