if [[ ! -d "${DOT_INSTALL_DIR}" ]]; then
    warn "no dot install directory."
    warn "check documentation for installation instruction."
    exit 1
fi

git -C "${DOT_INSTALL_DIR}" pull
