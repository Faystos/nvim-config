return {

		'neovim/nvim-lspconfig',
		version = 'v1.0.0',
		config = function()
			local lspconfig = require('lspconfig')
			lspconfig.lua_ls.setup{}
		end

}
