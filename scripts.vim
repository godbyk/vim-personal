" Detect C++ files based on emacs modeline
"
" Author: Kevin M. Godby <kevin@godby.org>

if did_filetype()
    finish
endif

let s:line1 = getline(1)

" This marker is used in OpenSceneGraph headers. I assume it's an emacs
" modeline, but I'm not sure.
"
" Examples:
" /* -*-c++-*- OpenSceneGraph - Copyright (C) 1998-2006 Robert Osfield
" // File based streams -*- C++ -*-
if s:line1 =~ "-\*- *[Cc]++ *-\*-"
    set filetype=cpp
endif

