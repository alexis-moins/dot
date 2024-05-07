candidates="$(run_git diff --cached --name-only)"

[[ -z "${candidates}" ]] && info "no more changes to restore." && return 0

local files="$(echo "${candidates}" \
    | tr ' ' '\n' | gum filter --no-limit --fuzzy --placeholder="Select files to restore" )"

[[ -z "${files}" ]] && return 0

run_git restore --staged "$(echo "${files}" | tr '\n' ' ')"
