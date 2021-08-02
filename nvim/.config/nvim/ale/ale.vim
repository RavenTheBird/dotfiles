" Error checking "
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

" Format on save " 
let g:ale_fix_on_save = 1

" ALE Fixers "
let g:ale_fixers = {
\	'typescript': ['eslint'],
\	'javascript': ['eslint']
\}

" ALE Linters "
let g:ale_linters = {}
let g:ale_linters.typescript = ['eslint', 'tsserver']
let g:ale_linters.javascript = ['eslint', 'tsserver']
