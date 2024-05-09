interactive_diff() {
    candidates="$(run_git ls-files -mo --exclude-standard --full-name )"
    [[ -z "${candidates}" ]] && info 'no changes to diff.' && return 1

    local files="$(echo "${candidates}" | gum filter --placeholder="Select files to diff" --no-limit)"
    [[ -z "${files}" ]] && return 1

    run_git diff "${files}"
}
