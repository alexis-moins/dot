if [[ -n "${other_args[*]}" ]]; then
    run_git restore --staged ${other_args[*]} && success "unstaged file(s) - ${other_args[*]}"
else
    candidates="$(run_git diff --cached --name-only)"

    [[ -z "${candidates}" ]] && info "no more changes to unstage." && return 0

    local files="$(echo "${candidates}" \
        | tr ' ' '\n' | gum filter --no-limit --fuzzy --placeholder="Select files to unstage" )"

    [[ -z "${files}" ]] && return 0

    run_git restore --staged "$(echo "${files}" | tr '\n' ' ')"
fi
