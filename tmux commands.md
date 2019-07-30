# USING SESSIONS
tmux -- starts the app and new session
tmux ls -- lists all sessions on the server
tmux kill-server will terminal all sessions
tmux detach -- quits the current session and caches the result.
tmux attach <session ID> -- opens cached session (use ls to get session ID)

prefix+$ -- rename a session
 
### Using the tmux plugin for zsh you can use the abbreviations
tl - tmux ls
ta - tmux attach
ts - create named session

## BASIC NAVIGATION
(use the vim-tmux plugin)
prefix + h, prefix + j, prefix + k, and prefix + l will switch session windows

## RESTORING STATE
prefix + s will save the current window and contents state to the current session
prefix + r will restore a cached session
use ta <session ID> to reattach the session prior to restoring cache

## RESIZING WINDOWS
For a standard setup:
prefix + \ to create a vertical split
prefix + - to create a horizontal split
prefix + : to go into edit mode and then type "resize-panel -R 55" to set it up standard
the L R U D (left, right up and down) diretion indicates the way the divider will move

## NEW WINDOWS
tmux new-window (prefix + c) - create a new window
tmux select-window -t :0-9 (prefix + 0-9) - move to the window based on index
tmux rename-window (prefix + ,)
prefix + x to close a window

