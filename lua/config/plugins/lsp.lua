 return {
    --nvim lspconfig
    {
    "neovim/nvim-lspconfig",
    config = function()
       
    end,
    },

    {
    "mason-org/mason.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
        require("mason").setup()
    end,
    },

    {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason.nvim" },
        config = function()
            require("mason-lspconfig").setup()
        end,
    },
}
