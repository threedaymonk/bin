#!/bin/bash

rvm_command="source ${HOME}/.rvm/scripts/rvm; rvm $*"

if [ "$1" == "use" ]; then
  bash -c "$rvm_command; $SHELL"
else
  bash -c "$rvm_command"
fi
