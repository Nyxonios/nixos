#!/run/current-system/sw/bin/bash

layout_f=/tmp/kb_layout

case $(cat "$layout_f") in 
  us)
    hyprctl keyword input:kb_layout se
    echo "Switching to SE"
    echo se > $layout_f
    ;;
  se)
    hyprctl keyword input:kb_layout us
    echo "Switching to US"
    echo us > $layout_f
    ;;
esac

