hl.config({
  input = {
    kb_layout = "us,ru",
    kb_options = "grp:caps_toggle",
    follow_mouse = 1,
    sensitivity = 0,
    touchpad = { natural_scroll = false },
  },
})

hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
