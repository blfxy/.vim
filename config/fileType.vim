
" filetype vim会对文件自动检测文件类型;
" plugin 会在Vim的运行时环境目录下加载该类型相关的插件;
" 比如为了让Vim更好的支持Python编程，需要下载一些Python相关的插件，此时就必须设置plugin为on;
" indent 不同类型文件有不同的缩进方式;
" 如Python就要求使用4个空格作为缩进,c使用两个tab作为缩进;
" 那么indent就可以为不同文件类型选择合适的缩进方式了;
" 在Vim的安装目录的indent目录下看到定义了很多缩进相关的脚本
filetype plugin indent on