# MyHyprDotfiles

Arch Linux + Hyprland (конфиг на Lua), Catppuccin Mocha / lavender.

![screenshot](screenshots/rice.png)

## Что внутри

Waybar, rofi, swaync, wlogout, hyprlock, hypridle, hyprpaper, kitty (fish + starship), fastfetch, GTK 3/4.

## Пакеты

```
hyprland waybar kitty thunar gvfs tumbler hyprpaper hyprlock hypridle
hyprpolkitagent swaync rofi wlogout grim slurp satty wl-clipboard cliphist
brightnessctl playerctl hyprpicker pavucontrol nwg-look fastfetch btop
fish starship eza zoxide bat fzf adw-gtk-theme papirus-icon-theme
ttf-jetbrains-mono-nerd noto-fonts noto-fonts-emoji
```

## Установка

> Нужен Hyprland версии 0.55 или новее: конфиг написан на Lua, на старых версиях не заработает.

```
git clone https://github.com/user0xk9/MyHyprDotfiles ~/MyHyprDotfiles
cp -r ~/.config ~/.config.backup
cp -r ~/MyHyprDotfiles/{hypr,waybar,rofi,swaync,wlogout,kitty,fastfetch,fish,btop,gtk-3.0,gtk-4.0,starship.toml} ~/.config/
```

Вторая команда делает копию твоих текущих настроек на случай, если что-то пойдёт не так.
Потом поставь пакеты из списка выше и положи свои обои в `~/Pictures/wallpapers`
(путь прописан в `hypr/hyprpaper.conf`).
```

## Заметки

- Обои в репозиторий не входят: положи свои в `~/Pictures/wallpapers` и поправь путь в `hypr/hyprpaper.conf`.
- После `nwg-look` проверь, что `gtk-4.0/gtk.css` не стал ссылкой на системную тему.
- Цвета лежат в `hypr/modules/colors.lua`, `waybar/colors.css`, `hypr/colors.conf`.
- Тема SDDM и политики Firefox лежат вне репозитория.
