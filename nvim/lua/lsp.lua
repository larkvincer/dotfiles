require("nvim-lsp-installer").setup {}

-- local luasnip = require("luasnip")

local nvim_lsp = require 'lspconfig'
local on_attach = function(_, bufnr)
--   vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
--
  local opts = { noremap = true, silent = true }
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
--   -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gf', '<cmd>EslintFixAll<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', '[e', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', ']e', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
end
--
local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
vim.diagnostic.config {
  virtual_text = false
}

-- Enable the following language servers
local servers = { 'clangd', 'tsserver', 'eslint', 'html', 'cssls', 'jsonls', 'gopls', 'sumneko_lua' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
  }
end

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
