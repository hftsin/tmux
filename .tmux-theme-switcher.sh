#!/usr/bin/env bash
# tmux theme switcher for oh-my-tmux
# Usage: ~/.tmux-theme-switcher.sh [theme_name]
# If no argument, show fzf picker

set -euo pipefail

CONF="$HOME/.tmux.conf.local"

solarized_dark() {
cat <<'THEME'
# solarized dark theme
tmux_conf_theme_colour_1="#002b36"    # base03
tmux_conf_theme_colour_2="#073642"    # base02
tmux_conf_theme_colour_3="#586e75"    # base01
tmux_conf_theme_colour_4="#268bd2"    # blue
tmux_conf_theme_colour_5="#b58900"    # yellow
tmux_conf_theme_colour_6="#00212b"    # darker bg
tmux_conf_theme_colour_7="#93a1a1"    # base1
tmux_conf_theme_colour_8="#00212b"    # darker bg
tmux_conf_theme_colour_9="#6c71c4"    # violet
tmux_conf_theme_colour_10="#d33682"   # magenta
tmux_conf_theme_colour_11="#859900"   # green
tmux_conf_theme_colour_12="#839496"   # base0
tmux_conf_theme_colour_13="#93a1a1"   # base1
tmux_conf_theme_colour_14="#00212b"   # darker bg
tmux_conf_theme_colour_15="#002b36"   # base03
tmux_conf_theme_colour_16="#cb4b16"   # orange
tmux_conf_theme_colour_17="#2aa198"   # cyan
THEME
}

material_design() {
cat <<'THEME'
# material design theme
tmux_conf_theme_colour_1="#263238"    # blue grey 900
tmux_conf_theme_colour_2="#37474f"    # blue grey 800
tmux_conf_theme_colour_3="#78909c"    # blue grey 400
tmux_conf_theme_colour_4="#42a5f5"    # blue 400
tmux_conf_theme_colour_5="#ffee58"    # yellow 400
tmux_conf_theme_colour_6="#1c262b"    # darker bg
tmux_conf_theme_colour_7="#eceff1"    # blue grey 50
tmux_conf_theme_colour_8="#1c262b"    # darker bg
tmux_conf_theme_colour_9="#ab47bc"    # purple 400
tmux_conf_theme_colour_10="#ec407a"   # pink 400
tmux_conf_theme_colour_11="#66bb6a"   # green 400
tmux_conf_theme_colour_12="#b0bec5"   # blue grey 200
tmux_conf_theme_colour_13="#eceff1"   # blue grey 50
tmux_conf_theme_colour_14="#1c262b"   # darker bg
tmux_conf_theme_colour_15="#263238"   # blue grey 900
tmux_conf_theme_colour_16="#ff7043"   # deep orange 400
tmux_conf_theme_colour_17="#26c6da"   # cyan 400
THEME
}

tokyo_night() {
cat <<'THEME'
# tokyo night theme
tmux_conf_theme_colour_1="#1a1b26"    # bg dark
tmux_conf_theme_colour_2="#292e42"    # bg highlight
tmux_conf_theme_colour_3="#565f89"    # comment
tmux_conf_theme_colour_4="#7aa2f7"    # blue
tmux_conf_theme_colour_5="#e0af68"    # yellow
tmux_conf_theme_colour_6="#16161e"    # bg darker
tmux_conf_theme_colour_7="#c0caf5"    # fg
tmux_conf_theme_colour_8="#16161e"    # bg darker
tmux_conf_theme_colour_9="#bb9af7"    # purple
tmux_conf_theme_colour_10="#ff007c"   # magenta
tmux_conf_theme_colour_11="#9ece6a"   # green
tmux_conf_theme_colour_12="#a9b1d6"   # fg dark
tmux_conf_theme_colour_13="#c0caf5"   # fg
tmux_conf_theme_colour_14="#16161e"   # bg darker
tmux_conf_theme_colour_15="#1a1b26"   # bg dark
tmux_conf_theme_colour_16="#ff9e64"   # orange
tmux_conf_theme_colour_17="#7dcfff"   # cyan
THEME
}

ubuntu() {
cat <<'THEME'
# ubuntu theme
tmux_conf_theme_colour_1="#300a24"    # aubergine bg
tmux_conf_theme_colour_2="#3d1131"    # aubergine lighter
tmux_conf_theme_colour_3="#8c6e83"    # muted purple
tmux_conf_theme_colour_4="#0e8420"    # ubuntu green
tmux_conf_theme_colour_5="#e0d816"    # yellow
tmux_conf_theme_colour_6="#200718"    # aubergine darker
tmux_conf_theme_colour_7="#eeeeec"    # fg
tmux_conf_theme_colour_8="#200718"    # aubergine darker
tmux_conf_theme_colour_9="#ad7fa8"    # plum
tmux_conf_theme_colour_10="#cc0000"   # red
tmux_conf_theme_colour_11="#4e9a06"   # green
tmux_conf_theme_colour_12="#b8a8b2"   # fg muted
tmux_conf_theme_colour_13="#eeeeec"   # fg
tmux_conf_theme_colour_14="#200718"   # aubergine darker
tmux_conf_theme_colour_15="#300a24"   # aubergine bg
tmux_conf_theme_colour_16="#e95420"   # ubuntu orange
tmux_conf_theme_colour_17="#06989a"   # cyan
THEME
}

