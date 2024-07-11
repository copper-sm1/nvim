return {
    "williamboman/mason-lspconfig.nvim",
    after = {
        "williamboman/mason.nvim",
    },
    config = function()
      require("mason-lspconfig").setup ()
    end,
}