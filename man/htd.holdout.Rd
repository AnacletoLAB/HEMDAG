% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/htd.dag.R
\name{htd.holdout}
\alias{htd.holdout}
\title{HTD-DAG holdout}
\usage{
htd.holdout(S, g, testIndex, norm = FALSE, norm.type = NULL)
}
\arguments{
\item{S}{a named flat score matrix with examples on rows and classes on columns.}

\item{g}{a graph of class \code{graphNEL}. It represents the hierarchy of the classes.}

\item{testIndex}{a vector of integer numbers corresponding to the indexes of the elements (rows) of the score matrix \code{S} to be used in the test set.}

\item{norm}{a boolean value. Should the flat score matrix be normalized? By default \code{norm=FALSE}.
If \code{norm=TRUE} the matrix \code{S} is normalized according to the normalization type selected in \code{norm.type}.}

\item{norm.type}{a string character. It can be one of the following values:
\enumerate{
 \item \code{NULL} (def.): none normalization is applied (\code{norm=FALSE})
 \item \code{maxnorm}: each score is divided for the maximum value of each class;
 \item \code{qnorm}: quantile normalization. \pkg{preprocessCore} package is used;
}}
}
\value{
A matrix with the scores of the classes corrected according to the \code{HTD-DAG} algorithm. Rows of the matrix are shrunk to \code{testIndex}.
}
\description{
Correct the computed scores in a hierarchy according to the \code{HTD-DAG} algorithm applying a classical holdout procedure.
}
\examples{
data(graph);
data(scores);
data(test.index);
S.htd <- htd.holdout(S, g, testIndex=test.index, norm=FALSE, norm.type=NULL);
}
