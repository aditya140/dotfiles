--require('gitsigns').setup {
--  signs = {
--    add = {hl = "DiffAdd", text = "+", numhl = "GitSignsAddNr"},
--    -- add = {hl = "DiffAdd", text = "|", numhl = "GitSignsAddNr"},
--    -- change = {hl = "DiffChange", text = "▌", numhl = "GitSignsChangeNr"},
--    change = {hl = "DiffChange", text = "x", numhl = "GitSignsChangeNr"},
--    delete = {hl = "DiffDelete", text = "_", numhl = "GitSignsDeleteNr"},
--    topdelete = {hl = "DiffDelete", text = "‾", numhl = "GitSignsDeleteNr"},
--    changedelete = {hl = "DiffChange", text = "~", numhl = "GitSignsChangeNr"}
--  },
--  numhl = true,
--  keymaps = {
--    -- Default keymap options
--    noremap = true,
--    buffer = true,
--    ["n ]c"] = {expr = true, '&diff ? \']c\' : \'<cmd>lua require"gitsigns".next_hunk()<CR>\''},
--    [" [c"] = {expr = true, '&diff ? \'[c\' : \'<cmd>lua require"gitsigns".prev_hunk()<CR>\''},
--    ["n <leader>hs"] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
--    ["n <leader>hu"] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
--    ["n <leader>hr"] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
--    ["n <leader>hp"] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
--    ["n <leader>hb"] = '<cmd>lua require"gitsigns".blame_line()<CR>'
--  },
--  watch_index = {
--      interval = 100
--  },
--  sign_priority = 5,
--  status_formatter = nil, -- Use default
--  current_line_blame = false,
--  word_diff = true,
--  diff_opts = {
--      internal = true,
--  }
--}




require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '+', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = 'x', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
  signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
  numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- Toggle with `:Gitsigns togle_linehl`
  word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
  watch_gitdir = {
    interval = 1000,
    follow_files = true
  },
  attach_to_untracked = true,
  current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
    ignore_whitespace = false,
  },
  current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000,
  preview_config = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  yadm = {
    enable = false
  },
}
