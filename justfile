SCRIPT := "dot"

build:
    @bashly generate --env=production --upgrade

watch:
    @bashly generate --watch

run *ARGS:
    @./{{SCRIPT}} {{ARGS}}
