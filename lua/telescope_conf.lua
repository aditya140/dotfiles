require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        mirror = false,
        preview_width = 0.65
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_soter,
    path_display = {"absolute"},
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}

local map =vim.api.nvim_set_keymap 

map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>",{noremap=true})
map("n", "<leader>fl", "<cmd>lua require('telescope.builtin').live_grep()<cr>",{noremap=true})
map("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>",{noremap=true})
map("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>",{noremap=true})
map("n", "<leader>fo", "<cmd>lua require('telescope.builtin').oldfiles()<cr>",{noremap=true})

map("n", "<leader>fg", "<cmd>lua require('telescope.builtin').git_files()<cr>",{noremap=true})

map("n", "<Leader>fw", [[<Cmd> Telescope live_grep<CR>]],{noremap=true})
