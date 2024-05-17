# AUTO GENERATED FILE - DO NOT EDIT

#' @export
''SelectColorGradient <- function(id=NULL, label=NULL, options=NULL, value=NULL) {
    
    props <- list(id=id, label=label, options=options, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'SelectColorGradient',
        namespace = 'select_color_gradient',
        propNames = c('id', 'label', 'options', 'value'),
        package = 'selectColorGradient'
        )

    structure(component, class = c('dash_component', 'list'))
}
