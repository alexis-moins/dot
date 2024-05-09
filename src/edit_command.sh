local file="$(run_git ls-files | gum filter --placeholder="Select a file")"

[[ -n "${file}" ]] && $EDITOR "${DOTFILES_DIR}/${file}"
