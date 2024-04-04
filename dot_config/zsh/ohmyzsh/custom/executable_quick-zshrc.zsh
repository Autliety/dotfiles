zrc() {
    local zshrc="$ZDOTDIR/.zshrc"

    help() {
        echo "zrc: print zshrc location and function help"
        echo "-e: edit zshrc using default editor"
        echo "-s: source zshrc"
        echo "-v | -p: use default pager to view zshrc"
    }
    print_location() {
        echo "zshrc: $zshrc"
    }
    edit_zshrc() {
        ${EDITOR:-vim} "$zshrc"
    }
    source_zshrc() {
        source "$zshrc"
    }
    view_zshrc() {
        ${PAGER:-less} "$zshrc"
    }

    case "$1" in
	-h|--help) help ;;
        -e|--edit) edit_zshrc ;;
        -s|--source) source_zshrc ;;
        -v|--view|-p|--print) view_zshrc ;;
        *) print_location && help ;;
    esac
}

