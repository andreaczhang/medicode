#' @import data.table ggplot2
#' @importFrom magrittr %>%
.onAttach <- function(libname, pkgname) {
    version <- tryCatch(
      utils::packageDescription("medicode", fields = "Version"),
      warning = function(w){
        1
      }
    )
  
  packageStartupMessage(paste0(
    "medicode ",
    version,
    "\n",
    "https://docs.sykdomspulsen.no/medicode/"
  ))
}
