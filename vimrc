colo evening

set mouse=a

set number
set showmode
set ruler
set visualbell

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

