local wezterm = require 'wezterm'

return {
  -- Smart tab bar [distraction-free mode]
  hide_tab_bar_if_only_one_tab = true,

  -- Color scheme
  -- https://wezfurlong.org/wezterm/config/appearance.html
  --
  -- color_scheme = "OneDark (base16)",
  color_scheme = "Dracula",
  -- color_scheme = "Dracula (Official)",

  scrollback_lines = 3500,

  window_background_opacity = 0.90,
  window_close_confirmation = "NeverPrompt",
  window_padding = {
      left = 0,
      right = 0,
      top = 0,
      bottom = 0,
  },


  -- Font configuration
  -- https://wezfurlong.org/wezterm/config/fonts.html
  font = wezterm.font('Cousine Nerd Font'),
  font_size = 13.0,

  -- Disable ligatures
  -- https://wezfurlong.org/wezterm/config/font-shaping.html
  harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },

  leader = { key = 'a', mods = 'CMD', timeout_milliseconds = 1000 },
  keys = {
    {
      key = '|',
      mods = 'LEADER|SHIFT',
      action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
      key = '-',
      mods = 'LEADER',
      action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
  },
}
