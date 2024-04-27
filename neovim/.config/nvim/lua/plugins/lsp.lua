return {
   {
      "williamboman/mason.nvim",
      config = true,
   },
   {
      "williamboman/mason-lspconfig.nvim",
      config = function()
         require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "bashls" },
         })
      end,
   },
   {
      "neovim/nvim-lspconfig",
      config = function()
         local lspconfig = require("lspconfig")
         local capabilities = require("cmp_nvim_lsp").default_capabilities()
         lspconfig.lua_ls.setup({
            capabilities = capabilities,
         })
         lspconfig.bashls.setup({
            capabilities = capabilities,
         })
         lspconfig.pylsp.setup({
            capabilities = capabilities,
         })
         lspconfig.ruby_lsp.setup({
            capabilities = capabilities,
         })
         lspconfig.harper_ls.setup({
            capabilities = capabilities,
            settings = {
               ["harper-ls"] = { linters = { sentence_capitalization = false } },
            },
            filetypes = {
               "markdown",
            },
         })
         lspconfig.clangd.setup({
            on_attach = function(client, bufnr)
               client.server_capabilities.signatureHelpProvider = false
               on_attach(client, bufnr)
            end,
            capabilities = capabilities,
         })
      end,
   },
}
