% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/synch_remote.R
\name{synch_remote}
\alias{synch_remote}
\title{Retrieve current files in remote storage to local directory}
\usage{
synch_remote(file = "README.md", action = "pull", repo = NULL,
  local_storage = ".rcache", remote_storage = ".rcache", ...)
}
\arguments{
\item{file}{character, vector of files to retrieve from the repository, 
Default: 'README.md'}

\item{action}{character, push, pull or c('push','pull'), Default: 'pull'}

\item{repo}{character, user/repository}

\item{local_storage}{character, subdirectory where digests are saved locally, Default: '.rcache'}

\item{remote_storage}{character, subdirectory where digests are saved remotely, Default: '.rcache'}

\item{...}{parameters to pass to \code{\link[vcs]{ls_remote}}}
}
\value{
nothing
}
\description{
FUNCTION_DESCRIPTION
}
\seealso{
\code{\link[vcs]{ls_remote}}
}
\author{
Jonathan Sidi
}
