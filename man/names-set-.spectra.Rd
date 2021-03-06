% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getters_and_setters.R
\name{names<-.spectra}
\alias{names<-.spectra}
\title{Set spectra sample names}
\usage{
\method{names}{spectra}(x) <- value
}
\arguments{
\item{x}{spectra object (lhs)}

\item{value}{values to be assigned (rhs)}
}
\value{
nothing. called for its side effect.
}
\description{
\code{names} assigns sample names to lhs
}
\examples{
library(spectrolab)
spec = as.spectra(spec_matrix_example)
names(spec) = toupper(names(spec))
}
\author{
Jose Eduardo Meireles
}
