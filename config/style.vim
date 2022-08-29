set encoding=utf-8

" 代码高亮
syntax enable

"配色风格
colorscheme gruvbox
"  背景颜色
set background=dark
"  背景透明
hi Normal ctermbg=NONE

" 突出当前行/列
set cursorline
set cursorcolumn
" highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
" highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE

" 显示行号 相对行号
set number
set relativenumber

" 距底部5行
set scrolloff=5

" 光标配置
" 1 -> blinking block  闪烁的方块
" 2 -> solid block  不闪烁的方块
" 3 -> blinking underscore  闪烁的下划线
" 4 -> solid underscore  不闪烁的下划线
" 5 -> blinking vertical bar  闪烁的竖线
" 6 -> solid vertical bar  不闪烁的竖线
if &term =~ "xterm"
    " INSERT mode
    let &t_SI = "\<Esc>[5 q" . "\<Esc>]12;rgb:/FF/FF/FF\x7"
    " REPLACE mode
    " let &t_SR = "\<Esc>[3 q" . "\<Esc>]12;rgb:/FF/FF/FF\x7"
    " NORMAL mode
    let &t_EI = "\<Esc>[1 q" . "\<Esc>]12;rgb:/FF/FF/FF\x7"
endif
