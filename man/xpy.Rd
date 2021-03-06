% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/explainability.R
\name{xpy}
\alias{xpy}
\title{Explainability and matchplot for PDP}
\usage{
xpy(
  model,
  x,
  vnames,
  viz = TRUE,
  parallel = TRUE,
  sample = 1,
  pfunction = NULL,
  ...
)
}
\arguments{
\item{model}{A model with corresponding predict function that returns numeric values.}

\item{x}{Data frame.}

\item{vnames}{Character vector of the variable set for which the patial dependence function is to be computed.}

\item{viz}{Logical specifying whether a matchplot should be created.}

\item{parallel}{Logical specifying whether computation should be parallel.}

\item{sample}{fraction-size for sampling of x.}

\item{pfunction}{User generated predict function.}

\item{...}{Further arguments to be passed to the \code{predict()} method of the \code{model}.}
}
\value{
Numeric value with the explainability of the partial dependence function for the variables specified in \code{vnames}.
}
\description{
Computes explainability and matchplots for a partial dependence function.
}
\examples{
library(pdp)
library(randomForest)
data(boston)
set.seed(42)
boston.rf <- randomForest(cmedv ~ ., data = boston)
xpy(boston.rf, boston, c("lstat", "rm"))

}
\references{
\itemize{
    \item Szepannek, G. (2019): How Much Can We See? A Note on Quantifying Explainability of Machine Learning Models,
          \href{https://arxiv.org/abs/1910.13376}{\emph{arXiv:1910.13376 [stat.ML]}}.
  }
}
\author{
\email{gero.szepannek@web.de}
}
