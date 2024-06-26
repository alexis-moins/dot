<div align='center'>

![Version](https://img.shields.io/badge/version-1.2.0-blue.svg)

</div>

`dot` is a bash script allowing users to manage their dotfiles.

## Prerequisites

- bash 4.0 or higher
- [gum](https://github.com/charmbracelet/gum)
- stow
- git


## 🧰 Installation

### Using dot

Clone the repository in the recommended location
```bash
git clone git@github.com:alexis-moins/dot.git ~/.dot
```

Go into the install directory and execute the [install](install) script:
```bash
./install
```

The last command creates a symbolic link to the `dot` script in the `~/.local/bin/` directory (you can also change the link destination path by passing it as an argument to the install script).

> If you did not clone the repository in `~/.dot`, don't forget to set the `DOT_INSTALL_DIR` environment variable globally afterwards!

### Manually

Clone the repository then move the [dot](dot) script to anywhere in your `PATH`, and ensure it is executable!

## 🌱 Quick Start

After installing, you can follow these steps to quickly see how it works:

```bash
# Initialize an empty dotfiles repo
dot init

# Or clone your dotfiles
dot init git@github.com:alexis-moins/dotfiles.git

# Add a new config file to your dotfiles
dot add ~/.bashrc

# Ensure the file was added
dot status

# Show git diff
dot diff .bashrc

# Remove the original file
rm ~/.bashrc

# Create symlinks to your dotfiles in $HOME
dot install

# Stage one or more files
dot stage .bashrc

# Save your changes...
dot commit "feat: add .bashrc"

# ...and push them to your remote!
dot sync
```

## 🚦 Usage

```
$ dot

dot - dotfiles manager

Usage:
  dot COMMAND
  dot [COMMAND] --help | -h
  dot --version | -v

Commands:
  help        Show help about a command
  link        Create a link to the dot script
  unlink      Remove the link to the dot script
  update      Update dot to the latest version
  env         Show environment information
  dir         Show dotfiles directory

Dotfiles Commands:
  init        Initialize a dotfiles repository or clone one
  edit        Edit your dotfiles
  install     Install dotfiles using symbolic links
  uninstall   Remove symbolic links from /Users/alexis
  list        List files from your dotfiles
  filter      Filter files from your dotfiles
  cd          Navigate to your dotfiles in a new shell
  add         Add files to your dotfiles

Git Commands:
  sync        Update your dotfiles to the latest commit
  status      Show the status of your dotfiles
  stage       Stage files for committing later
  unstage     Unstage files
  restore     Restore unstaged files to their previous state
  diff        Show diff with last commit
  idiff       Show interactive diff with last commit
  commit      Commit changes

Options:
  --help, -h
    Show this help

  --version, -v
    Show version number

Environment Variables:
  EDITOR
    Editor to use for interactive commands
    Default: vim

  DOT_INSTALL_DIR
    Directory where the repository was cloned
    Default: ~/.dot

  DOTFILES_DIR
    Directory containing your dotfiles
    Default: ~/dotfiles
```

