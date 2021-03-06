% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transform_spectra.R
\name{normalize}
\alias{normalize}
\alias{normalize.spectra}
\title{Vector normalize spectra}
\usage{
normalize(x, quiet = FALSE, ...)

\method{normalize}{spectra}(x, quiet = FALSE, ...)
}
\arguments{
\item{x}{spectra object. Wavelengths must be strictly increasing}

\item{quiet}{boolean. Warn about change in y value units? Defaults to FALSE}

\item{...}{nothing}
}
\value{
spectra object with normalized spectra
}
\description{
\code{normalize} returns a spectra obj with vector normalized reflectances
}
\section{Methods (by class)}{
\itemize{
\item \code{spectra}: Vector normalize spectra
}}

\examples{
library(spectrolab)
spec = as.spectra(spec_matrix_example)
spec = normalize(spec)
}
\author{
Jose Eduardo Meireles
}
