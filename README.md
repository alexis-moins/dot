<div align='center'>

![Version](https://img.shields.io/badge/version-0.1.0-blue.svg)

</div>

`dot` is a bash script allowing users to manage their dotfiles using a centralized cli.

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

Go into the install directory and let dot take care of the rest!
```bash
DOT_INSTALL_DIR=$(pwd) ./dot link
```

The last command creates a symbolic link to the `dot` script in the `~/.local/bin/` directory (you can also change the link destination path). 

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

# Make changes to your dotfiles
touch ~/dotfiles/.bashrc

# Create symlinks to your dotfiles in $HOME
dot install

# Show changed files
dot status

# Show git diff
dot diff

# Stage one or more files
dot stage

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
  sync        Update your dotfiles to the latest commit
  install     Install dotfiles using symbolic links
  uninstall   Remove symbolic links from /Users/alexis
  status      Show the status of your dotfiles
  stage       Stage files for committing later
  unstage     Unstage files
  restore     Restore unstaged files to their previous state
  list        List files from your dotfiles
  diff        Show diff with last commit
  filter      Filter files from your dotfiles
  commit      Commit changes
  cd          Navigate to your dotfiles in a new shell

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

