
" Enable colorscheme with transparent background

if IsPluginInstalled('catppuccin')
    set termguicolors
    colorscheme catppuccin_mocha

    highlight Normal     guibg=NONE ctermbg=NONE
    highlight CursorLine guibg=NONE ctermbg=NONE
    highlight Comment    cterm=italic
endif

