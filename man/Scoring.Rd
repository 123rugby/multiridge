\name{Scoring}
\alias{Scoring}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Evaluate predictions
}
\description{
Evaluates predictions by a score suitable for the corresponding response
}
\usage{
Scoring(lp, Y, model = "logistic", score = ifelse(model == "linear", "mse", "loglik"), print = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{lp}{
Numerical vector. Linear predictor.
}
  \item{Y}{
Response vector: numeric, binary, factor or \code{survival}.
}
  \item{score}{
Character. See Details. 
}
  \item{model}{
Character. Any of \code{c("linear", "logistic", "cox")}.
}
  \item{print}{
Boolean. Should the score be printed on screen. 
}
}
\details{
Several scores are allowed, depending on the type of output. For \code{model = "linear"}, 
\code{score} equals any of \code{c("loglik","mse","abserror","cor","kendall","spearman")}, denoting 
CV-ed log-likelihood, mean-squared error, mean absolute error, Pearson (Kendall, Spearman) correlation with response.
For \code{model = "logistic"}, \code{score} equals any of \code{c("loglik","auc", "brier")}, denoting 
CV-ed log-likelihood, area-under-the-ROC-curve, and brier score a.k.a. MSE. 
For \code{model = "cox"}, \code{score} equals any of \code{c("loglik","cindex")}, denoting 
CV-ed log-likelihood, and c-index. %%  ~~ If necessary, more details than the description above ~~
}
\value{
Numerical value.
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
\code{\link{CVscore}} for obtaining the cross-validated score (for given penalties), and \code{\link{doubleCV}} to obtain doubly cross-validated linear predictors to which \code{Scoring} can be applied to estimated predictive performance by double cross-validation.
}
\examples{

}
