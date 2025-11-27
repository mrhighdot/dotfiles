return {
  'sainnhe/gruvbox-material',
  lazy = false,
  priority = 1000,
  config = function()
    -- Optionally configure and load the colorscheme
    -- directly inside the plugin declaration.
    vim.opt.background = 'dark'
    vim.g.gruvbox_material_background = 'hard' -- 'hard', 'medium', 'soft'
    vim.g.gruvbox_material_foreground = 'mix' -- 'material', 'mix', 'original'
    vim.g.gruvbox_material_disable_italic_comment = true -- Enable italic comments
    vim.g.gruvbox_material_enable_bold = true
    vim.g.gruvbox_material_enable_italic = true
    vim.g.gruvbox_material_transparent_background = true -- Set to 1 for transparency
    vim.g.gruvbox_material_show_eob = true -- Show end of buffer
    vim.g.gruvbox_material_diagnostic_text_highlight = true
    vim.g.gruvbox_material_diagnostic_line_highlight = true
    vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'
    vim.g.gruvbox_material_enable_italic = true
    vim.cmd.colorscheme 'gruvbox-material'
  end,
}
