
" Enable Lightline

if IsPluginInstalled('lightline')
    if IsPluginInstalled('catppuccin')
        let g:lightline = {'colorscheme': 'catppuccin_mocha'}
    endif
    set laststatus=2 noshowmode
endif

