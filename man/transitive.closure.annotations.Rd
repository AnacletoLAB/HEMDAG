% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/annotation.utility.R
\name{transitive.closure.annotations}
\alias{transitive.closure.annotations}
\title{Transitive closure of annotations}
\usage{
transitive.closure.annotations(ann.spec, anc)
}
\arguments{
\item{ann.spec}{the annotation matrix of the most specific annotations (0/1): rows are genes and columns are functional terms.}

\item{anc}{the ancestor list.}
}
\value{
The annotation table T: rows correspond to genes and columns to ontology terms. \eqn{T[i,j]=1} means that gene \eqn{i} is annotated for the term \eqn{j},
\eqn{T[i,j]=0} means that gene \eqn{i} is not annotated for the term \eqn{j}.
}
\description{
Perform the transitive closure of the annotations using ancestors and the most specific annotation matrix.
The annotations are propagated from bottom to top, enriching the most specific annotations table. Rows correspond to genes and columns to functional terms.
}
\examples{
data(graph);
data(labels);
anc <- build.ancestors(g);
tca <- transitive.closure.annotations(L, anc);
}
