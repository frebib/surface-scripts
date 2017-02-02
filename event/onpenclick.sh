#!/bin/sh
# Opens a new Xournal window on it's own workspace

i3-msg workspace 0:; exec xournal "$@"
