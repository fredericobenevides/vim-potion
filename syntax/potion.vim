if exists("b:current_syntax")
  finish
endif

" echom "Our syntax highlighting code will go here."

" Keyword {{{
syntax keyword potionKeyword loop times to while
syntax keyword potionKeyword if elsif else
syntax keyword potionKeyword class return

highlight link potionKeyword Keyword
" }}}

" Function {{{
syntax keyword potionFunction print join string
highlight link potionFunction Function
" }}}

" Comments {{{
syntax match potionComment "\v#.*$"
highlight link potionComment Comment
" }}}

" Operator {{{
syntax match potionOperator "\v\:"
syntax match potionOperator "\v\."
syntax match potionOperator "\v\*"
syntax match potionOperator "\v/"
syntax match potionOperator "\v\+"
syntax match potionOperator "\v-"
syntax match potionOperator "\v\?"
syntax match potionOperator "\v\="
syntax match potionOperator "\v\*\="
syntax match potionOperator "\v/\="
syntax match potionOperator "\v\+\="
syntax match potionOperator "\v-\="

highlight link potionOperator Operator
" }}}

" Number {{{
syntax match potionNumber "\v[0-9]+"
syntax match potionNumber "\v[0-9.]+"
syntax match potionNumber "\v0x[a-zA-Z0-9]+"
highlight link potionNumber Number
" }}}

" String {{{
syntax region potionString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link potionString String
" }}}

let b:current_syntax = "potion"
