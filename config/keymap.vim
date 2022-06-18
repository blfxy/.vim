let mapleader = ','

" 插入模式下光标移动
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" 取消搜索结果高亮
noremap ns <ESC>:nohlsearch<CR>

" 保存映射
inoremap <c-s> <ESC>:w <CR>
nnoremap <c-s> <ESC>:w <CR>
