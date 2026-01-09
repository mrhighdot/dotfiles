return {
  'Equilibris/nx.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  ft = { 'typescript', 'javascript', 'typescriptreact', 'javascriptreact' },
  config = function()
    require('nx').setup {
      -- Enable HTML injection in template strings
      enable_html_in_tsx = true,
      enable_html_in_ts = true,
      enable_html_in_jsx = true,
      enable_html_in_js = true,
    }
  end,
}
