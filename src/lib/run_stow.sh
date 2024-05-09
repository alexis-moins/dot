run_stow() {
    command stow --dir="${DOTFILES_DIR}" --target="${HOME}" ${@} .
}

