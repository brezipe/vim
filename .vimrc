" <leader> je defaultne zpetne lomitko \
" Pro zobrazeni <leader>:
"   :echo mapleader
" Zmena: let mapleader = ","
set shell=/bin/bash
" Setting up Vundle - the vim plugin bundler
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        !sudo apt install git curl vim-python-jedi exuberant-ctags 
        silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle
        " Fonts:
        silent !curl -sS https://webi.sh/nerdfont | sh
        silent !curl -sS https://webi.sh/vim-devicons | sh
        let iCanHazVundle=0
    endif

    set nocompatible              " be iMproved, required
    filetype off                  " required
    set rtp+=~/.vim/bundle/vundle/

    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'tpope/vim-fugitive'
    Plugin 'scrooloose/nerdtree'
    Plugin 'mattn/emmet-vim'
    Plugin 'dense-analysis/ale'
    Plugin 'sainnhe/vim-color-forest-night'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'junegunn/gv.vim'
    "Plugin 'nvie/vim-flake8'
    Plugin 'davidhalter/jedi-vim'
    "Plugin 'jmcantrell/vim-virtualenv'
    Plugin 'majutsushi/tagbar'
    "Plugin 'kqito/vim-easy-replace'
    "Plugin 'powerline/powerline'
    
    "PopUp terminal F12
    "https://vimawesome.com/plugin/vim-floaterm
    Plugin 'voldikss/vim-floaterm'
    let g:floaterm_width = 0.9
    let g:floaterm_height = 0.9
    nnoremap   <silent>   <F12>   :FloatermToggle<CR>
    tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>
    
    " Codeium AI
    "https://github.com/Exafunction/windsurf.vim
    "api key (:Codeium Auth)
    "eKxa9AbXi5EMHJDkp7gyhkAiwSJjSDCZb6jJlIaTceI
    "https://www.codeium.com/profile?response_type=token&redirect_uri=vim-show-auth-token&state=a&scope=openid%20profile%20email&redirect_parameters_type=query
    Plugin 'Exafunction/windsurf.vim'
    
    " GIT:
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    "problemy - Plugin 'rbong/vim-flog'
    
    Plugin 'airblade/vim-gitgutter'
    " Use fontawesome icons as signs
    "let g:gitgutter_sign_added = '+'
    "let g:gitgutter_sign_modified = '>'
    "let g:gitgutter_sign_removed = '-'
    "let g:gitgutter_sign_removed_first_line = '^'
    "let g:gitgutter_sign_modified_removed = '<'
    
    Plugin 'jreybert/vimagit'

    " netestovano:
    Plugin 'matze/vim-move'
    "Plugin 'phpactor/phpactor'
    
    " jako posledni:
    Plugin 'ryanoasis/vim-devicons'

    if iCanHazVundle == 0
        echo "Installing Vundles, please ignore key map error messages"
        echo ""
        :PluginInstall
    endif

    call vundle#end()

    set encoding=UTF-8
    set mouse=a
    set guifont=DroidSansMono\ Nerd\ Font\ 11
    set nu
    set tabstop=4
    set shiftwidth=4
    set expandtab
    set hidden

    " bn = next buffer, bv = previous buffer
    map bn :bnext<cr>
    map bv :bprevious<cr>
    map bb :buffers<cr>
    
    map tz :tabnext<cr>
    map tr :tabprev<cr>

    " Zobrazit 
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_powerline_fonts = 1

    "must be last
    filetype plugin indent on " load filetype plugins/indent settings
    "colorscheme solarized
    syntax on                      " enable syntax
    
    " open NERDTree when vim opens
    autocmd VimEnter * NERDTree
    " mirror NERDTree on tabs
    autocmd BufWinEnter * silent NERDTreeMirror
    
    " Exit Vim if NERDTree is the only window remaining in the only tab.
    autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | FloatermKill! | call feedkeys(":quit\<CR>:\<BS>") | endif
    
    " Close the tab if NERDTree is the only window remaining in it.
    autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif
    
    " If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
    autocmd BufEnter * if winnr() == winnr('h') && bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
    
    " Open the existing NERDTree on each new tab.
    autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif

    " Start NERDTree. If a file is specified, move the cursor to its window.
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

    nnoremap <leader>n :NERDTreeFocus<CR>
    nnoremap <C-n> :NERDTree<CR>
    nnoremap <C-t> :NERDTreeToggle<CR>
    nmap <F8> :TagbarToggle<CR>
    " Setting up Vundle - the vim plugin bundler end

    nnoremap <leader>gs :Magit<CR>   " git status
    nnoremap <Leader>gb :Gblame<CR>  " git blame

    

    " Important!!
    if has('termguicolors')
      set termguicolors
    endif
    
    " For dark version.
    set background=dark
    
    " For light version.
    "set background=light
    
    " Set contrast.
    " This configuration option should be placed before `colorscheme everforest`.
    " Available values: 'hard', 'medium'(default), 'soft'
    "let g:everforest_background = 'soft'
    
    " For better performance
    let g:everforest_better_performance = 1
    
    colorscheme everforest

    " devicons: reasonable defaults from webinstall.dev/vim-devicons
    source ~/.vim/plugins/devicons.vim
    set termwinsize=6x0
    nnoremap <leader>x :bo term<cr>
    
    " nezalamovat dlouhe radky:
    "set nowrap
    "set wrap

    " W - write as sudo
    command! W sudo tee % > /dev/null
