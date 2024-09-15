-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Colour Scheme
config.force_reverse_video_cursor = true
local function get_appearance()
  if wezterm.gui then
    return wezterm.gui.get_appearance()
  end
  return 'Dark'
end

local function scheme_for_appearance(appearance)
  if appearance:find 'Dark' then
    return 'tokyonight_night'
  else
    return 'tokyonight_day'
  end
end


config.color_scheme = scheme_for_appearance(get_appearance())
config.window_background_opacity = 0.7
config.win32_system_backdrop = 'Acrylic'

-- Font
config.font = wezterm.font_with_fallback({
  'Cascadia Code',
  'JetBrainsMono Nerd Font',
  -- { family = 'Iosevka Term', weight = 'Medium' },
})
config.font_size = 12
config.line_height = 2

-- Keychars
config.use_dead_keys = false

-- UI
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.enable_scroll_bar = false
config.window_padding = {
    left = "10px",
    right = "10px",
    top = 0,
    bottom = 0,
}
config.scrollback_lines = 7000
config.window_decorations = "RESIZE"

-- Shell
--- Set Pwsh as the default on Windows
config.default_prog = { 'pwsh.exe', '-NoLogo' }

config.launch_menu = {
    -- {
    --     label = 'PowerShell',
    --     args = { 'powershell.exe', '-NoLogo' },
    -- },
    {
        label = 'Pwsh',
        args = { 'pwsh.exe', '-NoLogo' },
    }, {
        label = 'Command Prompt',
        args = { 'cmd.exe', '-NoLogo' },
    },
    -- {
    --     label = 'Ubuntu',
    --     args = { 'wsl.exe -d Ubuntu-22.04', '-NoLogo' },
    -- },
}

-- Command Palette
config.command_palette_font_size = 13
config.command_palette_bg_color = "#394b70"
config.command_palette_fg_color = "#828bb8"
config.ui_key_cap_rendering = "WindowsSymbols"

-- config.enable_kitty_graphics=true

-- and finally, return the configuration to wezterm
return config
