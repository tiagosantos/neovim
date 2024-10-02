return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = "VeryLazy",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				auto_install = true,
				endwise = { enable = true },
				indent = { enable = true, disable = { "yaml", "ruby" } },
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = { "markdown" },
				},
				ensure_installed = {
					"bash",
					"embedded_template",
					"html",
					"javascript",
					"json",
					"lua",
					"markdown",
					"markdown_inline",
					"python",
					"query",
					"regex",
					"ruby",
					"tsx",
					"typescript",
					"vim",
					"yaml",
					"dart",
				},
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		event = "VeryLazy",
		dependencies = { "nvim-treesitter/nvim-treesitter", lazy = true },
	},
}
