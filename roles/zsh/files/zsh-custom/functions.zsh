function aziz() {
    if [[ $# > 0 ]]; then
        xrandr --output DP-1 --brightness "0.$1"
        xrandr --output eDP-1 --brightness "0.$1"
    else
        xrandr --output DP-1 --brightness 1
        xrandr --output eDP-1 --brightness 1
    fi
}
