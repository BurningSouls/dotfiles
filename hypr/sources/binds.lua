-- ###################
-- ### KEYBINDINGS ###
-- ###################

-- Programs
local terminal = "ghostty"
local fileManager = "yazi"
local menu = "rofi -show drun"
local menuRun = "rofi -show run"
local browser = "firefox"

-- Main modifier
local mainMod = "SUPER"


-- ###################
-- ### APPLICATIONS ###
-- ###################

hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + M", hl.dsp.exit())
-- hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float())
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + SHIFT + SPACE", hl.dsp.exec_cmd(menuRun))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind("SUPER + SHIFT + Q", function()
    hl.dispatch(hl.dsp.exit())
end)
-- Restart Waybar
hl.bind(
    mainMod .. " + SHIFT + R",
    hl.dsp.exec_cmd("pkill waybar; waybar")
)
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd('grim -g "$(slurp)" - | wl-copy'))

-- ###################
-- ### WINDOW FOCUS ###
-- ###################

hl.bind(mainMod .. " + LEFT",  hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + RIGHT", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + UP",    hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + DOWN",  hl.dsp.focus({ direction = "d" }))


-- ###################
-- ### WORKSPACES ###
-- ###################

-- Switch to workspaces 1-10

hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))
hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }))


-- Move active window to workspaces 1-10

hl.bind(
    mainMod .. " + SHIFT + 0",
    hl.dsp.window.move({ workspace = 10 })
)

hl.bind(
    mainMod .. " + SHIFT + 1",
    hl.dsp.window.move({ workspace = 1 })
)

hl.bind(
    mainMod .. " + SHIFT + 2",
    hl.dsp.window.move({ workspace = 2 })
)

hl.bind(
    mainMod .. " + SHIFT + 3",
    hl.dsp.window.move({ workspace = 3 })
)

hl.bind(
    mainMod .. " + SHIFT + 4",
    hl.dsp.window.move({ workspace = 4 })
)

hl.bind(
    mainMod .. " + SHIFT + 5",
    hl.dsp.window.move({ workspace = 5 })
)

hl.bind(
    mainMod .. " + SHIFT + 6",
    hl.dsp.window.move({ workspace = 6 })
)

hl.bind(
    mainMod .. " + SHIFT + 7",
    hl.dsp.window.move({ workspace = 7 })
)

hl.bind(
    mainMod .. " + SHIFT + 8",
    hl.dsp.window.move({ workspace = 8 })
)

hl.bind(
    mainMod .. " + SHIFT + 9",
    hl.dsp.window.move({ workspace = 9 })
)


-- ###################
-- ### SPECIAL WS ###
-- ###################

-- Scratchpad / special workspace

--hl.bind(
--    mainMod .. " + S",
--    hl.dsp.workspace.toggle_special("magic")
--)

--hl.bind(
--    mainMod .. " + SHIFT + S",
--    hl.dsp.window.move({ workspace = "special:magic" })
--)


-- ###################
-- ### WORKSPACE SCROLL ###
-- ###################

hl.bind(
    mainMod .. " + mouse_down",
    hl.dsp.focus({ workspace = "e+1" })
)

hl.bind(
    mainMod .. " + mouse_up",
    hl.dsp.focus({ workspace = "e-1" })
)


-- ###################
-- ### MOUSE BINDS ###
-- ###################

-- SUPER + Left Mouse Button = move window
hl.bind(
    mainMod .. " + mouse:272",
    hl.dsp.window.drag(),
    { mouse = true }
)

-- SUPER + Right Mouse Button = resize window
hl.bind(
    mainMod .. " + mouse:273",
    hl.dsp.window.resize(),
    { mouse = true }
)


-- ###################
-- ### MEDIA KEYS ###
-- ###################

-- Volume
hl.bind(
    "XF86AudioRaiseVolume",
    hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+")
)

hl.bind(
    "XF86AudioLowerVolume",
    hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-")
)

hl.bind(
    "XF86AudioMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle")
)

hl.bind(
    "XF86AudioMicMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle")
)


-- Brightness
hl.bind(
    "XF86MonBrightnessUp",
    hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+")
)

hl.bind(
    "XF86MonBrightnessDown",
    hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-")
)


-- Media player
hl.bind(
    "XF86AudioNext",
    hl.dsp.exec_cmd("playerctl next")
)

hl.bind(
    "XF86AudioPause",
    hl.dsp.exec_cmd("playerctl play-pause")
)

hl.bind(
    "XF86AudioPlay",
    hl.dsp.exec_cmd("playerctl play-pause")
)

hl.bind(
    "XF86AudioPrev",
    hl.dsp.exec_cmd("playerctl previous")
)


-- ###################
-- ### WINDOW SWITCHER ###
-- ###################

hl.bind(
    "ALT + TAB",
    hl.dsp.exec_cmd("rofi -show window")
)
