local wezterm = require('wezterm')
local config = wezterm.config_builder()

-- color scheme
config.color_scheme = 'tokyonight_moon'
-- tab
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
-- window
config.window_decorations = "RESIZE"
return config
