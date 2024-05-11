if [[ -n "${other_args[*]}" ]]; then
    run_git add ${other_args[*]} && success "staged file(s) - ${other_args[*]}"
else
    candidates="$(run_git ls-files -mo --exclude-standard --full-name)"

    [[ -z "${candidates}" ]] && info "no more changes to stage." && return 0

    local files="$(echo "${candidates}" \
        | tr ' ' '\n' | gum filter --no-limit --fuzzy --placeholder="Select files to stage" )"

    [[ -z "${files}" ]] && return 0

    run_git add "$(echo "${files}" | tr '\n' ' ')"
fi
