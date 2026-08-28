require("simple-tag"):setup({
  -- UI display mode (icon, text, hidden)
  ui_mode = "icon", -- (Optional)

  -- Disable tag key hints (popup in bottom right corner)
  hints_disabled = false, -- (Optional)

  -- Display tags on the left side or right side.
  left_side = false, -- (Optional)

  -- Entity order (if left_side = true): adjusts icon/text position.
  -- For example, if you want icon to be on the most left of line then set render_order less than 1000.
  -- More info about the order values: https://github.com/sxyazi/yazi/blob/a2996908deddd4fc5061d18cf77f0af9f07b0e5a/yazi-plugin/preset/components/entity.lua#L4-L9

  -- Linemode order (if left_side = false, by default): adjusts icon/text position.
  -- For example, if you want icon to be on the most right of linemode then set render_order larger than 1000 and less than 2000.
  -- More info about the order values: https://github.com/sxyazi/yazi/blob/a2996908deddd4fc5061d18cf77f0af9f07b0e5a/yazi-plugin/preset/components/linemode.lua#L4-L5
  -- Default is 1500 if tags is on the right side, otherwise 500 to make sure it won't conflict with default line padding left/right.
  render_order = 500, -- (Optional).

  -- Replace default yazi file/folder icons with tag icons. Only apply if left_side = true and have at least 1 tag.
  -- Look better if it has only 1 tag. -> use function instead of boolean
  replace_default_icon = false, -- (Optional)

  -- Padding for left/right side. Default will calculate automatically based on render_order and left_side.
  -- Unless you has custom linemode/entity render function, you mostly don't need to set these values.
  -- padding_left = " ", -- (Optional, string only)
  -- padding_right = " ", -- (Optional, string only)

  -- Use replace_default_icon as a function instead

	-- tags: list/table of tag keys
	-- file: fs::File. https://yazi-rs.github.io/docs/plugins/context#fs-file

	-- replace_default_icon = function(file, tags) -- (Optional)
	-- 	--return tags[1] == "*" and file.is_hovered -- Only apply to file/folder with tag key * and hovered
	-- 	return #tags == 1 -- Only apply to file/folder with only 1 tag
	-- end,


  -- You can backup/restore this folder within the same OS (Linux, windows, or MacOS).
  -- But you can't restore backed up folder in the different OS because they use difference absolute path.
  -- save_path =  -- full path to save tags folder (Optional)
  --       - Linux/MacOS: os.getenv("HOME") .. "/.config/yazi/tags"
  --       - Windows: os.getenv("APPDATA") .. "\\yazi\\config\\tags"

  -- Set tag colors
  colors = { -- (Optional)
	  -- Set this same value with `theme.toml` > [mgr] > hovered > reversed
	  -- Default theme use "reversed = true".
	  -- More info: https://github.com/sxyazi/yazi/blob/077faacc9a84bb5a06c5a8185a71405b0cb3dc8a/yazi-config/preset/theme-dark.toml#L25
	  -- Only need to set this if you use shipped/stable yazi <= v25.5.31 or nightly yazi installed before 11/12/2025
	  reversed = true, -- (Optional)

	  -- More colors: https://yazi-rs.github.io/docs/configuration/theme#types.color
    -- format: [tag key] = "color"
	  ["*"] = "#bf68d9", -- (Optional)
	  ["$"] = "green",
	  ["!"] = "#cc9057",
	  ["1"] = "cyan",
	  ["p"] = "red",
  },

  -- Set tag icons. Only show when ui_mode = "icon".
  -- Any text or nerdfont icons should work as long as you use nerdfont to render yazi.
  -- Default icon from mactag.yazi: ●; Some generic icons: , , 󱈤
  -- More icon from nerd fonts: https://www.nerdfonts.com/cheat-sheet
  icons = { -- (Optional)
    -- default icon
		default = "󰚋",

    -- format: [tag key] = "tag icon"
		["*"] = "*",
		["$"] = "",
		["!"] = "",
		["p"] = "",
		["w"] = "This long text also works",
  },

})

