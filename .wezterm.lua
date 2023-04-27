-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Configs

-- Colors
config.color_scheme = 'Omni'

-- Fonts
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 14

-- No need for prompts while using tmux
config.window_close_confirmation = 'NeverPrompt'

-- Hide window stuff
config.window_decorations = "NONE"
config.use_fancy_tab_bar = false
config.show_tabs_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false
config.show_tab_index_in_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

-- Window size
config.initial_cols = 160
config.initial_rows = 40

return config
