# cd-pwd-ls
function cd() {
    builtin cd "$@"
    pwd
    ls
}
