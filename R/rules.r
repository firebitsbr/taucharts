#' Add a CSS rule to the rendered htmlwidget
#'
#' This function will add a CSS rule to a widget-created
#' DOM stylesheet. \code{rule} should be a valid CSS rule as you
#' would enter in a \code{<style>...</style>} block. No checking is done
#' to ensure validity.
#'
#' Use \code{\{\{ID\}\}} (followed by a space) to target the CSS rule
#' just to the widget vs the whole DOM.
#'
#' Vectorized over \code{rule}
#'
#' @param tau taucharts object
#' @param rules character vector of CSS rule(s) to add to the widget DOM
#' @return taucharts htmlwidget object
#' @note This is for expert use only. You need to know quite a bit about the visualization
#'       and target DOM to effectively use this function.
#' @export
#' @examples
#' make_black_tooltip <- function(tau) {
#'   tau %>%
#'     tau_add_css_rule(".graphical-report__tooltip__gray-text { color: white; font-weight: bold; }") %>%
#'     tau_add_css_rule(".graphical-report__tooltip__list__elem:first-child { color: white; font-weight: bold; }") %>%
#'     tau_add_css_rule(".graphical-report__tooltip__exclude { color: white; }") %>%
#'     tau_add_css_rule(".graphical-report__tooltip__exclude:hover { color: #65717f; background: linear-gradient(to right, rgba(255, 255, 255, 0) 100%, rgba(235, 238, 241, 0.9) 0%); }") %>%
#'     tau_add_css_rule(".graphical-report__tooltip { background: black; }")
#' }
#'
#' tauchart(mtcars) %>%
#'   tau_point("wt", "mpg", color="cyl") %>%
#'   tau_color_manual(c("blue", "maroon", "black")) %>%
#'   tau_tooltip() %>%
#'   make_black_tooltip()
tau_add_css_rule <- function(tau, rules) {
  tau$x$forCSS <- c(tau$x$forCSS, rules)
  tau
}
