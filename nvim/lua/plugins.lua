local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

require "paq" {
    "savq/paq-nvim";                  -- Let Paq manage itself
    "neovim/nvim-lspconfig";          -- Mind the semi-colons
    "hrsh7th/nvim-compe";
    "onsails/lspkind-nvim";
    "folke/tokyonight.nvim";
    'BurntSushi/ripgrep';
    'nvim-lua/popup.nvim';
    'mhinz/vim-startify';
    'kdav5758/TrueZen.nvim';
    'folke/which-key.nvim';
    'kdheepak/lazygit.nvim';
    'akinsho/bufferline.nvim';
    'williamboman/nvim-lsp-installer';
    'hrsh7th/vim-vsnip';
    'rafamadriz/friendly-snippets';
    'akinsho/toggleterm.nvim';
    'L3MON4D3/LuaSnip';
    'dstein64/vim-startuptime';
    'svermeulen/vimpeccable';
    'nvim-lua/plenary.nvim';
    'nvim-lua/popup.nvim';
    'nvim-telescope/telescope.nvim';
    'kyazdani42/nvim-tree.lua';
    'nvim-lualine/lualine.nvim';
    'kyazdani42/nvim-web-devicons';
    'tpope/vim-fugitive';
    {'nvim-treesitter/nvim-treesitter',run='TSUpdate'};
    {"lervag/vimtex", opt=true};      -- Use braces when passing options
    'jiangmiao/auto-pairs';
    'windwp/nvim-autopairs';
    'tpope/vim-surround';
    'terrortylor/nvim-comment'; 
    'echasnovski/mini.nvim';
    {'junegunn/fzf', run = fn['fzf#install']};
    'junegunn/fzf.vim';
    'easymotion/vim-easymotion';
    'lewis6991/gitsigns.nvim';
}


