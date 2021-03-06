\name{check.bounds}
\alias{check.bounds}
\title{Check bounds during optimsations}
\usage{
check.bounds(lt, lowerbounds, upperbounds, ddfobj, showit, setlower, setupper)
}
\arguments{
  \item{lt}{optimisation object}

  \item{lowerbounds}{current lower bounds}

  \item{upperbounds}{current upper bounds}

  \item{ddfobj}{ddf object}

  \item{showit}{debug level}

  \item{setlower}{were lower bounds set by the user}

  \item{setupper}{were upper bounds set by the user}
}
\description{
Simple internal function to check that the optimisation
didn't hit bounds. Based on code that used to live in
\code{detfct.fit.opt}.
}
\author{
Dave Miller; Jeff Laake
}

