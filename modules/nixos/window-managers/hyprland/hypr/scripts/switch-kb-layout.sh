#!/usr/bin/env bash

layout_f=/tmp/kb_layout
if [ ! -f $layout_f ]; then
  toch $layout_f
fi

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

