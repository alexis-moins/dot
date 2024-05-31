SCRIPT := "dot"

export DOT_INSTALL_DIR := `pwd`

generate:
    bashly generate --upgrade

watch:
    bashly generate --watch

build:
    bashly generate --env=production --upgrade

run *ARGS:
    ./{{SCRIPT}} {{ARGS}}
