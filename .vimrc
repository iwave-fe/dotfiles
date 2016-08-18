"=============================================================================
"    Description: .vimrc 個人設定
"         Author: iwave-fe
"  Last Modified: 2016-08-12 18:00
"        Version: 0.00
"=============================================================================

"----------------------------------------
"追加定義：iwave-fe
"----------------------------------------
" タブ関連
set expandtab
set smarttab
" タブサイズはファイル毎に設定したいが、有効にならない
set tabstop=2
set shiftwidth=2
set softtabstop=2
" 自動的にインデントする
set autoindent
set smartindent
" 行末の半角スペース削除
autocmd BufWritePre * :%s/\s\+$//ge
" 行番号表示
set number
" クリップボード
set clipboard=unnamed,autoselect
" Backspace
set backspace=indent,eol,start
" ステータスライン
set laststatus=2
set statusline=%<%f\ %m\ %r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=\ (%v,%l)/%L%8P\
" 検索
set hlsearch
set incsearch

"----------------------------------------
" 内部エンコーディング指定
"----------------------------------------
if has('unix')
	set fileformat=unix
	set fileformats=unix,dos,mac
	set fileencoding=utf-8
	set fileencodings=utf-8,iso-2202-jp,cp932,euc-jp
elseif has('win32')
	set fileformat=dos
	set fileformats=dos,unix,mac
	set fileencoding=utf-8
	set fileencodings=iso-2202-jp,utf-8,euc-jp,cp932
endif

"----------------------------------------
" ノーマルモード
"----------------------------------------
nmap <C-p> :bp<CR>
nmap <C-n> :bn<CR>
nmap <ESC><ESC> :noh<CR>
nmap <C-a> ^
nmap <C-e> $
nmap <C-h> :Unite tab<CR>

"----------------------------------------
" 各種プラグイン設定
"----------------------------------------
if &compatible
  set nocompatible               " Be iMproved
endif
set runtimepath^=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.cache/dein'))

" call dein#add('/.vim/dein/')
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})

call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neomru.vim')

call dein#add('scrooloose/syntastic')
call dein#add('scrooloose/nerdtree')
call dein#add('tpope/vim-endwise')
call dein#add('tomtom/tcomment_vim')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('itchyny/lightline.vim')

call dein#end()

if dein#check_install()
  call dein#install()
endif

filetype off
syntax on

" neocomplete
  let g:neocomplete#enable_at_startup = 1
  let g:neocomplete#enable_camel_case_completion = 1
  let g:neocomplete#enable_underbar_completion = 1
  let g:neocomplete#smart_case = 1
  let g:neocomplete#max_list = 20
  let g:neocomplete#syntax#min_keyword_length = 3
  let g:neocomplete#manual_completion_start_length = 5
  let g:neocomplete#caching_percent_in_statusline = 1
  let g:neocomplete#enable_skip_completion = 1
  let g:neocomplete#skip_input_time = '0.5'

" syntastic
  let g:syntastic_check_on_open = 1
  let g:syntastic_auto_jump = 1
  let g:syntastic_enable_signs = 1
  let g:syntastic_echo_current_error = 1
  let g:syntastic_auto_loc_list = 2
  let g:syntastic_enable_highlighting = 1
  let g:syntastic_php_phpcs_args = '--report=csv --standard=CakePHP'
  let g:syntastic_php_phpcs_args = '-l'
  " let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
  let g:syntastic_php_checkers=['php']
  let g:syntastic_javascript_checkers=['jshint']
  let g:syntastic_ruby_checkers=['rubocop']
  let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['ruby', 'php'] }
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

" vim-indent-guides
" let g:indent_guides_enable_on_vim_startup = 1

 " unite.vim
 " 入力モードで開始
 " let g:unite_enable_start_insert=1
 noremap <C-P> :Unite buffer<CR>
 noremap <C-N> :Unite -buffer-name=file file<CR>
 " 今開いているファイルのディレクトリ
 noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
 " ESC 2回で終了
 au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
 au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

" netrw を有効化(Vim同梱のプラグイン)
filetype plugin indent on
filetype indent on
filetype on
