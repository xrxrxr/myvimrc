set nu
set nocompatible
set tabstop=4
set shiftwidth=4
set laststatus=2
set encoding=utf-8
filetype off

set rtp+=~/.vim/bundle/vundle/



set t_Co=256
"let mapleader=','
let g:Powerline_symbols='fancy'
let g:Powerline_cache_enabled = 0
let g:user_emmet_leader_key='<C-e>' 
let g:acp_behaviorSnipmateLength = 1
let g:script_runner_key = '<F9>'
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_grep_search_word_highlight=1
map <Tab> :NERDTreeToggle<CR>
nmap <F12> :SCCompileRun<cr>
"key mapping for gtags
nnoremap <leader>gd :Unite gtags/def:
nnoremap <leader>gr :Unite gtags/ref:
nnoremap <leader>gg :Unite grep<CR>
nnoremap <silent><leader>gc :Unite gtags/context<CR>


if executable('ag')
	let g:unite_source_grep_command = 'ag'
	let g:unite_source_grep_default_opts = '--nogroup --nocolor --column --ignore=*.pyc --ignore=*.o --ignore=*.ko'
elseif executable('awk')
	let g:unite_source_grep_command='ack'
	let g:unite_source_grep_default_opts='--no-group --no-color -k -H'
endif


filetype plugin indent on
filetype indent on

