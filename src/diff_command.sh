local pick="${args[--pick]}"
local staged="${args[--staged]}"

if [[ -n "${pick}" ]]; then
    if [[ -n "${staged}" ]]; then
        interactive_staged_diff
    else
        interactive_diff
    fi
else
    if [[ -z "${staged}" ]]; then
        run_git diff
    else
        run_git diff --staged
    fi
fi
