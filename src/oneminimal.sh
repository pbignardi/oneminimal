#!/usr/bin/env bash

current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $current_dir/utils.sh

# load colorscheme
theme_colorscheme=`get @thm_variant "default"`
source $current_dir/$theme_colorscheme.sh

tmux set-option -gq "status" "on"
tmux set-option -gq "status-justify" "left"

tmux set-option -gq "status-left-length" "100"
tmux set-option -gq "status-right-length" "100"
tmux set-option -gq "status-right-attr" "none"

tmux set-option -gq "message-fg" white
tmux set-option -gq "message-bg" black

tmux set-option -gq "message-command-fg" white
tmux set-option -gq "message-command-bg" white

tmux set-option -gq "status-attr" "none"
tmux set-option -gq "status-left-attr" "none"

tmux set-window-option -gq "window-status-fg" white
tmux set-window-option -gq "window-status-bg" black
tmux set-window-option -gq "window-status-attr" "none"

tmux set-window-option -gq "window-status-activity-bg" black
tmux set-window-option -gq "window-status-activity-fg" black
tmux set-window-option -gq "window-status-activity-attr" "none"

tmux set-window-option -gq "window-status-separator" ""

tmux set-option -gq "window-style" "fg=gray"
tmux set-option -gq "window-active-style" "fg=white"


tmux set-option -gq "pane-border-fg" white
tmux set-option -gq "pane-border-bg" black
tmux set-option -gq "pane-active-border-fg" yellow
tmux set-option -gq "pane-active-border-bg" black

tmux set-option -gq "display-panes-active-colour" "purple"
tmux set-option -gq "display-panes-colour" "grey"

tmux set-option -gq "status-style" "bg=black,fg=white"

tmux set-option -gq "@prefix_highlight_fg" black
tmux set-option -gq "@prefix_highlight_bg" green
tmux set-option -gq "@prefix_highlight_copy_mode_attr" "fg=black,bg=green"
tmux set-option -gq "@prefix_highlight_output_prefix" " / "

time_format="%R"
date_format="%d/%m/%Y"

tmux set-option -gq "status-right" " #[fg=green, bg=black]${status_widgets} #[fg=gray,bg=black,nounderscore,italics] $(hostname -s)  #[fg=#{@thm_blue},bg=#{@thm_bg},nounderscore,noitalics]${time_format} "
tmux set-option -gq "status-left" "#[fg=magenta,bg=black,italics]   #S #{prefix_highlight} "

tmux set-option -gq "window-status-format" "#[fg=white,bg=black,nobold] #I #W "
tmux set-option -gq "window-status-current-format" "#[fg=green,bg=black,bold]  #W "
