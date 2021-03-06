#' Creates design matrix for covariates in detection function
#' 
#' This function creates a design matrix for the g(0) or scale covariates using
#' the input model formula. It returns a list which contains 2 elements: 1)
#' dim: the dimension (number of columns) of the design matrix, and 2) cov: the
#' constructed design matrix. This function is relatively simple because it
#' uses the built-in function \code{\link{model.matrix}} which does the
#' majority of the work.  This function handles 2 exceptions "~.", the null
#' model with 0 columns and "~1" the intercept only model - a column of 1s.  If
#' a model other than the 2 exceptions is provided, it calls
#' \code{\link{model.matrix}} to construct the columns. If any of the colums of
#' the design matrix are all 0's the column is removed.  This occurs when there
#' is no data for a particular factor.
#' 
#' 
#' @param dmat data matrix
#' @param model model formula
#' @return a design matrix for the specified data and model
#' @author Jeff Laake
#' @keywords utility
setcov <- function(dmat, model)
{
#
# setcov
#
# This function creates a design matrix for the g(0) or scale covariates using
# the input model formula 
# It returns a list which contains 2 elements:
#    1) dim: the dimension (number of columns) of the design matrix
#    2) cov: the constructed design matrix.
# This function is realtively simple because it uses the S+ function model.matrix which 
# does the majority of the work.  This funtion handles 2 exceptions "~.", the null model 
# with 0 columns and "~1" the intercept only model - a column of 1s.  If a model other than the
# 2 exceptions is provided, it calls model.matrix to construct the columns.
# If any of the colums of the design matrix are all 0's the column is removed.  This occurs when
# there is no data for a particular factor.  
#
# Input variables:
#
#  dmat - the data matrix
#  model- model specification 
#

# Null Model
  if(model=="~."){
    n <- 0
    x <- NULL
# Intercept Model  
  }else if(model == "~1"){
    n <- 1
    x <- as.matrix(rep(1, dim(dmat)[1]))
    colnames(x) <- "(Intercept)"
# Covariate Model  
  }else{
    x <- model.matrix(eval(parse(text=model)), data = dmat)
    if(!is.matrix(x))
      x <- as.matrix(x)
    n <- dim(x)[2]
  }
  return(list(dim=n,cov=x))
}
