local wezterm = require('wezterm')
local config = wezterm.config_builder()

-- color scheme
config.color_scheme = 'tokyonight_moon'
-- tab
config.hide_tab_bar_if_only_one_tab = true
return config
