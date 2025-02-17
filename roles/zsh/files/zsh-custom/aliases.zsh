files="$(find -L "$ZSH_CUSTOM/alias/" -type f -name '*.zsh-alias' -print0 | sort -z)"
IFS=$'\0' read -r -A files <<< "$files"
for f in "${files[@]}"; do
    if [[ -f "$f" ]]; then source "$f"; fi
done
