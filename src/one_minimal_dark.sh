#!/usr/bin/env bash

current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $current_dir/utils.sh

# get palette option. default to warmer.
palette=$(get @oneminimal_style 'warmer')

case  $palette in
    "warmer")
        source $current_dir/colors/warmer.sh
        ;;
    "darker")
        source $current_dir/colors/darker.sh
        ;;
    "deep")
        source $current_dir/colors/deep.sh
        ;;
    "light")
        source $current_dir/colors/light.sh
        ;;
    "cool")
        source $current_dir/colors/cool.sh
        ;;
    "warm")
        source $current_dir/colors/warm.sh
        ;;
    "dark")
        source $current_dir/colors/dark.sh
        ;;
    "nordic")
        source $current_dir/colors/nordic.sh
        ;;
esac

set "status" "on"
set "status-justify" "left"

set "status-left-length" "100"
set "status-right-length" "100"
set "status-right-attr" "none"

set "message-fg" "$fg"
set "message-bg" "$black"

set "message-command-fg" "$fg"
set "message-command-bg" "$fg"

set "status-attr" "none"
set "status-left-attr" "none"

setw "window-status-fg" "$bg"
setw "window-status-bg" "$bg"
setw "window-status-attr" "none"

setw "window-status-activity-bg" "$bg"
setw "window-status-activity-fg" "$bg"
setw "window-status-activity-attr" "none"

setw "window-status-separator" ""

set "window-style" "fg=$grey"
set "window-active-style" "fg=$fg"

set "pane-border-fg" "$fg"
set "pane-border-bg" "$bg"
set "pane-active-border-fg" "$yellow"
set "pane-active-border-bg" "$bg"

set "display-panes-active-colour" "$yellow"
set "display-panes-colour" "$fg"

set "status-bg" "$bg"
set "status-fg" "$fg"

set "@prefix_highlight_fg" "$bg"
set "@prefix_highlight_bg" "$green"
set "@prefix_highlight_copy_mode_attr" "fg=$bg,bg=$green"
set "@prefix_highlight_output_prefix" " / "

status_widgets=$(get "@bar_widgets")
time_format="%R"
date_format="%d/%m/%Y"

set "status-right" " #[fg=$green, bg=$bg]${status_widgets} #[fg=$grey,bg=$bg,nounderscore,italics] $(hostname -s) #[fg=$blue,bg=$bg,nounderscore,noitalics]${time_format}  "
set "status-left" "#[fg=$purple,bg=$bg,italics]   #S #{prefix_highlight} "

# set "window-status-format" "#[fg=$fg,bg=$bg,nobold]  #W "
set "window-status-format" "#[fg=$fg,bg=$bg,nobold] #I #W "
set "window-status-current-format" "#[fg=$yellow,bg=$bg,bold]  #W "
