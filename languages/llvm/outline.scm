; Code outline for LLVM IR

; Capture function definitions for the outline
(function_definition
  name: (identifier) @name) @item

; Capture basic block labels for the outline
(label) @item

; Capture global variable definitions for the outline
(global_variable_definition
  name: (identifier) @name) @item

; Capture type definitions for the outline
(type_definition
  name: (identifier) @name) @item

; Capture annotations (e.g., doc comments)
(comment) @annotation
```

### Auto-Indentation (`indents.scm`)
```scheme
; Auto-indentation for LLVM IR

; Indent after opening braces in function definitions and basic blocks
(function_definition "}" @end) @indent
(basic_block "}" @end) @indent

; Indent after opening parentheses in function calls and instructions
(call_instruction ")" @end) @indent
(instruction ")" @end) @indent
```

### Code Injections (`injections.scm`)
```scheme
; Code injections for LLVM IR

; Capture inline assembly blocks
(inline_assembly
  (assembly_code) @content)

; Capture metadata blocks
(metadata
  (metadata_content) @content)

; Capture embedded comments
(comment) @content
