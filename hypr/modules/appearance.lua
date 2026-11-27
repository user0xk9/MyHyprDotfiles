local c = require("modules.colors")

hl.config({
  general = {
    gaps_in = 5,
    gaps_out = 12,
    border_size = 2,
    resize_on_border = false,
    allow_tearing = false,
    layout = "dwindle",
    col = {
      active_border = { colors = { "rgba(" .. c.accent .. "ee)", "rgba(" .. c.accent2 .. "ee)" }, angle = 45 },
      inactive_border = "rgba(" .. c.surface .. "aa)",
    },
  },

  decoration = {
    rounding = 10,
    rounding_power = 2,
    active_opacity = 0.90,
    inactive_opacity = 0.80,
    fullscreen_opacity = 1.0,
    blur = {
      enabled = true,
      size = 8,
      passes = 3,
      new_optimizations = true,
      vibrancy = 0.17,
      popups = true,
    },
    shadow = {
      enabled = true,
      range = 12,
      render_power = 3,
      color = "rgba(" .. c.crust .. "ee)",
    },
  },

  animations = { enabled = true },

  dwindle = { preserve_split = true },

  misc = {
    force_default_wallpaper = 0,
    disable_hyprland_logo = true,
  },
})

hl.curve("smooth", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.0} } })

hl.animation({ leaf = "windows",    enabled = true, speed = 5, bezier = "smooth", style = "slide" })
hl.animation({ leaf = "fade",       enabled = true, speed = 5, bezier = "smooth" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "smooth", style = "slidevert" })
