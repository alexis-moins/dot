local repository="${args[repository]}"

if [[ -d "${DOTFILES_DIR}" ]]; then
    error "\$DOTFILES_DIR is not empty."
    return 1
fi

if [[ -n "${repository}" ]]; then
    command "${deps[git]}" clone "${repository}" "${DOTFILES_DIR}"
    info "cloned remote dotfiles."
else
    command mkdir -p "${DOTFILES_DIR}"
    run_git init

    info "initialized empty dotfiles."
fi
