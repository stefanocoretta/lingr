#' Lingr custom format.
#'
#' A custom format for linguistics articles. It provides the standard pandoc
#' YAML parameter, plus three new parameters: \code{version} for the document's
#' version, \code{version-date} for the date of the document's version (these parameters must be included as subkeys in \code{params}), and
#' \code{hide-version} which does not print the version on the document if set
#' to \code{true}.
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