return {
  require('lspconfig').denols.setup {
    cmd = { 'deno', 'lsp' },
    filetypes = { 'typescript', 'javascript', 'typescriptreact', 'javascriptreact' },
    root_dir = require('lspconfig').util.root_pattern('deno.json', 'tsconfig.json', '.git'),
    init_options = {
      enable = true,
      lint = true,
      unstable = true,
    },
  },
}
