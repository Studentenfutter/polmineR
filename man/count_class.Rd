% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/S4classes.R, R/count.R
\docType{class}
\name{count_class}
\alias{count_class}
\alias{count-class}
\alias{count_bundle-class}
\alias{length,count-method}
\alias{hist,count-method}
\title{Count class.}
\usage{
\S4method{length}{count}(x)

\S4method{hist}{count}(x, ...)
}
\arguments{
\item{x}{A \code{count} object, or a class inheriting from \code{count}.}

\item{...}{Further parameters.}
}
\description{
S4 class to organize counts. The classes \code{polmineR} and
\code{ngrams} inherit from the class.
}
\details{
The \code{length}-method is synonymous with the \code{size}-method
and will return the size of the \code{corpus} or \code{partition} a count
has been derived from.
}
\section{Slots}{

\describe{
\item{\code{stat}}{Object of class \code{data.table}}

\item{\code{corpus}}{Object of class \code{character} the CWB corpus the partition is based on}

\item{\code{encoding}}{Object of class \code{character} encoding of the corpus}

\item{\code{name}}{Object of class \code{character}, a name for the object}

\item{\code{size}}{Object of class \code{integer}, the size of the partition or
corpus the count is based upon}
}}

\seealso{
The \code{count}-class inherits from the \code{\link{textstat-class}}
}
\author{
Andreas Blaette
}
