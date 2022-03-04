local G = vim.g

local map = vim.api.nvim_set_keymap
G.lazygit_floating_window_winblend = 1 -- transparency of floating window
G.lazygit_floating_window_scaling_factor = 0.9 -- scaling factor for floating window
G.lazygit_floating_window_corner_chars = {'╭', '╮', '╰', '╯'} -- customize lazygit popup window corner characters
G.lazygit_floating_window_use_plenary = 0 -- use plenary.nvim to manage floating window if available
G.lazygit_use_neovim_remote = 1 -- fallback to 0 if neovim-remote is not installed

map('n', '<leader>lg', [[<cmd>LazyGit<CR>]],{noremap=true})
