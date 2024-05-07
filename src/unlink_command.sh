local path="${args[path]}"

if [[ -f "${path}/dot" ]]; then
    run_silent rm "${path}/dot"

    info "link removed from ${path}."
else
    error "no link found in ${path}."
    exit 1
fi
