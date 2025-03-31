-- lua/core/plugins.lua
vim.cmd [[
  call plug#begin()

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
  Plug 'preservim/nerdtree'
  Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
  Plug 'lambdalisue/battery.vim'
  Plug 'OmniSharp/omnisharp-vim'
  Plug 'dense-analysis/ale'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'bing6000s/asyncomplete.vim'
  Plug 'MeanDeringProgrammer/render-markdown.nvim'
  Plug 'nvim-lua/plenary.nvim'
  call plug#end()
]]

