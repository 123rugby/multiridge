\name{CVscore}
\alias{CVscore}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Cross-validated score
}
\description{
Cross-validated score for given penalty parameters.
}
\usage{
CVscore(penalties, XXblocks, Y, X1 = NULL, pairing = NULL, folds, intercept = ifelse(class(Y) == "Surv", FALSE, TRUE), frac1 = NULL, score = "loglik", model = "logistic", eps = 1e-07, maxItr = 100, trace = FALSE, printCV = TRUE, save = FALSE, parallel = F)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{penalties}{
Numeric vector.
}
  \item{XXblocks}{
List of \code{nxn} matrices. Usually output of \code{\link{createXXblocks}}.
}
  \item{Y}{
Response vector: numeric, binary, factor or \code{survival}.
}
  \item{X1}{
Matrix. Dimension \code{n x p_0, p_0 < n}, representing unpenalized covariates }
  \item{pairing}{
Numerical vector of length 3 or \code{NULL} when pairs are absent. Represents the indices (in \code{XXblocks}) of the two data blocks involved in pairing,
plus the index of the paired block.
}
  \item{folds}{
List of integer vector. Usually output of \code{\link{CVfolds}}.
}
  \item{intercept}{
Boolean. Should an intercept be included?
}
  \item{frac1}{
Scalar. Prior fraction of cases. Only relevant for \code{model=" logistic"}.
}
  \item{score}{
Character. See Details.
}
  \item{model}{
Character. Any of \code{c("linear", "logistic", "cox")}.
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
  \item{printCV}{
Boolean. Should the CV-score be printed on screen?
}
  \item{save}{
Boolean. If TRUE appends the penalties and resulting CVscore to global variable \code{allscores}
}
  \item{parallel}{
Boolean. Should computation be done in parallel? If \code{TRUE}, requires to run \code{\link{setupParallel}} first.
}
}
\details{
See \code{\link{Scoring}} for details on \code{score}.
}
\value{
Numeric, cross-validated prediction score for given penalties
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
\code{\link{doubleCV}} for double cross-validation, used for performance evaluation
}
\examples{

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
