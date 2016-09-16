set cindent
set autoindent
syntax on
set wildmenu
filetype on
filetype plugin on
filetype indent on
set nu
setlocal noswapfile
set bufhidden=hide
inoremap jk <esc>
imap df <esc>:x
set noswapfile
" 代码折叠
set foldmethod=marker
" 共享外部剪贴板
map <F6> zM    
" 关闭所有折
map <F7> zR    
" 打开所有折叠
map yaa ggvG"*y
map cv ggdG"*p
"copy all
imap [[ {<esc>o}<esc>O
imap iii i++
imap jjj j++
imap kkk k++

imap ,, <<
imap .. >>
set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为
set foldclose=all " 设置为自动关闭折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" 用空格键来开关折叠


set encoding=utf-8  
set termencoding=utf-8  
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese   

set langmenu=zh_CN.utf-8  
source $VIMRUNTIME/delmenu.vim  
source $VIMRUNTIME/menu.vim  
nnoremap K a<CR><Esc> 
""""""""""""""""""""" Vundle
set nocompatible
filetype off


set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Valloric/ListToggle'
Bundle 'scrooloose/syntastic'


filetype plugin indent on
""""""""""""""""""""" Vundle
"""""""omnicppcomplete
set nocp
filetype plugin on
""""
""""set tab
set tabstop=2 "set tab
set shiftwidth=2 "set >> <<
set smarttab

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler_options = ' -std=c++11 -Wall'
