function github-clone() {
    local user=$1
    local repo=$2
    if [[ $# = 3 ]]; then
        local branch=$3
    else
        local branch=master
    fi
    git clone -b "$branch" "git@github.com:${user}/${repo}.git" \
	&& cd "$repo"
}

function speak() {
    espeak -v mb/mb-fr4 "$*" --pho \
        | mbrola /usr/share/mbrola/fr4/fr4  - -.au \
        | aplay
}

function convert-ext2ext() {
    for f in *."$1"; do
        convert "$f" "${f:.$1:.$2}"
    done
}

# function to limit memory usage in the current shell
function limit() {
    if [[ $# > 0 ]]; then
        ulimit -v "$(($1 * 1024))"
    else
        # if no size is precised go for 2Gio
        ulimit -v 2097152
    fi
}

function aziz() {
    if [[ $# > 0 ]]; then
        xrandr --output DP-1 --brightness "0.$1"
        xrandr --output eDP-1 --brightness "0.$1"
    else
        xrandr --output DP-1 --brightness 1
        xrandr --output eDP-1 --brightness 1
    fi
}