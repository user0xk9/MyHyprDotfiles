local mod = "SUPER"
local function run(cmd) return hl.dsp.exec_cmd(cmd) end

-- программы
hl.bind(mod .. " + Return", run("kitty"))
hl.bind(mod .. " + D", run("rofi -show drun"))
hl.bind(mod .. " + E", run("thunar"))
hl.bind(mod .. " + L", run("hyprlock"))
hl.bind(mod .. " + SHIFT + E", run("wlogout"))
hl.bind(mod .. " + N", run("swaync-client -t -sw"))
hl.bind(mod .. " + SHIFT + S", run('grim -g "$(slurp)" - | satty -f -'))
hl.bind(mod .. " + SHIFT + C", run("hyprpicker -a"))
hl.bind(mod .. " + period", run("cliphist list | rofi -dmenu | cliphist decode | wl-copy"))
hl.bind(mod .. " + M", run("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mod .. " + B", run("firefox"))
hl.bind(mod .. " + grave", hl.dsp.workspace.toggle_special("term"))
hl.bind(mod .. " + W", run("~/.config/hypr/scripts/wallpaper.sh"))
hl.bind(mod .. " + SHIFT + N", run("pkill hyprsunset || hyprsunset -t 4500"))

-- окна
hl.bind(mod .. " + Q", hl.dsp.window.close())
hl.bind(mod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind(mod .. " + P", hl.dsp.window.pseudo())
hl.bind(mod .. " + J", hl.dsp.layout("togglesplit"))

for _, d in ipairs({ "left", "right", "up", "down" }) do
  hl.bind(mod .. " + " .. d, hl.dsp.focus({ direction = d }))
end

-- воркспейсы
for i = 1, 10 do
  local key = i % 10
  hl.bind(mod .. " + " .. key, hl.dsp.focus({ workspace = i }))
  hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end
hl.bind(mod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- мышь
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- мультимедиа
local fx = { locked = true, repeating = true }
hl.bind("XF86AudioRaiseVolume", run("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), fx)
hl.bind("XF86AudioLowerVolume", run("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), fx)
hl.bind("XF86AudioMute", run("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), fx)
hl.bind("XF86AudioMicMute", run("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), fx)
hl.bind("XF86MonBrightnessUp", run("brightnessctl -e4 -n2 set 5%+"), fx)
hl.bind("XF86MonBrightnessDown", run("brightnessctl -e4 -n2 set 5%-"), fx)
hl.bind("XF86AudioNext", run("playerctl next"), { locked = true })
hl.bind("XF86AudioPlay", run("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPause", run("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", run("playerctl previous"), { locked = true })
