" Vim syntax file
" Language: LaTeX 3
" Maintainer: Kevin M. Godby <kevin@godby.org>
" Latest Revision: 19 October 2011

if exists("b:current_syntax")
    finish
endif

" Keywords {{{

" Keywords can contain colons
setlocal iskeyword+=:

" l3skip package macros {{{
"syn match l3skip_macros "x"
syn match l3skip_macros "\\dim_new:[Nc]"
syn match l3skip_macros "\\dim_[g]zero:[Nc]"
syn match l3skip_macros "\\dim_[g]add:[Nc]n"
syn match l3skip_macros "\\dim_[g]set:[Nc]n"
syn match l3skip_macros "\\dim_[g]set_eq:[Nc][Nc]"
syn match l3skip_macros "\\dim_set_max:[Nc]n"
syn match l3skip_macros "\\dim_set_min:[Nc]n"

highlight link l3skip_macros Statement

" }}}

" General package macros {{{
syn match l3_macros "\\[A-Za-z_]*:[DNncVvoxfTFpw]*"
highlight link l3_macros Statement
" }}}

" }}}

" Variables {{{
syn match bool_vars   "\\[lgc]_[A-Za-z_]*_bool"
syn match box_vars    "\\[lgc]_[A-Za-z_]*_box"
syn match clist_vars  "\\[lgc]_[A-Za-z_]*_clist"
syn match coffin_vars "\\[lgc]_[A-Za-z_]*_coffin"
syn match dim_vars    "\\[lgc]_[A-Za-z_]*_dim"
syn match fp_vars     "\\[lgc]_[A-Za-z_]*_fp"
syn match int_vars    "\\[lgc]_[A-Za-z_]*_int"
syn match prop_vars   "\\[lgc]_[A-Za-z_]*_prop"
syn match seq_vars    "\\[lgc]_[A-Za-z_]*_seq"
syn match skip_vars   "\\[lgc]_[A-Za-z_]*_skip"
syn match stream_vars "\\[lgc]_[A-Za-z_]*_stream"
syn match tl_vars     "\\[lgc]_[A-Za-z_]*_tl"

highlight link bool_vars   Identifier
highlight link box_vars    Identifier
highlight link clist_vars  Identifier
highlight link coffin_vars Identifier
highlight link dim_vars    Identifier
highlight link fp_vars     Identifier
highlight link int_vars    Identifier
highlight link prop_vars   Identifier
highlight link seq_vars    Identifier
highlight link skip_vars   Identifier
highlight link stream_vars Identifier
highlight link tl_vars     Identifier

" }}}

" Constants {{{
syn match numbered_params "#[1-9]"
highlight link numbered_params Special
" }}}

" Comments {{{
syn match parens "[{}]"
syn match comments "[^\\]%.*"
syn match comments "^%.*"
highlight link parens Comment
highlight link comments Comment
" }}}

