## This app requires OpenCPU 1.0.1 or higher !!!! 
##

#' @export
rmdtext <- function(text, out_options = NULL){
  writeLines(paste0("---\noutput:\n  html_document:\n    code_folding: hide\n    self_contained: true\n---\n\n",text), con="input.Rmd");
  if (is.null(out_options)) {
    rmarkdown::render("input.Rmd", output_options = NULL, output_file="output.html");
  } else {
    rmarkdown::render("input.Rmd", output_options = jsonlite::fromJSON(out_options), output_file="output.html");
  }
  invisible();
}

