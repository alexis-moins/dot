filter_dotfiles() {
    run_git ls-files | gum filter --placeholder="Select a file..."
}
