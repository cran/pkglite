% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/templates.R
\name{file_auto}
\alias{file_auto}
\title{File specification (automatic guess)}
\usage{
file_auto(path)
}
\arguments{
\item{path}{The directory's relative path (relative to the
package root), for example, \code{"inst/"}.}
}
\value{
A list of file specifications.
}
\description{
Lists all files under a folder recursively and guesses the
file format type (text or binary) based on the file extension.
}
\section{Specification}{

\if{latex}{
  \itemize{
    \item Use \code{file_spec()} to cover all text files by their file
    extensions under the relative \code{path} of the package, recursively.
    \item Use \code{file_spec()} to cover all binary files by their file
    extensions under the relative \code{path} of the package, recursively.
    \item Return the combination of the two file specifications in a list.
  }
}
\if{html}{The contents of this section are shown in PDF user manual only.}
}

\examples{
file_auto("inst/")
}
