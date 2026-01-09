; extends

(call_expression
  function: (identifier) @_name
  (#eq? @_name "html")
  arguments: (template_string (string_fragment) @injection.content)
  (#set! injection.language "html")
  (#set! injection.combined))

