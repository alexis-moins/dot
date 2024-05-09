local repository="${args[repository]}"

if [[ -d "${DOTFILES_DIR}" ]]; then
    error "${DOTFILES_DIR} is not empty."
    error "Remove it manually if it was intentional."
    exit 1
fi

command git clone "git@github.com:${repository}.git" "${DOTFILES_DIR}"
info "cloned dotfiles."
