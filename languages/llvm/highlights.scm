; Highlighting for LLVM IR

; Capture function definitions
(function_definition
  name: (identifier) @function)

; Capture function calls
(call_instruction
  function: (identifier) @function)

; Capture types
(type) @type

; Capture constants
(constant) @constant

; Capture keywords (e.g., 'define', 'declare', 'global', etc.)
(keyword) @keyword

; Capture labels (e.g., basic block labels)
(label) @label

; Capture comments
(comment) @comment

; Capture string literals
(string_literal) @string

; Capture numeric literals
(numeric_literal) @number

; Capture operators (e.g., 'add', 'sub', 'mul', etc.)
(operator) @operator

; Capture punctuation (e.g., commas, parentheses, etc.)
(punctuation) @punctuation

; Capture attributes (e.g., 'noreturn', 'nounwind', etc.)
(attribute) @attribute

; Capture variables (e.g., local variables, global variables)
(variable) @variable

; Capture special variables (e.g., metadata variables)
(special_variable) @variable.special

; Capture types in function signatures
(function_signature
  return_type: (type) @type
  parameter_list: (parameter (type) @type))

; Capture metadata
(metadata) @embedded

; Capture inline assembly
(inline_assembly) @embedded

; Capture preprocessor directives (if any)
(preprocessor_directive) @preproc
