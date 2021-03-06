#' Minimum reflectance
#'
#' \code{min} Returns the minimum reflectance value in a spectra object
#'
#' @param ... spectra object
#' @param na.rm boolean. remove NAs? Defaults to FALSE
#' @return single numeric value
#'
#' @author Jose Eduardo Meireles
#' @export
#'
#' @examples
#' library(spectrolab)
#' spec = as.spectra(spec_matrix_example)
#' min(spec)
min.spectra = function(..., na.rm = FALSE){
    min(reflectance(...), na.rm = na.rm)
}

#' Maximum reflectance
#'
#' \code{max} Returns the maximum reflectance value in a spectra object
#'
#' @param ... spectra object
#' @param na.rm boolean. remove NAs? Defaults to FALSE
#' @return single numeric value
#'
#' @author Jose Eduardo Meireles
#' @export
#'
#' @examples
#' library(spectrolab)
#' spec = as.spectra(spec_matrix_example)
#' max(spec)
max.spectra = function(..., na.rm = FALSE){
    max(reflectance(...), na.rm = na.rm)
}

#' Range of reflectance values
#'
#' \code{range} Returns the range of (min, max) reflectance values in spectra
#'
#' @param ... spectra object
#' @param na.rm boolean. remove NAs? Defaults to FALSE
#' @return tuple of numeric values (min, max)
#'
#' @author Jose Eduardo Meireles
#' @export
#'
#' @examples
#'
#' library(spectrolab)
#' spec = as.spectra(spec_matrix_example)
#' range(spec)
range.spectra = function(..., na.rm = FALSE){
    range(reflectance(...), na.rm = na.rm)
}


#' Get dimension of spectra
#'
#' \code{dim} returns a vector with number of samples and bands (wavelengths)
#'
#' @param x spectra object
#' @return tuple of integers: c("n_samples", "n_wavelengths")
#'
#' @author Jose Eduardo Meireles
#' @export
#'
#' @examples
#' library(spectrolab)
#' spec = as.spectra(spec_matrix_example)
#' dim(spec)
dim.spectra = function(x){
    c("n_samples"     = length(names(x)),
      "n_wavelengths" = length(wavelengths(x)) )
}

#' Print spectra
#'
#' \code{print} prints basic information about the spectra obj to the console
#'
#' @param x spectra object
#' @param ... other arguments passed to print. not implemented for spectra
#' @return nothing. called for side effect
#'
#' @importFrom utils head
#'
#' @author Jose Eduardo Meireles
#' @export
#'
#' @examples
#' library(spectrolab)
#' spec = as.spectra(spec_matrix_example)
#' print(spec)
#' ## or simply
#' spec
print.spectra = function(x, ...){
    r_wvl   = range(wavelengths(x))
    o_wvl   = i_is_increasing(wavelengths(x), stop = FALSE)

    ## In case I want to report if the wavelength spacings are unequal
    # d_wvl   = diff(wavelengths(x))
    # d_wvl   = all(d_wvl[1] == d_wvl)

    n_met   = names(meta(x, simplify = FALSE))
    l_met   = length(n_met)
    l_max   = 3L

    if(l_met > l_max){
        n_met = c( utils::head(n_met, l_max) , "...")    ## overwriting n_met
        l_met = paste(l_max, "of", l_met)                ## overwriting l_met
    }

    cat("spectra object", "\n")
    cat("number of samples:", nrow(x),"\n")
    cat("wavelengths: ", r_wvl[1], " to ", r_wvl[2], " (", ncol(x), " bands",
        ifelse(!o_wvl, ", **overlap not matched**", ""),
        ")", "\n", sep = "")

    if(l_met == 0){
        cat("metadata: none", "\n")
    } else {
        cat("metadata (", l_met, "): ", sep = "")
        cat(paste(n_met, collapse = ", "), sep = "")
    }
}


#' Summarize spectra
#'
#' @param object spectra object
#' @param ... additional params to summary. not used yet
#' @return nothing yet (just prints to console)
#'
#' @author Jose Eduardo Meireles
#' @export
#'
#' @examples
#' library(spectrolab)
#' spec = as.spectra(spec_matrix_example)
#' summary(spec)
summary.spectra = function(object, ...){
    print(object, ...)
}


#' Structure of the spectra object
#'
#' @param object spectra object
#' @param ... additional args. not implemented
#' @return prints to console
#'
#' @author Jose Eduardo Meireles
#' @export
#'
#' @examples
#' library(spectrolab)
#' spec = as.spectra(spec_matrix_example)
#' str(spec)
str.spectra = function(object, ...){
    cat("The structure of a spectra object should be irrelevant.", "\n")
    cat("To access spectra components, use the provided getters and setters.", "\n\n")
    print(object)
}
