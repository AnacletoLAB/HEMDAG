% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/graph.utility.R
\name{tupla.matrix}
\alias{tupla.matrix}
\title{Tupla matrix}
\usage{
tupla.matrix(m, output.file = "net.file.gz", digits = 3)
}
\arguments{
\item{m}{a named score matrix. It can be either a \code{m x n} matrix (where \code{m} are example and \code{n}
are functional terms, e.g. GO terms) or it can be a square named matrix \code{m x m}, where \code{m} are examples.}

\item{output.file}{name of the file on which the matrix must be written.}

\item{digits}{number of digits to be used to save scores of \code{m} (\code{def. digits=3}).
The extension of the file can be plain (".txt") or compressed (".gz").}
}
\value{
A tupla score matrix stored in output.file.
}
\description{
Transform a named score matrix in a tupla, i.e. in the form \code{nodeX nodeY score}.
}
\details{
Only the \emph{non-zero} interactions are kept, while the \emph{zero} interactions are discarded.
}
\examples{
data(wadj);
file <- tempfile();
tupla.matrix(W, output.file=file, digits=3);
}
