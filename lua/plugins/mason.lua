return {
	{
		'mason-org/mason.nvim',
		config = function()
			require("mason").setup()
		end
	},
	{
		'williamboman/mason-lspconfig.nvim',
		version = '2.0.0-rc.1',
		config = function()
			require('mason-lspconfig').setup({
				 ensure_installed = {
					'lua_ls',
					'ts_ls',
					'angularls',
					'bashls',
					'cssls',
					'css_variables',
					'cssmodules_ls',
				}
			})
		end
	}
}
