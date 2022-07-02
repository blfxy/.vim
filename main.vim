" 防止重复加载
if get(s:, 'loaded', 0) != 0
	finish
else
	let s:loaded = 1
endif

" 取得本文件所在的目录
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
"  echo s:home

" 定义一个命令用来加载文件
command! -nargs=1 LoadScript exec 'so '.s:home.'/'.'<args>'

" 将 vim-init 目录加入 runtimepath
exec 'set rtp+='.s:home

" 将 ~/.vim 目录加入 runtimepath (有时候 vim 不会自动帮你加入）
"  set rtp+=~/.vim

" 加载键位映射
LoadScript config/keymaps.vim

" 加载基础配置
LoadScript config/general.vim

" 设定 tabsize
LoadScript config/plugins.vim

" 插件加载
LoadScript config/coc.vim

