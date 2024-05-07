local repository="${args[repository]}"

if [[ -d "${DOT_DOTFILES_DIR}" ]]; then
    error "${DOT_DOTFILES_DIR} is not empty."
    error "Remove it manually if it was intentional."
    exit 1
fi

command git clone "git@github.com:${repository}.git" "${DOT_DOTFILES_DIR}"
info "cloned dotfiles."
