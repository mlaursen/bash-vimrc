# an extension of the solarized theme

# background color
BG_COLOR_BASE03=%K{8}
BG_COLOR_BASE02=%K{0}
BG_COLOR_BASE01=%K{10}
BG_COLOR_BASE00=%K{11}
BG_COLOR_BASE0=%K{12}
BG_COLOR_BASE1=%K{14}
BG_COLOR_BASE2=%K{7}
BG_COLOR_BASE3=%K{15}
BG_COLOR_YELLOW=%K{3}
BG_COLOR_ORANGE=%K{1}
BG_COLOR_RED=%K{9}
BG_COLOR_MAGENTA=%K{5}
BG_COLOR_VIOLET=%K{13}
BG_COLOR_BLUE=%K{4}
BG_COLOR_CYAN=%K{6}
BG_COLOR_GREEN=%K{2}

# foreground color
FG_COLOR_BASE03=%F{8}
FG_COLOR_BASE02=%F{0}
FG_COLOR_BASE01=%F{10}
FG_COLOR_BASE00=%F{11}
FG_COLOR_BASE0=%F{12}
FG_COLOR_BASE1=%F{14}
FG_COLOR_BASE2=%F{7}
FG_COLOR_BASE3=%F{15}
FG_COLOR_YELLOW=%F{3}
FG_COLOR_ORANGE=%F{1}
FG_COLOR_RED=%F{9}
FG_COLOR_MAGENTA=%F{5}
FG_COLOR_VIOLET=%F{13}
FG_COLOR_BLUE=%F{4}
FG_COLOR_CYAN=%F{6}
FG_COLOR_GREEN=%F{2}

reset_color=$FG_COLOR_BASE0

ZSH_THEME_GIT_PROMPT_SEPARATOR="|"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$FG_COLOR_BASE2%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$FG_COLOR_GREEN%}%{●%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$FG_COLOR_RED%}%{✖%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$FG_COLOR_CYAN%}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG_COLOR_BASE00…%G$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG_COLOR_GREEN%}%{✔%G%}"

PROMPT="
%{$FG_COLOR_GREEN%}%n @ %{$FG_COLOR_YELLOW%}%~%{$FG_COLOR_BASE0%}/"
PROMPT+=' %{$reset_color%}$(git_super_status)'
PROMPT+="
$ "

RPROMPT=""
