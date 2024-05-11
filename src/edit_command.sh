local file="${args[file]}"

if [[ -n "${file}" ]]; then
    command $EDITOR "${DOTFILES_DIR}/${file}"
else
    local file="$(run_git ls-files --others --cached --modified | gum filter --placeholder="Select a file")"

    [[ -n "${file}" ]] && $EDITOR "${DOTFILES_DIR}/${file}"
fi
