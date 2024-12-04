-- nvim/lua/pluginlist.lua
return {
    -- colorscheme; tokyonight theme
    {
        "folke/tokyonight.nvim",
	priority = 1000,
	config = function()
	    vim.cmd("colorscheme tokyonight")
	end
    },

    -- plugin for commenting out lines of code
    {
        "numToStr/Comment.nvim",
	config = function()
	    require("Comment").setup()
        end
    },

    -- lualine plugin
    {
        'nvim-lualine/lualine.nvim',
	dependencies = {
	    "nvim-tree/nvim-web-devicons"
	},
	config = function()
	    require("lualine").setup({
	        icons_enabled = true,
		theme = 'tokyonight',
	    })
	end
    },

    -- other plugins
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"

}
