local wezterm = require 'wezterm'
local config = {}

-- =========================
-- Appearance (Catppuccin rice)
-- =========================
config.color_scheme = "Catppuccin Mocha"

-- Transparency + blur (Ghostty-like)
config.window_background_opacity = 0.80
config.win32_system_backdrop = "Acrylic"

-- =========================
-- Font
-- =========================
config.font = wezterm.font("JetBrains Mono")
config.font_size = 11.5

-- =========================
-- UI cleanup
-- =========================
config.enable_tab_bar = false
config.use_fancy_tab_bar = false

-- No custom padding (default WezTerm padding restored)
-- (intentionally not setting window_padding)

-- =========================
-- Shell (Nushell default)
-- =========================
config.default_prog = {
  "nu",
  "--config",
  "C:\\Users\\silzie14\\.config\\nushell\\config.nu",
  "--env-config",
  "C:\\Users\\silzie14\\.config\\nushell\\env.nu",
}

-- =========================
-- Quake terminal toggle
-- =========================
wezterm.on("toggle-quake", function(window, pane)
  if window:is_visible() then
    window:hide()
  else
    window:show()
    window:focus()
  end
end)

-- =========================
-- Keybinds
-- =========================
config.keys = {
  {
    key = "`",
    mods = "CTRL",
    action = wezterm.action.EmitEvent("toggle-quake"),
  },
}

return config
