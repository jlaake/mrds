\name{plot.ds}
\alias{plot.ds}
\title{Plot fit of detection functions and histograms of data from distance
sampling model}
\usage{
\method{plot}{ds}(x, which = c(2), byvar = "", breaks = NULL, nc = NULL,
  jitter.v = rep(0, 3), showpoints = TRUE, subset = NULL,
  pl.col = c("black"), bw.col = c(grey(0)), black.white = FALSE,
  pl.den = rep(20, 1), pl.ang = rep(-45, 1), main = NULL, pages = 0,
  ...)
}
\arguments{
  \item{x}{fitted model from \code{ddf}.}

  \item{which}{index to specify which plots should be
  produced: \tabular{ll}{1 \tab histogram \cr 2 \tab
  histogram with fitted line and points \cr}}

  \item{byvar}{name of variable to be used to color points
  - not currently implemented.}

  \item{breaks}{user define breakpoints}

  \item{nc}{number of equal-width bins for histogram}

  \item{jitter.v}{scaling option for plotting points.
  Jitter is applied to points by multiplying the fitted
  value by a random draw from a normal distribution with
  mean 1 and sd \code{jitter.v[j]}.  Where \code{j=1,2}
  corresponds to observer \code{j} and \code{j=3}
  corresponds to pooled/duplicate detections.}

  \item{showpoints}{logical variable; if \code{TRUE} plots
  predicted value for each observation.}

  \item{subset}{subset of data to plot.}

  \item{pl.col}{colours plotting colours for obs 1, obs 2
  detections.}

  \item{bw.col}{grayscale plotting colours for obs 1, obs 2
  detections.}

  \item{black.white}{logical variable; if \code{TRUE} plots
  are grayscale.}

  \item{pl.den}{shading density for plots of obs 1, obs 2
  detections.}

  \item{pl.ang}{shading angle for plots of obs 1, obs 2
  detections.}

  \item{main}{user-specfied plot title.}

  \item{pages}{the number of pages over which to spread the
  plots. For example, if \code{pages=1} then all plots will
  be displayed on one page.  Default is 0, which prompts
  the user for the next plot to be displayed.}

  \item{\dots}{other graphical parameters, passed to the
  plotting functions (\code{\link{plot}},
  \code{\link{hist}}, \code{\link{lines}},
  \code{\link{points}}, etc).}
}
\value{
Just plots.
}
\description{
Plots the fitted detection functions for a distance
sampling model and histograms of the distances (for
unconditional detection functions) or proportion of
observations detected within distance intervals (for
conditional detection functions) to compare visually the
fitted model and data.
}
\details{
The structure of the histogram can be controlled by the
user-defined arguments \code{nc} or \code{breaks}.  The
observation specific detection probabilities along with the
line representing the fitted average detection probability.

It is not intended for the user to call any of
\code{plot.ds}, \code{plot.trial.fi},
\code{plot.trial},\code{plot.rem.fi}, \code{plot.rem},
\code{plot.io.fi} or \code{plot.io} but the arguments are
documented here. Instead the generic \code{plot} command
should be used and it will call the appropriate function
based on the type of \code{ddf} object.

The \code{which} command allows the user to select which
plots are returned. See which argument definition.
}
\examples{
\donttest{
data(book.tee.data)
egdata <- book.tee.data$book.tee.dataframe
xx <- ddf(dsmodel = ~mcds(key = "hn", formula = ~sex),
          data = egdata[egdata$observer==1, ],
          method = "ds", meta.data = list(width = 4))

# not showing predicted probabilities
plot(xx,breaks=c(0,.5,1,2,3,4),showpoints=FALSE)

# two subsets
plot(xx,breaks=c(0,.5,1,2,3,4),subset=sex==0)
plot(xx,breaks=c(0,.5,1,2,3,4),subset=sex==1)

# put both plots on one page
plot(xx,breaks=c(0,.5,1,2,3,4),pages=1,which=1:2)
}
}
\author{
Jeff Laake, Jon Bishop, David Borchers
}
\keyword{plot}

