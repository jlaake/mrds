\name{plot.det.tables}
\alias{plot.det.tables}
\title{Observation detection tables}
\usage{
\method{plot}{det.tables}(x, which = 1:6, angle = -45, density = 20,
  col1 = "black", col2 = "blue", new = TRUE, ...)
}
\arguments{
  \item{x}{object of class det.tables}

  \item{which}{items in x to plot; vector with values in
  1:6}

  \item{angle}{shading angle for hatching}

  \item{density}{shading density for hatching}

  \item{col1}{plotting colour for specified universe of
  detections (col1= Observer1; col2= Observer 2 within
  Observer 1 subset)}

  \item{col2}{plotting colour for those detected}

  \item{new}{if TRUE new plotting window for each plot}

  \item{\dots}{other graphical parameters, passed to the
  plotting functions (plot, hist, lines, points, etc)}
}
\value{
Just plots.
}
\description{
Creates a series of tables for dual observer data that
shows the number missed and detected for each observer
within defined distance classes.
}
\examples{
\donttest{
data(book.tee.data)
region<<-book.tee.data$book.tee.region
egdata<<-book.tee.data$book.tee.dataframe
samples<<-book.tee.data$book.tee.samples
obs<<-book.tee.data$book.tee.obs
xx=ddf(mrmodel=~glm(formula=~distance*observer),dsmodel = ~mcds(key = "hn", formula = ~sex),
        data = egdata, method = "io", meta.data = list(width = 4))
tabs=det.tables(xx,breaks=c(0,.5,1,2,3,4))
par(mfrow=c(2,3))
plot(tabs,which=1:6,new=FALSE)
}
}
\author{
Jeff Laake
}

