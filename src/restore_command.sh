if [[ -n "${other_args[*]}" ]]; then
    run_git restore ${other_args[*]} && success "restored file(s) - ${other_args[*]}"
else
    candidates="$(run_git ls-files -mo --exclude-standard --full-name)"

    [[ -z "${candidates}" ]] && info "no more changes to restore." && return 0

    local files="$(echo "${candidates}" \
        | tr ' ' '\n' | gum filter --no-limit --fuzzy --placeholder="Files to restore...")"

    [[ -z "${files}" ]] && return 0

    run_git restore "$(echo "${files}" | tr '\n' ' ')"
fi
