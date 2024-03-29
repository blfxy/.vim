"============================================插件及配置============================================================================
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rust-lang/rust.vim'
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdcommenter'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'Yggdroot/indentLine'
Plug 'voldikss/vim-floaterm'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
"  Plug 'glepnir/dashboard-nvim'
call plug#end()

" indentLine
let g:indentLine_setColors = 0
let g:indentLine_char = 'c'
let g:indentLine_char_list = ['|', '¦']

" nerdcommenter配置
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDToggleCheckAllLines = 1
let g:NERDCompactSexyComs = 1

" rainbow
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" coc-explorer(文件树)
nmap <leader>t <Cmd>CocCommand explorer<CR>

" vim-airline
let g:airline_theme='dark'

" rust.vim rust保存自动格式化
let g:rustfmt_autosave = 1

" coc-prettier
" command! -nargs=0 Prettier :CocCommand prettier.formatFile
" vmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

" vim-floaterm
let g:floaterm_keymap_kill   = '<F4>'
let g:floaterm_keymap_new    = '<F5>'
let g:floaterm_keymap_prev   = '<F6>'
let g:floaterm_keymap_next   = '<F7>'
let g:floaterm_keymap_toggle = '<F8>'

"LeaderF
let g:Lf_WorkingDirectoryMode = 'AF'
let g:Lf_RootMarkers = ['.git', '.toml']
let g:Lf_WindowPosition = 'popup'
let g:Lf_ShortcutF = '<C-P>'
