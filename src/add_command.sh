local pattern="${HOME}/"

for file_path in ${other_args[*]}; do
    # Make file_path absolute and follow symlinks
    file_path="$(realpath "${file_path}")"

    local relative_path="${file_path/${pattern}/}"
    # echo "relative_path: ${relative_path}"

    if [[ "${file_path}" = ${DOTFILES_DIR}/* ]]; then
        error "${relative_path/dotfiles\//} is already in your dotfiles"
        continue
    fi

    if [[ ! -e "${file_path}" ]]; then
        error "${relative_path} not found"
        continue
    fi

    local path_in_dotfiles="${DOTFILES_DIR}/${relative_path}"
    # echo "path_in_dotfiles: ${path_in_dotfiles}"

    if [[ -e "${path_in_dotfiles}" ]]; then
        error "${relative_path} is already in your dotfiles"
        continue
    fi

    # If it's a directory, attempt to copy it recursively
    if [[ -d "${file_path}" ]]; then
        command cp -R "${file_path}" "${path_in_dotfiles}" \
            && success "${relative_path} added to your dotfiles"
    else
        local directory="$(dirname "${path_in_dotfiles}")"

        # echo "directory: ${directory}"

        [[ ! -d "${directory}" ]] && command mkdir -p "${directory}"

        command cp "${file_path}" "${path_in_dotfiles}" \
            && success "${relative_path} added to your dotfiles"
    fi
done
