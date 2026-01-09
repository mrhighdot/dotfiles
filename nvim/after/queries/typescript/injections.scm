; extends

;; HTML in template strings
((call_expression
  function: (identifier) @_name
  arguments: (template_string) @injection.content)
 (#any-of? @_name "html" "Html")
 (#set! injection.language "html")
 (#offset! @injection.content 0 1 0 -1))

;; CSS in template strings
((call_expression
  function: (identifier) @_name
  arguments: (template_string) @injection.content)
 (#any-of? @_name "css" "styled")
 (#set! injection.language "css")
 (#offset! @injection.content 0 1 0 -1))
