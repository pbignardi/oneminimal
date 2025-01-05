#!/usr/bin/env bash

echo $0
current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tmux set -gu @oneminimal_style "nordic"
source $current_dir/src/one_minimal_dark.sh
