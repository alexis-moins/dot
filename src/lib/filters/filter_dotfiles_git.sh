filter_dotfiles_git() {
    if [[ ! -d "${DOTFILES_DIR}/.git" ]]; then
        warn "\$DOTFILES_DIR is not a git repository."
        warn "consider using $(yellow_underlined "dot init")."
    fi
}
