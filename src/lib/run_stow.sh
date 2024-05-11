run_stow() {
    command "${deps[stow]}" --dir="${DOTFILES_DIR}" --target="${HOME}" ${@} .
}

