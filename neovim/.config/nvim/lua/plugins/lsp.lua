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
         -- setup neodev before lspconfig
         require("neodev").setup({})

         local lspconfig = require("lspconfig")
         local capabilities = require("cmp_nvim_lsp").default_capabilities()
         lspconfig.lua_ls.setup({
            capabilities = capabilities,
         })
         lspconfig.bashls.setup({
            capabilities = capabilities,
         })
         lspconfig.pyright.setup({
            capabilities = capabilities,
         })
         lspconfig.solargraph.setup({
            capabilities = capabilities,
         })
         lspconfig.cssls.setup({
            capabilities = capabilities,
         })
         lspconfig.texlab.setup({
            capabilities = capabilities,
         })
         lspconfig.clangd.setup({
            capabilities = capabilities,
         })
         lspconfig.verible.setup({
            capabilities = capabilities,
         })
         lspconfig.svlangserver.setup({
            capabilities = capabilities,
         })
      end,
   },
}
