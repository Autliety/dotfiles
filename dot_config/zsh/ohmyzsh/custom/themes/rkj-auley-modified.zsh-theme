# user, host, full path, and time/date on two lines for easier vgrepping

# alternate prompt with git & hg
PROMPT=$'\n%{$fg_bold[blue]%}┌─[%{$fg_bold[green]%}%n%b%{$fg[black]%}@%{$fg[green]%}%m%{$fg_bold[blue]%}]%{$reset_color%} - %{$fg_bold[blue]%}[%{$fg[cyan]%}%~%{$fg_bold[blue]%}]%{$reset_color%} - %{$fg_bold[blue]%}[%b%{$fg[yellow]%}'%D{"%H:%M:%S"}%b$'%{$fg_bold[blue]%}]
%{$fg_bold[blue]%}└─%{$fg_bold[magenta]%}$> %{$reset_color%}'
PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '
