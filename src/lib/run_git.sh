run_git() {
    command "${deps[git]}" -C "${DOTFILES_DIR}" ${@}
}

