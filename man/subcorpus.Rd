% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/S4classes.R
\docType{class}
\name{subcorpus}
\alias{subcorpus}
\alias{subcorpus-class}
\alias{aggregate,subcorpus-method}
\title{Virtual class subcorpus}
\usage{
\S4method{aggregate}{subcorpus}(x)
}
\arguments{
\item{x}{An object of a class belonging to the virtual class \code{subcorpus}, i.e. a 
\code{partition} or \code{regions} object.}
}
\description{
The classes \code{regions} and \code{partition} can be used to define
subcorpora. Unlike the \code{regions} class, the \code{partition} class may include
statistical evaluations. The virtual class \code{subcorpora} is a mechanism to define
methods for these classes without making \code{regions} the superclass of \code{partition}.
}
\details{
The method \code{aggregate} will deflate the matrix in the slot \code{cpos},
i.e. it checks for each new row in the matrix whether it increments the end
of the previous region (by 1), and ensure that the cpos matrix defines
disjoined regions.
}
\examples{
P <- new(
  "partition",
  cpos = matrix(data = c(1:10, 20:29), ncol = 2, byrow = TRUE),
  stat = data.table::data.table()
)
P2 <- aggregate(P)
P2@cpos
}
