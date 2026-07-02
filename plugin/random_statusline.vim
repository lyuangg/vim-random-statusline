" random_statusline.vim - Random dark color scheme for statusline
" Maintainer: linyuan
" Version:    1.0

if exists('g:loaded_random_statusline')
  finish
endif
let g:loaded_random_statusline = 1

if !has('termguicolors') && !has('gui_running')
  finish
endif

" 深色调配色池 [StatusLine, StatusLineNC]
let s:default_colors = [
\ ['#1e3a8a','#172554'],
\ ['#854d0e','#713f12'],
\ ['#166534','#14532d'],
\ ['#6b21a8','#581c87'],
\ ['#7f1d1d','#450a0a'],
\ ['#9a3412','#7c2d12'],
\ ['#0f766e','#134e4a'],
\ ['#365314','#1a2e05'],
\ ]

let s:colors = get(g:, 'random_statusline_colors', s:default_colors)

function! s:SetColors()
  call srand(localtime())
  let s:idx = rand() % len(s:colors)
  execute 'highlight StatusLine gui=NONE cterm=NONE guibg=' . s:colors[s:idx][0] . ' guifg=#e8eef7'
  execute 'highlight StatusLineNC gui=NONE cterm=NONE guibg=' . s:colors[s:idx][1] . ' guifg=#cbd5e1'
endfunction

" colorscheme 切换后重新设置
autocmd ColorScheme * call s:SetColors()

" Vim 启动完成后最终设置（确保在所有插件和 colorscheme 之后）
autocmd VimEnter * call s:SetColors()

" 首次加载执行
call s:SetColors()
