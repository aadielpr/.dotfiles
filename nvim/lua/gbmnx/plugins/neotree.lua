return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		local neotree = require("neo-tree")

		neotree.setup({
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_by_name = { "node_modules" },
					always_show = { ".gitignore", ".env" },
					always_show_by_pattern = { ".env*" },
					never_show = { ".DS_Store", ".git" },
				},
			},
			window = {
				mappings = {
					["<BS>"] = "close_node",
				},
			},
		})

		vim.keymap.set("n", "<C-p>", ":Neotree toggle=true<CR>", { silent = true, noremap = true })
	end,
}
