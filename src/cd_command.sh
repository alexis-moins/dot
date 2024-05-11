echo "# this file is located in 'src/cd_command.sh'"
echo "# code for 'dot cd' goes here"
echo "# you can edit it freely and regenerate (it will not be overwritten)"
inspect_args

command cd "${DOTFILES_DIR}"

command "${SHELL}"
