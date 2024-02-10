-- https://github.com/neovim/nvim-lspconfig

local lsp_status_ok, lspconfig = pcall(require, 'lspconfig')
if not lsp_status_ok then
  return
end

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
-- vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
-- vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    -- vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    -- vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<leader>k', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    -- vim.keymap.set('n', '<space>f', function()
    --   vim.lsp.buf.format { async = true }
    -- end, opts)
    -- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
  end,
})

-- Replace html tags with plain text, copied from chatgpt
local function on_attach(client, bufnr)
    local orig_hover = vim.lsp.handlers["textDocument/hover"]
    vim.lsp.handlers["textDocument/hover"] = function(err, result, ctx, config)
        if result and result.contents then
            if result.contents.kind and result.contents.kind == 'markdown' then
                result.contents.value = result.contents.value:gsub('&nbsp;', ' ')
            end
        end
        orig_hover(err, result, ctx, config)
    end

    local orig_signature_help = vim.lsp.handlers["textDocument/signatureHelp"]
    vim.lsp.handlers["textDocument/signatureHelp"] = function(err, result, ctx, config)
        if result and result.signatures then
            for _, signature in ipairs(result.signatures) do
                if signature.documentation and signature.documentation.kind == 'markdown' then
                    signature.documentation.value = signature.documentation.value:gsub('&nbsp;', ' ')
                end
                if signature.parameters then
                    for _, parameter in ipairs(signature.parameters) do
                        if parameter.documentation and parameter.documentation.kind == 'markdown' then
                            parameter.documentation.value = parameter.documentation.value:gsub('&nbsp;', ' ')
                        end
                    end
                end
            end
        end
        orig_signature_help(err, result, ctx, config)
    end
end

-- Add additional capabilities supported by nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- capabilities.textDocument.completion.completionItem = {
--   documentationFormat = { "markdown", "plaintext" },
-- }

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'pyright', 'bashls', 'vimls', 'clangd', }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

