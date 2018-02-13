#!/bin/sh

tmux new-session -d -s foo 'exec pfoo "bundle exec thin start"'
tmux rename-window 'Foo'
tmux select-window -t foo:0
tmux split-window -h 'exec pfoo "bundle exec compass watch"'
tmux split-window -v -t 0 'exec pfoo "rake ts:start"'
tmux split-window -v -t 1 'exec pfoo'
tmux -2 attach-session -t foo
