colo ron
highlight Normal ctermfg=white

set mouse=a

set number
set showcmd
set showmode
set title

set laststatus=2
set statusline+=%F\ %l\:%c
highlight StatusLine ctermbg=none cterm=bold

set nowrap
set linebreak
set display=lastline

set showmatch
set matchpairs=(:),{:},[:],<:>

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround
set smarttab
set autoindent

set ignorecase
set wrapscan

set clipboard=unamed

"Use J and K to scroll by paragraphs"
noremap J {
noremap K }

noremap ` :noh<CR>

set undofile
set undolevels=100
set undoreload=100

inoremap <Tab> <c-r>=TabOrAuto()<cr>
inoremap <S-Tab> <c-p>

"Return <C-n> for autocomplete on words, <tab> otherwise"
function! TabOrAuto()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<C-n>"
    endif
endfunction

highlight WhitespaceErrors ctermbg=Gray guibg=Gray
match WhitespaceErrors /\s\+$\|[^\t]\@<=\t\+/
