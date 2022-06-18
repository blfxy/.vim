" =======coc=======
let g:coc_global_extensions = 
    \ [ 
    \ 'coc-pairs', 
    \ 'coc-explorer', 
    \ 'coc-translator', 
    \ 'coc-vimlsp', 
    \ 'coc-snippets', 
    \ 'coc-json', 
    \ 'coc-rust-analyzer', 
    \ 'coc-toml',
    \ ]

set hidden
set updatetime=300

" tab键补全
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" enter键确认补全
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
    
" nvim使用c-space vim使用c-@ 显示补全 
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" 错误信息跳转快捷建
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" 方法跳转 
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" 高亮当前光标所有引用
autocmd CursorHold * silent call CocActionAsync('highlight')

" 重名名 
" nmap <leader>rn <Plug>(coc-rename)

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)