% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/graph.utility.R
\name{build.parents}
\alias{build.parents}
\alias{build.parents.top.down}
\alias{build.parents.bottom.up}
\alias{build.parents.topological.sorting}
\title{Build parents}
\usage{
build.parents(g, root = "00")

build.parents.top.down(g, levels, root = "00")

build.parents.bottom.up(g, levels, root = "00")

build.parents.topological.sorting(g, root = "00")
}
\arguments{
\item{g}{a graph of class \code{graphNEL}. It represents the hierarchy of the classes.}

\item{root}{name of the class that it is on the top-level of the hierarchy (\code{def. root="00"}).}

\item{levels}{a list of character vectors. Each component represents a graph level and the elements of any component correspond to nodes.
The level 0 represents the root node.}
}
\value{
\code{build.parents} returns a named list of character vectors. Each component corresponds to a node \eqn{x} of the graph (i.e. child node)
and its vector is the set of its parents (the root node is not included).

\code{build.parents.top.down} returns a named list of character vectors. Each component corresponds to a node \eqn{x} of the graph (i.e. child node)
and its vector is the set of its parents. The order of nodes follows the levels of the graph from root (excluded) to leaves.

\code{build.parents.bottom.up} returns a named list of character vectors. Each component corresponds to a node \eqn{x} of the
graph (i.e. child node) and its vector is the set of its parents. The nodes are ordered from leaves to root (excluded).

\code{build.parents.topological.sorting} a named list of character vectors. Each component corresponds to a node \eqn{x} of the graph (i.e. child node)
and its vector is the set of its parents. The nodes are ordered according to a topological sorting, i.e. parents node come before children node.
}
\description{
Build parents for each node of a graph.
}
\examples{
data(graph);
root <- root.node(g)
parents <- build.parents(g, root=root);
lev <- graph.levels(g, root=root);
parents.tod <- build.parents.top.down(g, lev, root=root);
parents.bup <- build.parents.bottom.up(g, lev, root=root);
parents.tsort <- build.parents.topological.sorting(g, root=root);
}
