return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.golines,
				null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.rubocop,
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.formatting.erb_lint,
			},
      timeout_ms = 2000,
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
