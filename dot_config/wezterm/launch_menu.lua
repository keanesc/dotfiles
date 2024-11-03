local wezterm = require 'wezterm'

local module = {}

function module.apply_to_config(config)
    -- Shell
    --- Set Pwsh as the default on Windows
    config.default_prog = { 'pwsh.exe', '-NoLogo' }

    config.launch_menu = {
        {
            label = 'Dev Drive',
            args = { 'pwsh.exe', '-NoLogo' },
            cwd = "D:\\"
        },
        {
            label = 'Pwsh',
            args = { 'pwsh.exe', '-NoLogo' },
        },
        {
            label = 'Command Prompt',
            args = { 'cmd.exe', '-NoLogo' },
        },
        {
            label = "Bash in Ubuntu WSL",
            args = { "wsl.exe", "--distribution", "Ubuntu-22.04" },
        },
        {
            label = "PowerShell in Ubuntu WSL",
            args = { "wsl.exe", "--distribution", "Ubuntu-22.04", "--exec", "pwsh" },
            cwd = "\\\\wsl$\\Ubuntu-22.04\\home\\kwi"
        },
    }
end

return module
