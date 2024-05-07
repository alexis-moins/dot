run_stow() {
    command stow --dir="${DOT_DOTFILES_DIR}" --target="${HOME}" ${@} .
}

