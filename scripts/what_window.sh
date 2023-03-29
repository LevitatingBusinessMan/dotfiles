#!/bin/bash
xwininfo -tree -root > /tmp/win_first
read -p 'Open/Close window and press enter '
xwininfo -tree -root > /tmp/win_second
diff --color=always /tmp/win_first /tmp/win_second
