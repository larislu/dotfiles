"colo koehler"
"highlight Normal ctermfg=white"
let base16colorspace=256
"color base16-darktooth"

"gvim settingss"
set guifont=Monospace\ Bold\ 14
"set guioptions -=T"

set mouse=a
set showcmd

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

set clipboard=unnamedplus
set wildmenu

"Use J and K to scroll by paragraphs"
nnoremap K {
nnoremap J }

set hlsearch
noremap ` :noh<CR>

set splitbelow
set splitright
nnoremap <C-w> <C-w>w

try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
    set undolevels=100
    set undoreload=100
catch
endtry

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

"Deletes trailing white spaces"
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap $ ^
nnoremap ^ $
