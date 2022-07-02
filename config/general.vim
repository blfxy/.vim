set encoding=utf-8

" 关闭vi的兼容模式(兼容模式下会让vim关闭所有的扩展，丢掉vim很多强大的功能去兼容vi)
set nocompatible

set helplang=cn

"配色风格
colorscheme gruvbox
set background=dark

"命令历史记录次数
set history=30

" 代码高亮
syntax enable

" 突出当前行/列
set cursorline
set cursorcolumn
" highlight CursorLine   cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
" highlight CursorColumn cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE

" 空格代替Tab
set expandtab
" tab键缩进4个空格
set tabstop=4
"自动缩进长度4个空格
set shiftwidth=4

"继承前一行缩进方式
set autoindent

" 显示行号 相对行号
set number
set relativenumber

" 距底部5行
set scrolloff=5

" 自动换行
set wrap

" 输入命令按tab建提示
set wildmenu

" 增强自带的 ? 和 ／ 搜索功能， 并且支持更加高级的正则表达式匹配
set incsearch
" 高亮搜索内容
set hlsearch
" 查找忽略大小写
set ignorecase
" 如果有一个大写字母，则切换到大小写敏感查找
set smartcase

" filetype vim会对文件自动检测文件类型;
" plugin 会在Vim的运行时环境目录下加载该类型相关的插件;
" 比如为了让Vim更好的支持Python编程，需要下载一些Python相关的插件，此时就必须设置plugin为on;
" indent 不同类型文件有不同的缩进方式;
" 如Python就要求使用4个空格作为缩进,c使用两个tab作为缩进;
" 那么indent就可以为不同文件类型选择合适的缩进方式了;
" 在Vim的安装目录的indent目录下看到定义了很多缩进相关的脚本
filetype plugin indent on

" 自动保存
set autowrite
" 自动读取文件(如果文本改变，自动更新）
set autoread

" 记住上次文件编辑位置
autocmd BufReadPost *
    \ if line("'\"")>0&&line("'\"")<=line("$") |
    \   exe "normal g'\"" |
    \ endif

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