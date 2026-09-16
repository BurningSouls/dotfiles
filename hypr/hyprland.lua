-- ==========================================
-- HYPRLAND CONFIG
-- ==========================================

-- ==========================================
-- SOURCES
-- ==========================================

-- Loads:
-- ~/.config/hypr/sources/binds.lua
require("sources.binds")


-- ==========================================
-- MONITORS
-- ==========================================

-- External HDMI monitor
hl.monitor({
    output = "HDMI-A-1",
    mode = "1920x1080@60",
    position = "0x0",
    scale = 1,
})

-- Laptop internal display
hl.monitor({
    output = "eDP-1",
    mode = "2944x1840@60",
    position = "1920x0",
    scale = "auto",
})

-- Fallback for any other monitor
hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = "auto",
})


-- ==========================================
-- PROGRAMS
-- ==========================================

local terminal = "ghostty"
local fileManager = "nemo"
local menu = "rofi -show drun"
local browser = "firefox"


-- ==========================================
-- AUTOSTART
-- ==========================================

hl.on("hyprland.start", function()
    hl.exec_cmd(terminal)
    hl.exec_cmd("nm-applet")
    hl.exec_cmd("blueman-applet")
    hl.exec_cmd("waybar")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("hyprcursor")
    hl.exec_cmd("hypridle")
end)


-- ==========================================
-- ENVIRONMENT VARIABLES
-- ==========================================

hl.env("XCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "Catppuccin Mocha Dark")

hl.env("HYPRCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "Catppuccin Mocha Dark")


-- ==========================================
-- PERMISSIONS
-- ==========================================

-- Permission changes require a Hyprland restart.

-- Example:
--
-- hl.config({
--     ecosystem = {
--         enforce_permissions = true,
--     },
-- })
--
-- hl.permission(
--     "/usr/(bin|local/bin)/grim",
--     "screencopy",
--     "allow"
-- )


-- ==========================================
-- GENERAL
-- ==========================================

hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 10,
        border_size = 2,

        col = {
            active_border = {
                colors = {
                    "rgba(33ccffee)",
                    "rgba(00ff99ee)",
                },
                angle = 45,
            },

            inactive_border = "rgba(595959aa)",
        },

        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
})


-- ==========================================
-- DECORATION
-- ==========================================

hl.config({
    decoration = {
        rounding = 10,
        rounding_power = 2,

        active_opacity = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },

        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            vibrancy = 0.1696,
        },
    },
})


-- ==========================================
-- ANIMATIONS
-- ==========================================

hl.config({
    animations = {
        enabled = true,
    },
})


-- ------------------------------------------
-- Animation curves
-- ------------------------------------------

hl.curve("easeOutQuint", {
    type = "bezier",
    points = {
        { 0.23, 1 },
        { 0.32, 1 },
    },
})

hl.curve("easeInOutCubic", {
    type = "bezier",
    points = {
        { 0.65, 0.05 },
        { 0.36, 1 },
    },
})

hl.curve("linear", {
    type = "bezier",
    points = {
        { 0, 0 },
        { 1, 1 },
    },
})

hl.curve("almostLinear", {
    type = "bezier",
    points = {
        { 0.5, 0.5 },
        { 0.75, 1 },
    },
})

hl.curve("quick", {
    type = "bezier",
    points = {
        { 0.15, 0 },
        { 0.1, 1 },
    },
})


-- ------------------------------------------
-- Animations
-- ------------------------------------------

hl.animation({
    leaf = "global",
    enabled = true,
    speed = 10,
    bezier = "default",
})

hl.animation({
    leaf = "border",
    enabled = true,
    speed = 5.39,
    bezier = "easeOutQuint",
})

hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 4.79,
    bezier = "easeOutQuint",
})

hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 4.1,
    bezier = "easeOutQuint",
    style = "popin 87%",
})

hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 1.49,
    bezier = "linear",
    style = "popin 87%",
})

hl.animation({
    leaf = "fadeIn",
    enabled = true,
    speed = 1.73,
    bezier = "almostLinear",
})

hl.animation({
    leaf = "fadeOut",
    enabled = true,
    speed = 1.46,
    bezier = "almostLinear",
})

hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 3.03,
    bezier = "quick",
})

hl.animation({
    leaf = "layers",
    enabled = true,
    speed = 3.81,
    bezier = "easeOutQuint",
})

hl.animation({
    leaf = "layersIn",
    enabled = true,
    speed = 4,
    bezier = "easeOutQuint",
    style = "fade",
})

hl.animation({
    leaf = "layersOut",
    enabled = true,
    speed = 1.5,
    bezier = "linear",
    style = "fade",
})

hl.animation({
    leaf = "fadeLayersIn",
    enabled = true,
    speed = 1.79,
    bezier = "almostLinear",
})

hl.animation({
    leaf = "fadeLayersOut",
    enabled = true,
    speed = 1.39,
    bezier = "almostLinear",
})

hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 1.94,
    bezier = "almostLinear",
    style = "fade",
})

hl.animation({
    leaf = "workspacesIn",
    enabled = true,
    speed = 1.21,
    bezier = "almostLinear",
    style = "fade",
})

hl.animation({
    leaf = "workspacesOut",
    enabled = true,
    speed = 1.94,
    bezier = "almostLinear",
    style = "fade",
})

hl.animation({
    leaf = "zoomFactor",
    enabled = true,
    speed = 7,
    bezier = "quick",
})


-- ==========================================
-- DWINDLE
-- ==========================================

hl.config({
    dwindle = {
        preserve_split = true,
    },
})


-- ==========================================
-- MASTER
-- ==========================================

hl.config({
    master = {
        new_status = "master",
    },
})


-- ==========================================
-- MISC
-- ==========================================

hl.config({
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
    },
})


-- ==========================================
-- INPUT
-- ==========================================

hl.env("GTK_IM_MODULE", "simple")

hl.config({
    env = {
        "GTK_IM_MODULE,simple",
    },

    input = {
        kb_layout = "us",
        -- kb_variant = "intl",
        kb_model = "",
        kb_options = "",
        kb_rules = "",

        follow_mouse = 1,
        sensitivity = 0,

        touchpad = {
            natural_scroll = true,
        },
    },
})


-- ==========================================
-- GESTURES
-- ==========================================

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})


-- ==========================================
-- DEVICE-SPECIFIC CONFIG
-- ==========================================

hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})


-- ==========================================
-- WINDOW RULES
-- ==========================================

-- Ignore maximize requests from applications.
--
-- Old:
-- windowrulev2 = suppressevent maximize, class:.*
--
-- New Lua syntax:

hl.window_rule({
    match = {
        class = ".*",
    },

    suppress_event = "maximize",
})


-- Fix some dragging/focus issues with XWayland.
--
-- Old:
-- windowrulev2 = nofocus,class:^$,title:^$,xwayland:1,
--                floating:1,fullscreen:0,pinned:0

hl.window_rule({
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },

    no_initial_focus = true,
})
