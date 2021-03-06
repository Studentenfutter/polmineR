% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/html.R
\docType{methods}
\name{html}
\alias{html}
\alias{show,html-method}
\alias{html,character-method}
\alias{.addCharacterOffset}
\alias{html,partition-method}
\alias{html,partition_bundle-method}
\alias{html,kwic-method}
\alias{print.html}
\title{Generate html from object.}
\usage{
html(object, ...)

\S4method{html}{character}(object)

.addCharacterOffset(x)

\S4method{html}{partition}(object, meta = NULL, cpos = TRUE,
  verbose = FALSE, cutoff = NULL, charoffset = FALSE, beautify = TRUE,
  ...)

\S4method{html}{partition_bundle}(object, filename = c(), type = "debate")

\S4method{html}{kwic}(object, i, s_attribute = NULL, type = NULL,
  verbose = FALSE, ...)

\method{print}{html}(x, ...)
}
\arguments{
\item{object}{the object the fulltext output will be based on}

\item{...}{further parameters that are passed into \code{as.markdown}}

\item{x}{object of class \code{html} to print}

\item{meta}{metadata for output, if NULL (default), the s-attributes defining
a partition will be used}

\item{cpos}{logical, if \code{TRUE} (default), all tokens will be wrapped by 
elements with id attribute indicating corpus positions}

\item{verbose}{logical, whether to be verbose}

\item{cutoff}{maximum number of tokens to decode from token stream, passed
into \code{as.markdown}}

\item{charoffset}{logical, if \code{TRUE}, character offset positions are
added to elements embracing tokens}

\item{beautify}{logical, if \code{TRUE}, whitespace before interpunctuation
will be removed}

\item{filename}{the filename}

\item{type}{the partition type}

\item{i}{if object is a \code{kwic}-object, the index of the concordance for
which the fulltext is to be generated}

\item{s_attribute}{structural attributes that will be used to define the partition 
where the match occurred}
}
\description{
Prepare a html document to inspect the full text.
}
\details{
If param \code{charoffset} is \code{TRUE}, character offset positions will be
added to tags that embrace tokens. This may be useful, if exported html document
is annotated with a tools that stores annotations with character offset positions.
}
\examples{
use("polmineR")
P <- partition("REUTERS", places = "argentina")
H <- html(P)
if (interactive()) H # show full text in viewer pane

# html-method can be used in a pipe
if (require("magrittr")){
  H <- partition("REUTERS", places = "argentina") \%>\% html()
  # use html-method to get from concordance to full text
  K <- kwic("REUTERS", query = "barrels")
  H <- html(K, i = 1, s_attribute = "id")
  H <- html(K, i = 2, s_attribute = "id")
  for (i in 1:length(K)) {
    H <- html(K, i = i, s_attribute = "id")
    if (interactive()){
      show(H)
      userinput <- readline("press 'q' to quit or any other key to continue")
      if (userinput == "q") break
    }
  }
}

}
