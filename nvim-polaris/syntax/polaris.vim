" Syntax highlighting for Polaris
" Language: plr
" Maintainer: Andy
" License: MIT

if exists("b:current_syntaxtax")
    if b:current_syntaxtax == "plr"
        finish
    endif
endif

let b:did_ftplugin = 1

setlocal autoindent
setlocal smarttab
setlocal expandtab

setlocal tabstop=4
setlocal shiftwidth=4

" Syntax hightlighing 
syntax match plrInt "[0-9]+" display
syntax match plrFloat "-?\d+(\.\d+)?([eE][+-]?\d+)?" display
syntax match plrHex "0[xX][0-9a-fA-F]+" display
syntax match plrOct "0o[1-7][0-7]+" display
syntax match plrBin "0b[0-1]+" display
syntax match plrStr '[^\"\\]*(?:\\.[^\"\\]*)*' display
syntax match plrIdent "[a-zA-Z_][0-9a-zA-Z_]*" display
syntax match plrComment /\/\/[^\n]*/ display

syntax keyword plrConst true false null
syntax keyword plrBuiltinConst True False None NotImplemented Ellipsis
syntax keyword plrBuiltinConst __debug__ copyright credits license
syntax keyword plrBuiltinConst quit exit

syntax keyword plrStatement import from return
syntax match plrStatement "$declare"

syntax keyword plrBuiltinFunc abs aiter all any anext ascii
syntax keyword plrBuiltInFunc bin bool breakpoint bytearray bytes
syntax keyword plrBuiltInFunc callable chr classmethod compile complex
syntax keyword plrBuiltInFunc delattr dict dir divmod
syntax keyword plrBuiltInFunc enumerate eval exec
syntax keyword plrBuiltInFunc filter float format frozenset
syntax keyword plrBuiltInFunc getattr globals
syntax keyword plrBuiltInFunc hasattr hash help hex
syntax keyword plrBuiltInFunc id input int isinstance issubclass iter
syntax keyword plrBuiltInFunc len list locals
syntax keyword plrBuiltInFunc map max memoryview min
syntax keyword plrBuiltInFunc next
syntax keyword plrBuiltInFunc object oct open ord
syntax keyword plrBuiltInFunc pow print property
syntax keyword plrBuiltInFunc range repr reversed round
syntax keyword plrBuiltInFunc set setattr slice sorted staticmethod str sum super
syntax keyword plrBuiltInFunc tuple type
syntax keyword plrBuiltInFunc vars
syntax keyword plrBuiltInFunc zip
syntax keyword plrBuiltInFunc __import__

highlight link plrInt Number
highlight link plrFloat Float
highlight link plrHex Number
highlight link plrOct Number
highlight link plrBin Number
highlight link plrStr String
highlight link plrIdent Identifier

highlight link plrConst Constant
highlight link plrStatement Statement
highlight link plrBuiltinConst Constant
highlight link plrBuiltinFunc Function

highlight link plrComment String

let b:current_syntaxtax = "plr"
