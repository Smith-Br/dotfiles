return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
    "hrsh7th/cmp-nvim-lsp",
		{ "williamboman/mason-lspconfig.nvim", config = function() end },
	},
	config = function()

		-- import lspconfig plugin
    local lspconfig = require("lspconfig")

    -- import mason_lspconfig plugin
    local mason_lspconfig = require("mason-lspconfig")

    -- import cmp-nvim-lsp plugin
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local keymap = vim.keymap -- for conciseness

    lspconfig.clangd.setup({
      name = 'clangd',
      cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
      initialization_options = {
      fallback_flags = { '-std=c++17' },
      },
    })
	end,
}