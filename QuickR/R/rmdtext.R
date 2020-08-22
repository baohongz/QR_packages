## This app requires OpenCPU 1.0.1 or higher !!!! 
##

#' @export
rmdtext <- function(text){
  writeLines(paste0("---\noutput:\n  html_document:\n    code_folding: hide\n---\n\n",text), con="input.Rmd");
  rmarkdown::render("input.Rmd", output_file="output.html");
  invisible();
}

