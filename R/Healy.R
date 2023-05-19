#'
#' The transformation of log(sum(e^2))
#' using the fact log(x+y)=log(x(1+y)/x)
#'
#' @param x A vector of numeric values
#'
#' @return The log of summation of e^x
#'
#' @examples
#' ## Pass a numeric vector to log_summed_exps,
#' ## and it will log the summation of e^x
#' log_summed_exps(seq(1, 10))
#'
#' @export
log_summed_exps <- function(x){
  ## definition of log_summed_exps:
  ## log(sum_i=1^n(e^x_i)) =
  ## x_1 + log(1 + sum_j=2^(n-1)e^(x_j-x_n))
  n <- length(x)
  x <- sort(x, decreasing = TRUE)
  answ <- x[1] + log(sum(exp(x-x[1])))
  return(answ)
}
