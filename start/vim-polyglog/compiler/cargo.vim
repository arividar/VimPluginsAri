if !exists('g:polyglot_disabled') || index(g:polyglot_disabled, 'rust') == -1

" Vim compiler file
" Compiler:         Cargo Compiler
" Maintainer:       Damien Radtke <damienradtke@gmail.com>
" Latest Revision:  2014 Sep 24
" For bugs, patches and license go to https://github.com/rust-lang/rust.vim

if exists('current_compiler')
    finish
endif
runtime compiler/rustc.vim
let current_compiler = "cargo"

" vint: -ProhibitAbbreviationOption
let s:save_cpo = &cpo
set cpo&vim
" vint: +ProhibitAbbreviationOption

if exists(':CompilerSet') != 2
    command -nargs=* CompilerSet setlocal <args>
endif

if exists('g:cargo_makeprg_params')
    execute 'CompilerSet makeprg=cargo\ '.escape(g:cargo_makeprg_params, ' \|"').'\ $*'
else
    CompilerSet makeprg=cargo\ $*
endif

augroup RustCargoQuickFixHooks
    autocmd!
    autocmd QuickFixCmdPre make call cargo#quickfix#CmdPre()
    autocmd QuickFixCmdPost make call cargo#quickfix#CmdPost()
augroup END

" Ignore general cargo progress messages
CompilerSet errorformat+=
            \%-G%\\s%#Downloading%.%#,
            \%-G%\\s%#Compiling%.%#,
            \%-G%\\s%#Finished%.%#,
            \%-G%\\s%#error:\ Could\ not\ compile\ %.%#,
            \%-G%\\s%#To\ learn\ more\\,%.%#,
            \%-Gnote:\ Run\ with\ \`RUST_BACKTRACE=%.%#,
            \%.%#panicked\ at\ \\'%m\\'\\,\ %f:%l:%c

" vint: -ProhibitAbbreviationOption
let &cpo = s:save_cpo
unlet s:save_cpo
" vint: +ProhibitAbbreviationOption

" vim: set et sw=4 sts=4 ts=8:

endif
