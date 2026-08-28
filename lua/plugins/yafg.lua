require("yafg"):setup({
  toggle_mode_key = "alt-t",          -- fzf key to switch ripgrep/fzf mode (default: "ctrl-t")
  editor = "nvim",                    -- Editor command (default: "hx")
  args = { "--noplugin" },            -- Additional editor arguments (default: {})
  file_arg_format = "+{file}",        -- File argument format (default: "{file}:{row}:{col}")
})
