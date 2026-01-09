local comments = require 'custom.plugins.ts_comments.ts_comment'
local todo = require 'custom.plugins.todo.todo'
local noice = require 'custom.plugins.noice.noice'
local pairs = require 'custom.plugins.pairs.autopairs'
-- local dashboard = require 'custom.plugins.dashboard.dashboard'
-- local copilot = require 'custom.plugins.github.copilot'
local coc = require 'custom.plugins.coc.coc'
local avante = require 'custom.plugins.avante.avante'
local vscode = require 'custom.plugins.theme.hybrid'
-- local vscode = require 'custom.plugins.theme.tokyo-dark'
local formatter = require 'custom.plugins.formatter.formatter'
local blade = require 'custom.plugins.blade.blade'
local lg = require 'custom.plugins.lazygit.lazygit'
local tabby = require 'custom.plugins.tabby.tabby'
local flutter = require 'custom.plugins.flutter-tools.tools'
local laravel = require 'custom.plugins.laravel.laravel'
local multi = require 'custom.plugins.vim-visual-multi.init'
local dev_docs = require 'custom.plugins.dev-docs.init'
local follow_link = require 'custom.plugins.follow-link.init'
local nx = require 'custom.plugins.nx.init'

return {
  comments,
  todo,
  pairs,
  flutter,
  coc,
  blade,
  vscode,
  formatter,
  lg,
  tabby,
  -- noice,
  laravel,
  multi,
  dev_docs,
  follow_link,
  avante,
  nx,
}
