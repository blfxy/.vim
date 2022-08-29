
" 关闭vi的兼容模式(兼容模式下会让vim关闭所有的扩展，丢掉vim很多强大的功能去兼容vi)
set nocompatible
"  indent 允许删除自动缩进的内容 / eol 允许删除换行符 / start 允许删除进入插入模式前已有的内容
set backspace=indent,eol,start

set helplang=cn

"命令历史记录次数
set history=30

" 空格代替Tab
set expandtab
" tab键缩进4个空格
set tabstop=4
"自动缩进长度4个空格
set shiftwidth=4

"继承前一行缩进方式
set autoindent

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

" 自动保存
set autowrite
" 自动读取文件(如果文本改变，自动更新）
set autoread

" 记住上次文件编辑位置
autocmd BufReadPost *
    \ if line("'\"")>0&&line("'\"")<=line("$") |
    \   exe "normal g'\"" |
    \ endif

