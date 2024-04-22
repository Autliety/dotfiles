# cd-pwd-ls
function cd() {
    builtin cd "$@"
    pwd
    command ls -GF
}
