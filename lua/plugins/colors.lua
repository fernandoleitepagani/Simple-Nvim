return {
    {
	"olimorris/onedarkpro.nvim",
	priority = 1000, -- load before other plugins
	opts = {
	    options = {
		-- add any options here if needed, e.g.:
		-- cursorline = true,
		-- transparency = false,
	    },
	},
	config = function(_, opts)
	    require("onedarkpro").setup(opts)
	    vim.cmd("colorscheme onedark_dark")
	end,
    },
    {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = {
	    options = {theme = 'iceberg', },
	},
    },
}
