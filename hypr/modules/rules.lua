hl.window_rule({
  name = "suppress-maximize-events",
  match = { class = ".*" },
  suppress_event = "maximize",
})

hl.window_rule({
  name = "fix-xwayland-drags",
  match = { class = "^$", title = "^$", xwayland = true, float = true, fullscreen = false, pin = false },
  no_focus = true,
})

hl.window_rule({
  name = "move-hyprland-run",
  match = { class = "hyprland-run" },
  move = "20 monitor_h-120",
  float = true,
})
hl.layer_rule({ match = { namespace = "waybar" }, blur = true, ignore_alpha = 0.3 })
hl.layer_rule({ match = { namespace = "rofi" }, blur = true, ignore_alpha = 0.5 })
hl.layer_rule({ match = { namespace = "swaync-control-center" }, blur = true, ignore_alpha = 0.3 })
hl.layer_rule({ match = { namespace = "swaync-notification-window" }, blur = true, ignore_alpha = 0.3 })
hl.layer_rule({ match = { namespace = "logout_dialog" }, blur = true, ignore_alpha = 0.3 })
hl.window_rule({
  name = "opaque-video",
  match = { content = "video" },
  opaque = true,
})
hl.window_rule({
  name = "dropterm",
  match = { class = "^dropterm$" },
  workspace = "special:term silent",
  float = true,
  size = { "monitor_w * 0.7", "monitor_h * 0.5" },
  center = true,
})
hl.window_rule({
  name = "float-term",
  match = { class = "^float-term$" },
  float = true,
  size = { "monitor_w * 0.5", "monitor_h * 0.5" },
  center = true,
})
