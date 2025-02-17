function aziz() {
    local brightness
    if [[ $# > 0 ]]; then
        brightness="0.$1"
    else
        brightness=1
    fi
    pkill redshift-gtk
    redshift-gtk -l 47.2173:-1.5534 -r -b "$brightness":"$brightness" & disown
}

function son() {
    local sound
    if [[ $# > 0 ]]; then
        sound="$1%"
    else
        sound="100%"
    fi
    pactl -- set-sink-volume 0 "$sound"
}

function optimize-png() {
    local img="$1"
    pngquant -f "$img" -o "$img"
    optipng -o7 "$img"
    zopflipng -ym "$img" "$img"
}
