if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'zig') == -1

" Vim syntax file
" Language: Zir
" Maintainer: Andrew Kelley
" Latest Revision: 00 April 2020

if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "zir"

syn region zirCommentLine start=";" end="$" contains=zirTodo,@Spell

syn region zirBlock start="{" end="}" transparent fold

syn keyword zirKeyword primitive fntype int str as ptrtoint fieldptr deref asm unreachable export

syn keyword zirTodo contained TODO

syn region zirString start=+c\?"+ skip=+\\\\\|\\"+ end=+"+ oneline contains=zirEscape,zirEscapeUnicode,zirEscapeError,@Spell

syn match zirEscapeError   display contained /\\./
syn match zirEscape        display contained /\\\([nrt\\'"]\|x\x\{2}\)/
syn match zirEscapeUnicode display contained /\\\(u\x\{4}\|U\x\{6}\)/

syn match zirDecNumber display "\<[0-9]\+\%(.[0-9]\+\)\=\%([eE][+-]\?[0-9]\+\)\="
syn match zirHexNumber display "\<0x[a-fA-F0-9]\+\%([a-fA-F0-9]\+\%([pP][+-]\?[0-9]\+\)\?\)\="
syn match zirOctNumber display "\<0o[0-7]\+"
syn match zirBinNumber display "\<0b[01]\+\%(.[01]\+\%([eE][+-]\?[0-9]\+\)\?\)\="

syn match zirGlobal display "[^a-zA-Z0-9_]\?\zs@[a-zA-Z0-9_]\+"
syn match zirLocal  display "[^a-zA-Z0-9_]\?\zs%[a-zA-Z0-9_]\+"

hi def link zirCommentLine Comment
hi def link zirTodo Todo

hi def link zirKeyword Keyword

hi def link zirString Constant

hi def link zirEscape Special
hi def link zirEscapeUnicode zirEscape
hi def link zirEscapeError Error

hi def link zirDecNumber Constant
hi def link zirHexNumber Constant
hi def link zirOctNumber Constant
hi def link zirBinNumber Constant

hi def link zirGlobal Ignore
hi def link zirLocal  Identifier

endif
