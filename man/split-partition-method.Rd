\docType{methods}
\name{split,partition-method}
\alias{split,partition}
\alias{split,partition-method}
\title{split partition into partitionCluster}
\usage{
\S4method{split}{partition}(x, gap, drop = FALSE, ...)
}
\arguments{
  \item{x}{a partition object}

  \item{gap}{an integer specifying the minimum gap for
  performing the split}

  \item{drop}{not yet implemented}

  \item{...}{further potential arguments passed to
  methods.}
}
\value{
a partitionCluster
}
\description{
Split a partition object into a partition Cluster if gap
between strucs exceeds a minimum number of tokens specified
by 'gap'. Relevant to split up a plenary protocol into
speeches. Note: To speed things up, the returned partitions
will not include frequency lists. The lists can be prepared
by applying \code{enrich} on the partitionCluster object
that is returned.
}
