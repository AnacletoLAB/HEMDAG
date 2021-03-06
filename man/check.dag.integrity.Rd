% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/graph.utility.R
\name{check.dag.integrity}
\alias{check.dag.integrity}
\title{DAG checker}
\usage{
check.dag.integrity(g, root = "00")
}
\arguments{
\item{g}{a graph of class \code{graphNEL}. It represents the hierarchy of the classes.}

\item{root}{name of the class that is on the top-level of the hierarchy (\code{def. root="00"}).}
}
\value{
If all the nodes are accessible from the root "dag is ok" is printed, otherwise a message error and the list of
the not accessible nodes is printed on the stdout.
}
\description{
Check the integrity of a dag.
}
\examples{
data(graph);
root <- root.node(g);
check.dag.integrity(g, root=root);
}
