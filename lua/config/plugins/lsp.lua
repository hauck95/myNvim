 return {
    --nvim lspconfig
    { "mfussenegger/nvim-dap",
config = function ()
    local dap = require("dap")
    dap.adapters.godot = {
        type = "server",
        host = "127.0.0.1",
        port = 6006,
}

dap.configurations.gdscript = {
	{
		type = "godot",
		request = "launch",
		name = "Launch scene",
		project = "${workspaceFolder}",
		launch_scene = true,
	},
}
end
},
    {
    "neovim/nvim-lspconfig",
    config = function ()
        require("lspconfig")["gdscript"].setup({
    	name = "godot",
    	cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
    })
    end
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
