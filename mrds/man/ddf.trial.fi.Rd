\name{ddf.trial.fi}
\alias{ddf.trial.fi}
\title{Mark-Recapture Analysis of Trial Configuration - FI}
\usage{
ddf.trial.fi(model, data, meta.data = list(), control = list(), call = "",
  method)
}
\arguments{
  \item{model}{mark-recapture model specification}

  \item{data}{analysis dataframe}

  \item{meta.data}{list containing settings controlling
  data structure}

  \item{control}{list containing settings controlling model
  fitting}

  \item{call}{original function call used to call
  \code{ddf}}

  \item{method}{analysis method; only needed if this
  function called from \code{ddf.trial}}
}
\value{
result: a trial.fi model object
}
\description{
Mark-Recapture Analysis of Trial Observer Configuration
with Full Independence
}
\details{
The mark-recapture data derived from a trial observer
distance sampling survey can be used to derive a
conditional detection function (p_1(y)) for observer 1
based on trials (observations) from observer 2. It is a
conditional detection function because detection
probability for observer 1 is based on seeing or not seeing
observations made by observer 2. Thus, p_1(y) is estimated
by p_1|2(y).  If detections by the observers are
independent (full independence) then p_1(y)=p_1|2(y) for
each distance y. In fitting the detection functions the
likelihood given by eq 6.12 or 6.17 in Laake and Borchers
(2004) is used. That analysis does not require the usual
distance sampling assumption that perpendicular distances
are uniformly distributed based on line placement that is
random relative to animal distribution.  However, that
assumption is used in computing predicted detection
probability which is averaged based on a uniform
distribution (see eq 6.13 of Laake and Borchers 2004).

For a complete description of each of the calling
arguments, see \code{\link{ddf}}.  The argument
\code{model} in this function is the same as \code{mrmodel}
in \code{ddf}.  The argument \code{dataname} is the name of
the dataframe specified by the argument \code{data} in
\code{ddf}. The arguments
\code{control},\code{meta.data},and \code{method} are
defined the same as in \code{ddf}.
}
\author{
Jeff Laake
}
\references{
Laake, J.L. and D.L. Borchers. 2004. Methods for incomplete
detection at distance zero. In: Advanced Distance Sampling,
eds. S.T.  Buckland, D.R.Anderson, K.P. Burnham, J.L.
Laake, D.L. Borchers, and L.  Thomas. Oxford University
Press.
}
\seealso{
\code{\link{ddf.trial}},\code{\link{summary.trial.fi}},\code{\link{coef.trial.fi}},\code{\link{plot.trial.fi}},
\code{\link{gof.trial.fi}}
}
\keyword{Models}
\keyword{Statistical}

