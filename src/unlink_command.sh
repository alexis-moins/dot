local path="${args[path]}"

if [[ -f "${path}/dot" ]]; then
    command rm "${path}/dot"

    success "link removed from ${path}."
else
    error "no link found in ${path}."
    exit 1
fi
