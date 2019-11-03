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

function optimize-png() {
    local img="$1"
    pngquant -f "$img" -o "$img"
    optipng -o7 "$img"
    zopflipng -ym "$img" "$img"
}
