

#' @title FUNCTION_TITLE
#' @description FUNCTION_DESCRIPTION

#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples 
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @seealso 
#'  \code{\link[rmarkdown]{render}}
#' @rdname run_shiny_in_rmd
#' @export 
#' @importFrom rmarkdown render
run_shiny_in_rmd <- function(){
  rmarkdown::run("vignettes/rmarkdown_shiny.Rmd", 
                 shiny_args = list(port = 8241))
}
# run_shiny_in_rmd()
