#!/usr/bin/env bash

current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tmux set -gu @oneminimal_style "warmer"
source $current_dir/src/one_minimal_dark.sh
