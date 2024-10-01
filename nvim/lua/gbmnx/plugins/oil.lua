return {
	"stevearc/oil.nvim",
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	config = function()
		require("oil").setup({
			delete_to_trash = true,
			default_file_explorer = true,
			skip_confirm_for_simple_edits = false,
            watch_for_changes = true,
			view_options = {
				show_hidden = true,
				is_always_hidden = function(name, _)
					return name == ".." or name == ".git" or name == "node_modules"
				end,
				natural_order = true,
			},
			keymaps = {
				["<BS>"] = "actions.parent",
				["-"] = false,
			},
		})

		vim.keymap.set("n", "-", function()
			vim.cmd((vim.bo.filetype == "oil") and "bd" or "Oil --float")
		end)
	end,
}
