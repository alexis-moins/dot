local path="${args[path]}"
local copy="${args[--copy]}"

local source="${DOT_INSTALL_DIR}"

if [[ -f "${path}/dot" ]]; then
    error "there is already a link in ${path}."
    exit 1
fi

if [[ ! -d "${source}" ]]; then
    error "source directory ${source} does not exist."
    exit 1
fi

if [[ ! -f "${source}/dot" ]]; then
    error "script 'dot' not found in ${source}."
    exit 1
fi

local executable=`test -n "${copy}" && echo "cp" || echo "ln -s"`

command ${executable} "${source}/dot" "${path}/dot"
success "link created in ${path}."
