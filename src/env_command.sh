local variable="${args[variable]}"

if [[ -n "${variable}" ]]; then
    echo "${!variable}"
else
    echo "DOT_INSTALL_DIR=${DOT_INSTALL_DIR}"
    echo "DOTFILES_DIR=${DOTFILES_DIR}"
fi
