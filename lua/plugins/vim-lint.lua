return {
	{
		"mfussenegger/nvim-lint",
		config = function()
			require("lint").linters_by_ft = {
				typescript = { "eslint" },
				javascript = { "eslint" },
				bash = { "bash" },
				luacheck = { "luacheck" },
				stylelint = { "stylelint" },
				zsh = { "zsh" },
			}
			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				callback = function()
					require("lint").try_lint()
				end,
			})
		end,
	},
}
