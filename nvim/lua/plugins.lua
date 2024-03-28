vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("rebelot/kanagawa.nvim")
	use("neovim/nvim-lspconfig")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("jose-elias-alvarez/null-ls.nvim")
	use("tpope/vim-surround")
	use("tpope/vim-commentary")
	use("tpope/vim-fugitive")
	use("suy/vim-context-commentstring")
	use("godlygeek/tabular")
	use("vim-airline/vim-airline")
	use("vim-airline/vim-airline-themes")
	use("benmills/vimux")
	use("christoomey/vim-tmux-navigator")

	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")

	use({

		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	use({ "L3MON4D3/LuaSnip", tag = "v2.*", run = "make install_jsregexp" })
	use("saadparwaiz1/cmp_luasnip")
	use("hrsh7th/cmp-nvim-lsp")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
