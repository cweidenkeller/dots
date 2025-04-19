return {
	"folke/tokyonight.nvim",
	priority = 1000,
	config = function()
		local bg_dark = "#011423"
		require("tokyonight").setup({
			style = "night",
			on_colors = function(c)
				c.bg_dark = bg_dark
			end,
		})
		vim.cmd("colorscheme tokyonight-night")
	end,
}
