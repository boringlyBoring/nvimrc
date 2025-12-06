-- ~/.config/nvim/lua/plugins/rust.lua
return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = { "rust_analyzer" },
			})
			require("lspconfig").rust_analyzer.setup({
				settings = {
					["rust-analyzer"] = {
						imports = {
							granularity = {
								group = "module",
							},
							prefix = "self",
						},
						cargo = {
							buildScripts = {
								enable = true,
							},
							procMacro = {
								enable = true,
							},
						},
					},
				},
			})
		end,
	},
}
