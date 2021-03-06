\name{varn}
\alias{covn}
\alias{varn}
\title{Computes empirical variance of encounter rate}
\usage{
varn(lvec,nvec,type)

         covn(lvec, groups1, groups2, type)
}
\arguments{
  \item{lvec}{vector of sample measurements (e.g., line
  lengths)}

  \item{nvec}{vector of number observed}

  \item{groups1}{vector of number of groups observed}

  \item{groups2}{vector of number of individuals observed}

  \item{type}{choice of variance estimator to use for
  encounter rate}
}
\value{
Variance of encounter rate as defined by arguments
}
\description{
Computes one of a series of possible variance estimates for
the observed encounter rate for a set of sample
measurements (e.g., line lengths) and number of
observations per sample.
}
\details{
The choice of type follows the notation of Fewster et al.
(2009) in that there are 8 choices of encounter rate
variance that can be computed \tabular{ll}{ \code{R2} \tab
random line placement with unequal line lengths
(design-assisted estimator) \cr \code{R3} \tab random line
placement, model-assisted estimator, based on true
contagion process \cr \code{R4} \tab random line placement,
model-assisted estimator, based on apparent contagion
process \cr \code{S1} \tab systematic line placement,
post-stratification with no strata overlap \cr \code{S2}
\tab systematic line placement, post-stratification with no
strata overlap, variances weighted by line length per
stratum \cr \code{O1} \tab systematic line placement,
post-stratification with overlapping strata (akin to S1)
\cr \code{O2} \tab systematic line placement,
post-stratification with overlapping strata (weighted by
line length per stratum, akin to S2) \cr \code{O3} \tab
systematic line placement, post-stratification with
overlapping strata, model-assisted estimator with trend in
encounter rate with line length \cr } Default value is R2,
shown in Fewster et al. (2009) to have good performance for
completely random designs.  For systematic parallel line
transect designs, Fewster et al. recommend O2.

For the systematic estimators, pairs are assigned in the
order they are given in the \code{lengths} and
\code{groups} vectors.
}
\note{
This function is also used with different calling arguments
to compute Innes et al variance of the estimated
abundances/length rather than observation encounter rate.
The function covn is probably only valid for R3 and R2.
Currently, the R2 form is used for all types other than R3.
}
\author{
Jeff Laake
}
\references{
Fewster, R.M., S.T. Buckland, K.P. Burnham, D.L. Borchers,
P.E.  Jupp, J.L. Laake and L. Thomas. 2009. Estimating the
encounter rate variance in distance sampling. Biometrics
65: 225-236.
}
\keyword{utility}

