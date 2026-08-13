return{
    {'nvim-mini/mini.nvim', version = false },

    {
	"nvim-mini/mini.pairs",
	config = function()
	    require('mini.pairs').setup()
	end
    },
    {
	"nvim-mini/mini.sessions",
	config = function()
	    require('mini.sessions').setup()
	end
    },
}
