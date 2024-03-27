local null_ls = require("null-ls")

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.diagnostics.eslint,
		-- null_ls.builtins.completion.spell,
		null_ls.builtins.formatting.black,
		null_ls.builtins.formatting.isort,
		null_ls.builtins.diagnostics.trail_space,
		-- null_ls.builtins.formatting.prettierd,
		-- null_ls.builtins.formatting.yaml_fix,
		-- null_ls.builtins.formatting.yamlfmt,
		-- null_ls.builtins.diagnostics.vulture,
		null_ls.builtins.diagnostics.write_good,
		null_ls.builtins.formatting.trim_newlines,
		null_ls.builtins.formatting.trim_whitespace,
		-- null_ls.builtins.formatting.csharpier,
		null_ls.builtins.formatting.tidy,
		null_ls.builtins.diagnostics.hadolint,
		null_ls.builtins.diagnostics.sqlfluff.with({
			extra_args = { "--dialect", "tsql" }, -- change to your dialect
		}),
		null_ls.builtins.formatting.taplo,
		null_ls.builtins.formatting.sqlfluff.with({
			extra_args = { "--dialect", "tsql" },
		}),
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
					-- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
					vim.lsp.buf.format({ async = false })
				end,
			})
		end
	end,
})
