:inoremap <c-s> <Esc>:w<CR>
:noremap <c-s> <Esc>:w<CR>

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

autocmd BufWritePre * :FixWhitespace

autocmd Filetype php setlocal shiftwidth=4 ts=4 sts=0 sw=4 expandtab

nnoremap <leader>n :NERDTreeToggle <cr>
nnoremap <leader>m :MRU <cr>

set number
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=2
set hlsearch
let NERDTreeIgnore = ['\.pyc$']
syntax on
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:jsx_ext_required = 0

set smartindent

set clipboard=unnamed

set laststatus=2
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%f

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 3
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'
let g:syntastic_javascript_eslint_args = ['--fix']

let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_ruby_rubocop_exec = 'bin/rubocop'
let g:syntastic_ruby_rubocop_args = ['--cache']

set autoread

au BufWritePost *.js checktime
au BufWritePost *.jsx checktime
au BufWritePost *.rb checktime

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

let g:airline_theme='lucius'

let g:closetag_html_style=1
:au Filetype html,xml,xsl,js,jsx source ~/.vim/vim-addons/github-alvan-vim-closetag/plugin/closetag.vim
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js"

let g:mta_filetypes = {
   \ 'html' : 1,
   \ 'xhtml' : 1,
   \ 'xml' : 1,
   \ 'js' : 1,
   \ 'jsx' : 1,
   \ 'javascript.jsx' : 1,
   \}

"echo 'runtime! ftplugin/html.vim' > ~/.vim/ftplugin/cjsx.vim

fun! SetupVAM()
 let c = get(g:, 'vim_addon_manager', {})
 let g:vim_addon_manager = c
 let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'
 " Force your ~/.vim/after directory to be last in &rtp always:
 " let g:vim_addon_manager.rtp_list_hook = 'vam#ForceUsersAfterDirectoriesToBeLast'
 " most used options you may want to use:
 " let c.log_to_buf = 1
 " let c.auto_install = 0
 let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
 if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
   execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '
       \       shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
 endif
 " This provides the VAMActivate command, you could be passing plugin names, too
 call vam#ActivateAddons([], {})
endfun
call SetupVAM()
" ACTIVATING PLUGINS
" OPTION 1, use VAMActivate
VAMActivate mru
VAMActivate fugitive ctrlp Syntastic EasyMotion Solarized
VAMActivate github:scrooloose/nerdtree
VAMActivate rails
VAMActivate html5
VAMActivate ag
VAMActivate trailing-whitespace
VAMActivate molokai
VAMActivate github:mustache/vim-mustache-handlebars
VAMActivate github:scrooloose/syntastic
VAMActivate github:powerline/powerline
VAMActivate github:Valloric/YouCompleteMe
VAMActivate github:ternjs/tern_for_vim
" VAMActivate github:Shougo/deoplete.nvim
VAMActivate github:carlitux/deoplete-ternjs
VAMActivate github:roxma/nvim-yarp
VAMActivate github:roxma/vim-hug-neovim-rpc
VAMActivate github:Shougo/neoinclude.vim
VAMActivate github:jwalton512/vim-blade
VAMActivate github:StanAngeloff/php.vim
VAMActivate github:airblade/vim-gitgutter
VAMActivate github:mxw/vim-jsx
VAMActivate github:isRuslan/vim-es6
VAMActivate github:pangloss/vim-javascript
VAMActivate github:vim-syntastic/syntastic
VAMActivate github:kewah/vim-stylefmt
VAMActivate github:vim-airline/vim-airline
" VAMActivate github:alvan/vim-closetag
VAMActivate github:Valloric/MatchTagAlways
VAMActivate github:tpope/vim-surround
VAMActivate github:vim-airline/vim-airline-themes
VAMActivate github:tpope/vim-rails
VAMActivate github:galooshi/vim-import-js
VAMActivate github:ngmy/vim-rubocop
VAMActivate github:mhinz/vim-grepper


" OPTION 2: use call vam#Acmxw/vim-jsxtivateAddons
"call vam#ActivateAddons([PLUGIN_NAME], {})
" use <c-x><c-p> to complete plugin names
" OPTION 3: Create a file ~/.vim-srcipts putting a PLUGIN_NAME into each line
" See lazy loading plugins section in README.md for details
"call vam#Scripts('~/.vim-scripts', {'tag_regex': '.*'})

" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
"
" au FocusLost * :wa

function! s:MkNonExDir(file, buf)
   if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
       let dir=fnamemodify(a:file, ':h')
       if !isdirectory(dir)
           call mkdir(dir, 'p')
       endif
   endif
endfunction
augroup BWCCreateDir
   autocmd!
   autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

