#!/bin/bash
unison  -sshargs "-i $HOME/.ssh/xlab18" -auto -batch $HOME/novi ssh://x-lab18.local.boem/unison/novi
unison  -sshargs "-i $HOME/.ssh/xlab18" -auto -batch $HOME/uni ssh://x-lab18.local.boem/unison/uni
