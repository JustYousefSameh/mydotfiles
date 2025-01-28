#!/bin/bash
# MONITOR=VGA-0 polybar right & MONITOR=VGA-0 polybar left & MONITOR=VGA-0 polybar middle &
# MONITOR=LVDS-0 polybar right & MONITOR=LVDS-0 polybar left & MONITOR=LVDS-0 polybar middle &
MONITOR=LVDS-0 polybar -r main & MONITOR=VGA-0 polybar -r second &
