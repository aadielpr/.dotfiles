return {
	"AlexvZyl/nordic.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		local nordic = require("nordic")
		nordic.setup({
			on_highlight = function(highlights, palette)
				highlights.TelescopePromptTitle = {
					fg = palette.black2,
					bg = palette.black2,
				}

				highlights.TelescopePromptBorder = {
					bg = palette.black2,
					fg = palette.black2,
				}

				highlights.TelescopePreviewTitle = {
					fg = palette.black1,
					bg = palette.black1,
				}

				highlights.TelescopeResultsTitle = {
					fg = palette.black1,
					bg = palette.black1,
				}

				highlights.TelescopeResultsBorder = {
					fg = palette.black1,
					bg = palette.black1,
				}

				highlights.TelescopePreviewBorder = {
					fg = palette.black1,
					bg = palette.black1,
				}
			end,
			-- Enable bold keywords.
			bold_keywords = true,
			-- Enable italic comments.
			italic_comments = true,
			-- Enable editor background transparency.
			transparent = {
				-- Enable transparent background.
				bg = false,
				-- Enable transparent background for floating windows.
				float = false,
			},
			-- Enable brighter float border.
			bright_border = false,
			-- Reduce the overall amount of blue in the theme (diverges from base Nord).
			reduced_blue = true,
			-- Swap the dark background with the normal one.
			swap_backgrounds = false,
			-- Cursorline options.  Also includes visual/selection.
			cursorline = {
				-- Bold font in cursorline.
				bold = false,
				-- Bold cursorline number.
				bold_number = true,
				-- Available styles: 'dark', 'light'.
				theme = "dark",
				-- Blending the cursorline bg with the buffer bg.
				blend = 0.85,
			},
			noice = {
				-- Available styles: `classic`, `flat`.
				style = "classic",
			},
			telescope = {
				-- Available styles: `classic`, `flat`.
				style = "flat",
			},
			leap = {
				-- Dims the backdrop when using leap.
				dim_backdrop = false,
			},
			ts_context = {
				-- Enables dark background for treesitter-context window
				dark_background = true,
			},
		})

		vim.cmd("colorscheme nordic")
	end,
}
