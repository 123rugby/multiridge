\name{IWLSCoxridge}
\alias{IWLSCoxridge}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Iterative weighted least squares algorithm for Cox ridge regression. 
}
\description{
Iterative weighted least squares algorithm for Cox ridge regression. Updates the weights and linear predictors until convergence. 
}
\usage{
IWLSCoxridge(XXT, Y, X1 = NULL, intercept = FALSE, eps = 1e-07, maxItr = 25, trace = FALSE, E0 = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{XXT}{
Matrix. Dimensions \code{nxn}. Sample cross-product from penalized variables, usually computed by \code{\link{SigmaFromBlocks}}.
}
  \item{Y}{
Response vector: class \code{survival}.
}
   \item{X1}{
Matrix. Dimension \code{n x p_0, p_0 < n}, representing unpenalized covariates.
}
   \item{intercept}{
Boolean. Should an intercept be included?
}
  \item{eps}{
Scalar. Numerical bound for IWLS convergence.
}
  \item{maxItr}{
Integer. Maximum number of iterations used in IWLS.
}
  \item{trace}{
Boolean. Should the output of the IWLS algorithm be traced?
}
  \item{E0}{
Numerical vector or \code{NULL}. Optional initial values for linear predictor. Same length as \code{Y}. Usually \code{NULL}, which initializes linear predictor with 0. 
}
}
\details{
Usually, Cox ridge regression does not use an intercept, as this is part of the baseline hazard. The latter is estimated using the Breslow estimator. To keep the function computationally efficient it returns the linear predictors (which suffice for predictions), instead of parameter estimates. These may be obtained by applying the \code{\link{betasout}} function to the output of this function.
}
\value{
List, containing:

\item{etas}{Numerical vector: Final linear predictors}
\item{Ypred}{Predicted survival}
\item{convergence}{Boolean: has IWLS converged?}
\item{nIt}{Number of iterations}
\item{Hres}{Auxiliary list object. Passed on to other functions}
\item{linearized}{Linearized predictions}
\item{unpen}{Boolean: are there any unpenalized covariates involved? Passed on to other functions}
\item{intercept}{Boolean: Is an intercept included? }
\item{eta0}{Numerical vector: Initial linear predictors}

}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{IWLSridge}} for linear and logistic ridge. \code{\link{betasout}} for obtaining parameter estimates. 
\code{\link{predictIWLS}} for predictions on new samples. 
}
\examples{
}
