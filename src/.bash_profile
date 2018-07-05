#!/bin/bash

# if not root and .bashrc exists load
if [ -f "$HOME/.bashrc" ] && test -t 0
then
	. "$HOME/.bashrc"
fi

# if not root and .gvm scripts exists load
if [ -f "$HOME/.gvm/scripts/gvm" ] && test -t 0
then
	. "$HOME/.gvm/scripts/gvm"
fi
