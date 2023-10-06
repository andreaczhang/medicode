#' Find description given an ICD10 code
#'
#' @param code A c
#' @param d Dataset that we search. Default is the english table
#'
#' @return A data.table with code and description
#' @export
#'
#' @examples
#' find_code(code = 'A001')
find_code <- function(code, d = medicode::icd10_en){

  Code <- NULL
  # code can be a character or a vector

  # non existing single code
  if(length(code) == 1 & !code %in% d$Code){
    rlang::abort("Code is unavailable.")
  }

  res <- d[Code %in% code]
  return(res)
}

# find_code_en(code = 'A000')
# find_code_en(code = c('A000', 'A009'))
# find_code_en(code = 'A002')
# this should be a case that reports an error message
# find_code_en(code = c('A000', 'A002'))

#usethis::use_testthat(3)
#usethis::use_test()
