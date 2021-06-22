#' load_data UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_load_data_ui <- function(id){
  ns <- NS(id)
  tagList(
    fileInput(ns("csv_input"), "Select CSV File to Import", accept = ".csv"),
    br(),
    DT::DTOutput(ns("data_input"))
  )
}
    
#' load_data Server Functions
#'
#' @noRd 
mod_load_data_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    data_input <- reactive({
      req(input$csv_input)
      rio::import(input$csv_input$datapath)
    })
    
    output$data_input <- DT::renderDataTable({
      data_input() 
    })
    
  })
}
    
## To be copied in the UI
# mod_load_data_ui("load_data_1")
    
## To be copied in the server
# mod_load_data_server("load_data_1")
