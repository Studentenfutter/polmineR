% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CQI.R, R/CQI.cqpserver.R, R/CQI.perl.R, R/CQI.rcqp.R
\docType{data}
\name{CQI.super}
\alias{CQI}
\alias{CQI.cqpserver}
\alias{CQI.perl}
\alias{CQI.rcqp}
\alias{CQI.super}
\title{Interfaces for accessing the CWB}
\format{An object of class \code{R6ClassGenerator} of length 24.}
\usage{
CQI.super

CQI.cqpserver

CQI.perl

CQI.rcqp
}
\description{
The package offers three different interfaces to the Corpus
Workbench (CWB): The package 'rcqp', via cqpserver, and by
calling Perl scripts. An object called 'CQI' will be instantiated
in the environment of the polmineR package; the class will 
provide the functionality to access CWB corpora.
}
\keyword{datasets}
