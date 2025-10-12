-- return {
--   'EmranMR/tree-sitter-blade',
-- }

-- return {
--   'jwalton512/vim-blade',
-- }

return {
  -- Add the blade-nav.nvim plugin which provides Goto File capabilities
  -- for Blade files.
  'ricardoramirezr/blade-nav.nvim',
  dependencies = {
    'hrsh7th/nvim-cmp',
  },
  ft = { 'blade', 'php' },
}

-- return {
--   'neovim/nvim-lspconfig',
--   config = function()
--     require('lspconfig').intelephense.setup {
--       filetypes = { 'php', 'blade' },
--     }
--   end,
-- }
