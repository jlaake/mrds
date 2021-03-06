\name{setbounds}
\alias{setbounds}
\title{Set parameter bounds}
\usage{
setbounds(lowerbounds, upperbounds, initialvalues, ddfobj)
}
\arguments{
  \item{lowerbounds}{vector of lower bounds}

  \item{upperbounds}{vector of upper bounds}

  \item{initialvalues}{vector of initial parameter
  estimates}

  \item{ddfobj}{distance detection function object}
}
\value{
\item{lower}{vector of lower bounds} \item{upper}{vector of
upper bounds} \item{setlower}{logical indicating whether
user set lower bounds} \item{setupper}{logical indicating
whether user set upper bounds}
}
\description{
Set values of lower and upper bounds and check lengths of
any user-specified values
}
\author{
Jeff Laake
}

