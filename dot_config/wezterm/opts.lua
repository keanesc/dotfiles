local wezterm = require 'wezterm'

local module = {}

function module.apply_to_config(config)
    config.force_reverse_video_cursor = true
    config.window_background_opacity = 0.8
    config.win32_system_backdrop = 'Acrylic'

    -- config.window_background_opacity = 0
    -- config.win32_system_backdrop = 'Mica'

    -- Font
    config.font = wezterm.font 'JetBrainsMono Nerd Font'
    -- config.font = wezterm.font_with_fallback({
    --     -- 'Cascadia Code',
    --     -- 'Geist Mono',
    --     -- 'Iosevka Term',
    --     'JetBrainsMono Nerd Font',
    -- })

    -- config.font_size = 13
    -- config.line_height = 1.2

    -- UI
    -- config.use_fancy_tab_bar = false
    -- config.tab_bar_at_bottom = false
    config.hide_tab_bar_if_only_one_tab = true
    config.enable_scroll_bar = false
    config.window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    }

    config.scrollback_lines = 7000
    config.window_decorations = "RESIZE"

    -- -- Command Palette
    -- config.command_palette_font_size = 13
    -- config.command_palette_bg_color = "#394b70"
    -- config.command_palette_fg_color = "#828bb8"
    -- config.ui_key_cap_rendering = "WindowsSymbols"

    config.front_end = "WebGpu"
    -- config.enable_kitty_graphics=true
end

return module
