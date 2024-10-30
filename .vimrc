""
"" Plugins
""

" Check for and download Vim Plug
if ! filereadable($HOME . '/.vim/autoload/plug.vim')
  echo "Downloading Vim Plug, stand by"
  call system("curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim")
endif

" Register plugins
call plug#begin()

Plug 'catppuccin/vim',                     { 'as': 'catppuccin' }
Plug 'itchyny/lightline.vim',              { 'as': 'lightline'  }

Plug 'sheerun/vim-polyglot',               { 'as': 'polyglot'   }

Plug 'tpope/vim-commentary',               { 'as': 'commentary' }
Plug 'farmergreg/vim-lastplace',           { 'as': 'lastplace'  }

call plug#end()

" Used to handle dependencies in plugin configurations
function! IsPluginInstalled(name)
  return has_key(g:plugs, a:name) && isdirectory(g:plugs[a:name].dir)
endfunction

" Detect whether any plugins are installed
function! AreAllPluginsInstalled()
  for key in keys(g:plugs)
    if !IsPluginInstalled(key)
      return 0
    endif
  endfor
  return 1
endfunction

" Install all plugins if none are present
if !AreAllPluginsInstalled()
  PlugInstall
  quit
endif


""
"" Indentation and syntax
""

syntax on

filetype indent off

set nocindent
set noautoindent
set nosmartindent

set wrap
set linebreak
set nolist

set expandtab
set tabstop=8
set shiftwidth=2


""
"" Line numbering
""

set number
nnoremap <C-n> :set relativenumber!<CR>

