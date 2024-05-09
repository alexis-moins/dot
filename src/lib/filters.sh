filter_dotfiles_is_healthy() {
    if [[ ! -d "${DOTFILES_DIR}" ]]; then
        warn "${DOTFILES_DIR} is not a directory."
        return 1
    fi

    if [[ ! -d "${DOTFILES_DIR}/.git" ]]; then
        warn "your dotfiles directory is not a git repository."
        return 1
    fi
}
