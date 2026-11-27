
if status is-interactive
    set -g fish_greeting

    # приветствие при открытии терминала
    fastfetch

    # приглашение
    starship init fish | source

    # умные утилиты
    zoxide init fish | source
    fzf --fish | source

    # clear показывает fastfetch заново
    function clear
        argparse n/nofetch -- $argv
        or return
        command clear
        if not set -q _flag_nofetch
            sleep 0.05
            fastfetch
        end
    end
        
        
    
    bind \cl 'commandline -r clear; commandline -f execute'

    # алиасы
    alias ls 'eza --icons --group-directories-first'
    alias ll 'eza -lah --icons --group-directories-first'
    alias cat 'bat --paging=never'

    # сокращения
    abbr -a gs 'git status'
    abbr -a up 'sudo pacman -Syu'
end

function roblox --wraps='flatpak run org.vinegarhq.Sober'
    GL_SYNC_TO_VBLANK=0 GL_SHADER_DISK_CACHE=1 __GL_SHADER_DISK_CACHE_SKIP_CLEANUP=1 flatpak run org.vinegarhq.Sober $argv
end

function sober --wraps='roblox'
    roblox $argv
end

# Проверка текущего режима видеокарты
alias gpu-status='envycontrol -q'

# Только встройка Intel (максимальная экономия батареи, RTX 3050 отключена)
function gpu-eco
    sudo envycontrol -s integrated
    echo "Режим Integrated установлен. Перезагрузите ноутбук (reboot)."
end

# Гибридный режим (система на Intel, игры на RTX 3050)
function gpu-hybrid
    sudo envycontrol -s hybrid --rtd3
    echo "Режим Hybrid (с энергосбережением RTD3) установлен. Перезагрузите ноутбук (reboot)."
end

# Только дискретка NVIDIA (максимальный FPS и минимальная задержка)
function gpu-nvidia
    sudo envycontrol -s nvidia
    echo "Режим NVIDIA (dGPU) установлен. Перезагрузите ноутбук (reboot)."
end
