local force="${args[--force]}"
local repository="${args[repository]}"

if [[ -d "${DOTFILES_DIR}" ]] && [[ -z "${force}" ]]; then
    if [[ -z "${force}" ]]; then
        error "\$DOTFILES_DIR is not empty."
        exit 1
    else
        command rm -rf "${DOTFILES_DIR}"
    fi
fi

if [[ -n "${repository}" ]]; then
    command "${deps[git]}" clone "${repository}" "${DOTFILES_DIR}"
    success "cloned remote dotfiles"
else
    command mkdir -p "${DOTFILES_DIR}"
    run_git init

    success "initialized empty dotfiles"
fi
