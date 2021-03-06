% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/math_operator_overloads.R
\name{Ops.spectra}
\alias{Ops.spectra}
\title{Arithmetic operators for spectra}
\usage{
\method{Ops}{spectra}(e1, e2)
}
\arguments{
\item{e1}{lhs}

\item{e2}{rhs}
}
\value{
Depends on the operator. math operators will return spectra and logical
        or comparisson operators will return boolean matrices
}
\description{
Overloads arithmetic operators for spectra using `Ops.`
}
\examples{
library(spectrolab)
spec  = as.spectra(spec_matrix_example)
spec1 = spec * 2
spec2 = spec + spec
all(spec1 == spec2)
}
\author{
Jose Eduardo Meireles
}
