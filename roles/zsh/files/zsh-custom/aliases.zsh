alias u='sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get autoremove --purge && sudo apt-get clean'
alias ansible-playbook='ansible-playbook --vault-id @prompt -K -i hosts'

files="$(find "$ZSH_CUSTOM/alias/" -type f -name '*.zsh-alias' -print0 | sort -z)"
IFS=$'\0' read -r -A files <<< "$files"
for f in "${files[@]}"; do
    if [[ -f "$f" ]]; then source "$f"; fi
done
