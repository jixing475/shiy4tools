#' @export run_data_analysis
#' @importFrom shiny shinyApp
#' @importFrom golem with_golem_options 
#' @title FUNCTION_TITLE
#' @description FUNCTION_DESCRIPTION
#' @param onStart PARAM_DESCRIPTION, Default: NULL
#' @param options PARAM_DESCRIPTION, Default: list()
#' @param enableBookmarking PARAM_DESCRIPTION, Default: NULL
#' @param uiPattern PARAM_DESCRIPTION, Default: '/'
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples 
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @seealso 
#'  \code{\link[golem]{with_golem_options}}
#'  \code{\link[shiny]{shinyApp}}
#' @rdname run_data_analysis
#' @export 
#' @importFrom golem with_golem_options
#' @importFrom shiny shinyApp
run_data_analysis <- function(
  onStart = NULL,
  options = list(), 
  enableBookmarking = NULL,
  uiPattern = "/",
  ...
) {
  library(shiny)
  library(shinythemes)
  library(data.table)
  library(ggplot2)
  golem::with_golem_options(
    app = shiny::shinyApp(
      ui = data_analysis_ui,
      server = data_analysis_server,
      onStart = onStart,
      options = options, 
      enableBookmarking = enableBookmarking, 
      uiPattern = uiPattern
    ), 
    golem_opts = list(...)
  )
}
