# Disable rm
function rm() { 
    echo '[rm] is disabled due to data security concern. '
    echo 'Please use [dl] instead. ' 
}

# Move file to trash by [dl], in replace of [rm].
# ~/.Trash is created by default, and folders to be moved must end with a slash
function dl() {
    if [ ! -d "$HOME/.Trash" ]; then
        mkdir "$HOME/.Trash"
    fi
    if [ $# -eq 0 ]; then
        echo 'Move file to trashbin. Usage: dl <filename>...'
        return 1
    fi
    for arg in "$@"; do
        if [ -d "${arg%/}" ] && [ "${arg: -1}" != "/" ]; then
            echo "INTENTION: Directories must end with a slash (/). No files were moved."
            return 2
        fi
    done
    command mv -fv "$@" "$HOME/.Trash"
}

# check trashbin and clean it with -c or --clean
function dd() {
    local trash=$HOME/.Trash
    echo "$trash"
    ls -a "$trash"
    if [[ "$1" == "-c" ]] || [[ "$1" == "--clean" ]]; then
        echo "-----------------------------------------------------"
        echo "| WARNING: data lost risk!!!                        |"
        echo "| All files and folders is going to be DELETED now! |"
        echo "-----------------------------------------------------"
        command rm -rIv $trash/*
        command rm -rIv $trash/.*
    fi
}


# Move files back from trash to pwd
function ld() {
    local trash=$HOME/.Trash
    if [ ! $1 ]; then
        echo "$trash"
        ls -a "$trash"
    fi
    for f in $@; do
        command mv -riv $trash/$f ./
    done
}

