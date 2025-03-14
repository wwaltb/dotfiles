local colors_name = "kaleidobones"
vim.g.colors_name = colors_name -- Required when defining a colorscheme

local lush = require "lush"
local hsluv = lush.hsluv -- Human-friendly hsl
local util = require "zenbones.util"

local bg = "light"

-- Define a palette. Use `palette_extend` to fill unspecified colors
-- Based on https://github.com/gruvbox-community/gruvbox#palette
local palette
if bg == "light" then
	palette = util.palette_extend({
		bg = hsluv "#ffffff",
		fg = hsluv "#000000",
		rose = hsluv "#9a6d66", -- red
		leaf = hsluv "#728b62", -- green
		wood = hsluv "#c7c69d", -- yellow
		water = hsluv "#677090", -- blue
		blossom = hsluv "#c2aab3", -- pink
		sky = hsluv "#9dc3c6", -- cyan
	}, bg)
else
	palette = util.palette_extend({
		bg = hsluv "#1f1f28",
		fg = hsluv "#f4f4f4",
		rose = hsluv "#9a6d66", -- red
		leaf = hsluv "#728b62", -- green
		wood = hsluv "#c7c69d", -- yellow
		water = hsluv "#677090", -- blue
		blossom = hsluv "#c2aab3", -- pink
		sky = hsluv "#9dc3c6", -- cyan
	}, bg)
end

-- Generate the lush specs using the generator util
local generator = require "zenbones.specs"
local base_specs = generator.generate(palette, bg, generator.get_global_config(colors_name, bg))

if bg == true then
    return
end
-- Optionally extend specs using Lush
local specs = lush.extends({ base_specs }).with(function(injected_functions)
    local sym = injected_functions.sym
	return {
		Statement { base_specs.Statement, fg = palette.rose },
		Type { fg = palette.sky, gui = "italic" },
        Constant { fg = palette.leaf, gui = "bold"},
        String { fg = palette.leaf.da(30), gui = "italic" },
        Number { fg = palette.rose },
        Boolean { fg = palette.blossom, gui = "bold,italic" },
        Identifier { fg = palette.fg.li(28) },
        StatusLine { bg = palette.bg },
		Special { fg = palette.water },

        sym"@variable.parameter" { fg = palette.water, gui = "" },
        sym"@string.escape" { fg = palette.wood, gui = "bold" },

        BlinkCmpScrollBarThumb { bg = palette.fg.li(22) },
	}
end)

-- Pass the specs to lush to apply
lush(specs)

-- Optionally set term colors
require("zenbones.term").apply_colors(palette)
