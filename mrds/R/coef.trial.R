coef.trial <-
function(object,...)
#
# coef.trial
#
# Provides a summary of parameters and estimates from the output of trial object
#
# Arguments:
#
# model      - object from ddf.trial
#
# Value: list of coefficient data frames (scale and exponent (if hazard))
#
{
  par=coef(object$mr)
  row.names(par)=paste("mr      :",row.names(coef(object$mr)))
  if(!is.null(coef(object$ds)$exponent))
  {
     rn=row.names(par)
     par=rbind(par,coef(object$ds)$exponent)
     row.names(par)=c(rn, paste("ds expon:",row.names(coef(object$ds)$exponent)))
  }
  rn=row.names(par)
  ds.scale=coef(object$ds)$scale
  if(!is.null(ds.scale))
  {
	  par=rbind(par,coef(object$ds)$scale)
	  row.names(par)=c(rn,paste("ds scale:",
					  row.names(coef(object$ds)$scale)))
  }
  if(!is.null(coef(object$ds)$adjustment)){
    rn=row.names(par)
    par=rbind(par,coef(object$ds)$adjustment)
    row.names(par)=c(rn, paste("ds adjust:",
                               row.names(coef(object$ds)$adjustment)))
  }
  return(par)
}
