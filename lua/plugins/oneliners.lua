return {
    {--Git plugin
	'tpope/vim-fugitive',
    },
    {--Show CSS Colors
	'brenoprata10/nvim-highlight-colors',
	config = function()
	    require('nvim-highlight-colors').setup({})
	end
    },
    -- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
    {'numToStr/Comment.nvim',},
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    {
	"folke/lazydev.nvim",
	ft = "lua",
	opts = {},
    },
    {--add closing tags to html and jsx
	"windwp/nvim-ts-autotag",
	opts = {},
    },
}
