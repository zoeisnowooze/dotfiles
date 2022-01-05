# Witch Hazel Hypercolor ZSH Theme
#
# by @medecau and @zoeisnowooze
#
# https://witchhazel.thea.codes/
# https://twitter.com/ZoeIsNowOoze/status/1418271734327820289
#
# 1. Create a file ~/.oh-my-zsh/custom/themes/witchhazelhypercolor.zsh-theme
#
# 2. Set the name of the theme to load in the ~/.zshrc configuration, for example:
#
#      ZSH_THEME="witchhazelhypercolor"

PROMPT="%(?:%{$FG[121]%}❯ :%{$FG[218]%}❯ )"
PROMPT+=' %{$FG[123]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$bold_color%}%{$FG[183]%}git:(%{$FG[218]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[183]%}) %{$FG[228]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[183]%})"
