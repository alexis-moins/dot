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
# Clone your remote dotfiles
dot clone alexis-moins/dotfiles
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
  help     Show help about a command
  link     Create a link to the dot script
  unlink   Remove the link to the dot script
  update   Update to the latest version
  env      Show environment information

Dotfiles Commands:
  clone    Clone a remote git dotfiles repository

Options:
  --help, -h
    Show this help

  --version, -v
    Show version number

Environment Variables:
  DOT_INSTALL_DIR
    Directory where the repository was cloned
    Default: /Users/alexis/.dot

  DOT_DOTFILES_DIR
    Directory where the dotfiles were cloned
    Default: /Users/alexis/dotfiles
```

