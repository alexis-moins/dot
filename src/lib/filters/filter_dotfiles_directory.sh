filter_dotfiles_directory() {
    if [[ ! -d "${DOTFILES_DIR}" ]]; then
        warn "\$DOTFILES_DIR is not a directory."
        warn "consider using $(yellow_underlined "dot init")."
    fi
}
