\name{distpdf}
\alias{adjfct.cos}
\alias{adjfct.herm}
\alias{adjfct.poly}
\alias{detfct}
\alias{distpdf}
\alias{fr}
\alias{fx}
\alias{hermite.poly}
\alias{keyfct.gamma}
\alias{keyfct.hn}
\alias{keyfct.hz}
\alias{scalevalue}
\title{Detection functions}
\usage{
detfct(distance, ddfobj, select=NULL, index=NULL, width=NULL,
              standardize = TRUE, stdint=FALSE)

adjfct.cos(distance, scaling = 1, adj.order, adj.parm = NULL, adj.exp=FALSE)

adjfct.poly(distance, scaling = 1, adj.order, adj.parm = NULL, adj.exp=FALSE)

adjfct.herm(distance, scaling = 1, adj.order, adj.parm = NULL, adj.exp=FALSE)

scalevalue(key.scale, z)

keyfct.hn(distance, key.scale)

keyfct.hz(distance, key.scale, key.shape)

keyfct.gamma(distance, key.scale, key.shape)

fx(distance,ddfobj,select=NULL,index=NULL,width=NULL,standardize=TRUE,stdint=FALSE)

fr(distance,ddfobj,select=NULL,index=NULL,width=NULL,standardize=TRUE,stdint=FALSE)

distpdf(distance,ddfobj,select=NULL,index=NULL,width=NULL,standardize=TRUE,
           stdint=FALSE,point=FALSE)
}
\arguments{
  \item{distance}{vector of distances}

  \item{ddfobj}{distance sampling object (see
  \code{\link{create.ddfobj}})}

  \item{z}{design matrix for scale function}

  \item{select}{logical vector for selection of data
  values}

  \item{index}{specific data row index}

  \item{key.scale}{vector of scale values}

  \item{key.shape}{vector of shape values}

  \item{adj.order}{vector of adjustment orders}

  \item{adj.parm}{vector of adjustment parameters}

  \item{width}{truncation width}

  \item{standardize}{logical used to decide whether to
  divide through by the function evaluated at 0}

  \item{scaling}{the scaling for the adjustment terms}

  \item{stdint}{logical used to decide whether integral is
  standardized}

  \item{point}{if TRUE, point counts; otherwise line
  transects}

  \item{adj.exp}{if TRUE uses exp(adj) for adjustment to
  keep f(x)>0}
}
\value{
For \code{detfct}, the value is a vector of detection
probabilities for the input set of x and z. For
\code{keyfct.hn, keyfct.hz}, vector of detection
probability for that key function at x. For
\code{adjfct.cos, adjfct.poly, adjfct.herm}, vector of the
value of the adjustment term at x. For \code{scalevalue},
the value is a vector of the computed scales for the design
matrix z.
}
\description{
Various functions used to specify key and adjustment
functions for detection functions.
}
\details{
Multi-covariate detection functions (MCDS) are represented
by a function \eqn{g(x,w,\theta)} where x is distance, z is
a set of covariates and \eqn{\theta} is the parameter
vector.  The functions are defined such that
\eqn{g(0,w,\theta)=1} and the covariates modify the scale
\eqn{(x/\sigma)} where a log link is used to relate
\eqn{\sigma} to the covariates, \eqn{\sigma=exp(\theta*w)}.
A CDS function is obtained with a constant \eqn{\sigma}
which is equivalent to an intercept design matrix, z.

\code{detfct} will call either a gamma, half-normal,
hazard-rate or uniform function only returning the
probability of detection at that distance. In addition to
the simple model above, we may specify adjustment terms to
fit the data better. These adjustments are either Cosine,
Hermite and simple polynomials. These are specified as
arguments to \code{detfct}, as detailed below.

\code{detfct} function which calls the others and assembles
the final result using either key(x)[1+series(x)] or
(key(x)[1+series(x)])/(key(0)[1+series(0)]) (depending on
the value of standardize) \code{keyfct.hn, keyfct.hz,
keyfct.gamma} calculate half-normal, hazard-rate or gamma
key function values. \code{adjfct.cos, adjfct.poly,
adjfct.herm} calculates adjustment term values
\code{scalevalue} for either detection function it computes
the scale with the log link using the parameters and the
covariate design matrix \code{fx,fr} non-normalized
probability density for line transects and point counts
respectively
}
\author{
Jeff Laake, David Miller
}
\references{
Marques and Buckland 2004 Laake and Borchers 2004. in
Buckland et al 2004. Becker, E. F. and P. X. Quang. 2009. A
gamma-shaped detection function for line transect surveys
with mark-recapture and covariate data. Journal of
Agricultural Biological and Environmental Statistics
14:207-223.
}
\seealso{
\code{\link{mcds}}, \code{\link{cds}}
}

