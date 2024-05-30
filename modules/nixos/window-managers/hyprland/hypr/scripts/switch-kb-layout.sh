#!run/current-system/sw/bin/sh

layout_f=/tmp/kb_layout

case $(cat "$layout_f") in 
  us)
    hyprctl keyword input:kb_layout se
    echo se > $layout_f
    ;;
  se)
    hyprctl keyword input:kb_layout us
    echo us > $layout_f
    ;;
esac

