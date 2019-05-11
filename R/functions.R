#' Lingr custom format.
#'
#' A custom format for linguistics articles.
#'
#' @param ... Arguments passed to \link[rmarkdown]{pdf_document}.
#'
#' @export
lingr_article <- function(...) {
  lingr_template <- system.file("rmarkdown/templates/lingr/resources", "template.tex", package = "lingr")
  rmarkdown::pdf_document(
    ...,
    latex_engine = "xelatex",
    keep_tex = TRUE,
    number_sections = TRUE,
    template = lingr_template
  )
}