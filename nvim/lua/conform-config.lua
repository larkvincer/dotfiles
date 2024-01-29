require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { { "eslint_d" } },
		javascriptreact = { { "eslint_d" } },
		typescript = { { "eslint_d" } },
		typescriptreact = { { "eslint_d" } },
		go = { "goimports", "gofmt" },
	},
	format_after_save = {
		lsp_fallback = true,
	},
})
