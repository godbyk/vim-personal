" Vim syntax file
" Language: Google log files
" Maintainer: Kevin M. Godby <kevin@godby.org>
" Latest Revision: 6 November 2011

if exists("b:current_syntax")
    finish
endif

" Keywords {{{

" Keywords can contain colons
"setlocal iskeyword+=:

" TODO read the `Log line format:' line to determine how to parse the log file
" lines

syn match error_level "^[IWEF]"
syn match timestamp "\d\d\d\d \d\d:\d\d:\d\d.\d\d\d\d\d\d"
"syn match thread "\d\+"
"syn match filename "\(.*\):"
"syn match line ":\(\d\+\)\]"

highlight def link error_level Error
hi def link timestamp Type

"syn match info_msg "^I.*$"
"highlight link info_msg Statement

"syn match warning_msg "^W.*$"
"highlight link warning_msg 

"syn match error_msg "^[EF].*$"
"highlight link error_msg Error

"syn match prefix "^[IWEF].*:[0-9]\+\] "
"highlight link prefix Comment

