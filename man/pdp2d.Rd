% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/explainability.R
\name{pdp2d}
\alias{pdp2d}
\title{Explanation gap visualization}
\usage{
pdp2d(
  model,
  x,
  vnames,
  type = "pdp",
  depth = 21,
  alpha = 2/3,
  right = 0.8,
  top = 0.95,
  digits = 1,
  ...
)
}
\arguments{
\item{model}{A model with corresponding predict function that returns numeric values.}

\item{x}{Data frame.}

\item{vnames}{Character vector of the variable set for which the patial dependence function is to be computed.}

\item{type}{Character, either \code{"pdp"}, \code{"gap"} or \code{"both"} specifying the meaning of the colours
of scatter: either the value of the PD function or the differences between PD and the model's predcitions.
In case of \code{"both"} two plots are created.}

\item{depth}{Integer specifiying the number colours in the heat map.}

\item{alpha}{Numeric value for alpha blending of the points in the scatter plot.}

\item{right}{Position where to place the legend relative to the range of the x axis.}

\item{top}{Position where to place the legend relative to the range of the y axis.}

\item{digits}{Nuber of digits for rounding in the legend.}

\item{...}{Further arguments to be passed to the \code{predict()} method of the \code{model}.}
}
\description{
Visualization of 2D PDP vs. unexplained residual predictions.
}
\examples{
\dontrun{
library(pdp)
library(randomForest)
data(boston)
set.seed(42)
boston.rf <- randomForest(cmedv ~ ., data = boston)
pdp2d(boston.rf, boston, c("lstat", "rm"), type = "both")
}

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
