return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/nvim-cmp",
    "folke/lazydev.nvim",
    "L3MON4D3/LuaSnip",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({ ensure_installed = {
	"lua_ls",
	"rust_analyzer",
	"clangd",
	"gopls",
	"bashls",
	"cssls",
	"html"
	} })
	vim.diagnostic.config({
	    virtual_text = {
		prefix = "●", -- could also be "■", "▎", or a function
		spacing = 4,
		source = "if_many", -- shows source name if multiple servers active
	    },
	    signs = {
		text = {
		    [vim.diagnostic.severity.ERROR] = "E",
		    [vim.diagnostic.severity.WARN] = "W",
		    [vim.diagnostic.severity.INFO] = "I",
		    [vim.diagnostic.severity.HINT] = "H",
		},
	    },	    underline = true,
	    update_in_insert = false, -- don't spam while typing
	    severity_sort = true,
	    float = {
		border = "rounded",
		source = "always",
	    },
	})
    vim.lsp.config("lua-ls",{})
    vim.lsp.enable("lua-ls")

    local cmp = require("cmp")
    cmp.setup({
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
      }),
      sources = { { name = "nvim_lsp" }, { name = "luasnip" } },
    })
  end,
}