nord() {
cat <<'THEME'
# nord theme
tmux_conf_theme_colour_1="#2e3440"    # polar night 1
tmux_conf_theme_colour_2="#3b4252"    # polar night 2
tmux_conf_theme_colour_3="#4c566a"    # polar night 4
tmux_conf_theme_colour_4="#81a1c1"    # frost blue
tmux_conf_theme_colour_5="#ebcb8b"    # aurora yellow
tmux_conf_theme_colour_6="#242933"    # darker bg
tmux_conf_theme_colour_7="#eceff4"    # snow storm 3
tmux_conf_theme_colour_8="#242933"    # darker bg
tmux_conf_theme_colour_9="#b48ead"    # aurora purple
tmux_conf_theme_colour_10="#d08770"   # aurora orange
tmux_conf_theme_colour_11="#a3be8c"   # aurora green
tmux_conf_theme_colour_12="#d8dee9"   # snow storm 1
tmux_conf_theme_colour_13="#eceff4"   # snow storm 3
tmux_conf_theme_colour_14="#242933"   # darker bg
tmux_conf_theme_colour_15="#2e3440"   # polar night 1
tmux_conf_theme_colour_16="#bf616a"   # aurora red
tmux_conf_theme_colour_17="#88c0d0"   # frost cyan
THEME
}

oh_my_tmux() {
cat <<'THEME'
# oh-my-tmux default theme
tmux_conf_theme_colour_1="#080808"    # dark gray
tmux_conf_theme_colour_2="#303030"    # gray
tmux_conf_theme_colour_3="#8a8a8a"    # light gray
tmux_conf_theme_colour_4="#00afff"    # light blue
tmux_conf_theme_colour_5="#ffff00"    # yellow
tmux_conf_theme_colour_6="#080808"    # dark gray
tmux_conf_theme_colour_7="#e4e4e4"    # white
tmux_conf_theme_colour_8="#080808"    # dark gray
tmux_conf_theme_colour_9="#ffff00"    # yellow
tmux_conf_theme_colour_10="#ff00af"   # pink
tmux_conf_theme_colour_11="#5fff00"   # green
tmux_conf_theme_colour_12="#8a8a8a"   # light gray
tmux_conf_theme_colour_13="#e4e4e4"   # white
tmux_conf_theme_colour_14="#080808"   # dark gray
tmux_conf_theme_colour_15="#080808"   # dark gray
tmux_conf_theme_colour_16="#d70000"   # red
tmux_conf_theme_colour_17="#e4e4e4"   # white
THEME
}

apply_theme() {
  local name="$1"
  local new_block
  case "$name" in
    solarized-dark)  new_block="$(solarized_dark)" ;;
    material-design) new_block="$(material_design)" ;;
    tokyo-night)     new_block="$(tokyo_night)" ;;
    ubuntu)          new_block="$(ubuntu)" ;;
    nord)            new_block="$(nord)" ;;
    oh-my-tmux)      new_block="$(oh_my_tmux)" ;;
    *)
      echo "Unknown theme: $name"
      echo "Available: material-design, nord, oh-my-tmux, solarized-dark, tokyo-night, ubuntu"
      exit 1
      ;;
  esac

  # Replace theme block: from "# <name> theme" line through all tmux_conf_theme_colour lines
  perl -i -0pe '
    s/^#\s+\S.*theme\n(tmux_conf_theme_colour_\d+="[^"]*".*\n)+/'"$(echo "$new_block" | sed 's/[\/&]/\\&/g' | awk '{printf "%s\\n", $0}')"'\n/m
  ' "$CONF"

  tmux source-file ~/.tmux.conf 2>/dev/null
  tmux display-message "Theme: $name" 2>/dev/null || true
}

AVAILABLE=("material-design" "nord" "oh-my-tmux" "solarized-dark" "tokyo-night" "ubuntu")

if [[ $# -ge 1 ]]; then
  theme="$1"
else
  if command -v fzf &>/dev/null; then
    theme=$(printf '%s\n' "${AVAILABLE[@]}" | fzf --prompt="theme> " --height=$((${#AVAILABLE[@]}+2)) --reverse) || exit 0
  else
    echo "Available themes:"
    for i in "${!AVAILABLE[@]}"; do
      echo "  $((i+1))) ${AVAILABLE[$i]}"
    done
    read -rp "Pick [1-${#AVAILABLE[@]}]: " choice
    theme="${AVAILABLE[$((choice-1))]}"
  fi
fi

apply_theme "$theme"
