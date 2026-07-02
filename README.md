# vim-random-statusline

随机深色调 statusline 配色插件。每次启动 Vim 随机选取一组深色背景色。

## 安装

vim-plug:
```vim
Plug 'lyuangg/vim-random-statusline'
```

lazy.nvim:
```lua
{ 'lyuangg/vim-random-statusline' }
```

## 要求

- `set termguicolors` 或 GUI Vim

## 配置

无需配置，安装即用。每次启动自动随机选色。

## 自定义配色

```vim
let g:random_statusline_colors = [
\ ['#1e3a8a','#172554'],
\ ['#854d0e','#713f12'],
\ ]
```
