colo ron
highlight Normal ctermfg=white

"gvim settings"
set guifont=Monospace\ Bold\ 14
"set guioptions -=T"

set mouse=a

set number
set showcmd
set showmode
set title

set laststatus=2
set statusline+=%F\ %=%l\:%c\:%P
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

set clipboard=unnamed

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

highlight WhitespaceErrors ctermbg=DarkGray guibg=DarkGray
match WhitespaceErrors /\s\+$\|[^\t]\@<=\t\+/

nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

