% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/memoise_wrapper.R
\name{memoise_wrapper}
\alias{memoise_wrapper}
\title{wrapper for memoised function}
\usage{
memoise_wrapper(f, db, keep.input = TRUE, ...)
}
\arguments{
\item{f}{memoised function}

\item{db}{cache object}

\item{keep.input}{boolean, store the input information of the call to db$path, Default: TRUE}

\item{...}{parameters passed to f}
}
\value{
memoised fucntion output
}
\description{
wrapper of memoised function manage input storage
}
\author{
Jonathan Sidi
}
