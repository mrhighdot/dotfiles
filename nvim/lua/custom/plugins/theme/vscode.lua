return {
  'Mofiqul/vscode.nvim',
  init = function()
    require('vscode').setup {
      -- Enable transparent background
      transparent = true,

      -- Enable italic comment
      italic_comments = true,

      -- Underline `@markup.link.*` variants
      underline_links = true,

      -- Disable nvim-tree background color
      disable_nvimtree_bg = true,
    }
    vim.o.background = 'dark'
    vim.cmd.colorscheme 'vscode'
  end,
}
