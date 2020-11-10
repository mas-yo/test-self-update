#!/bin/sh

set -xeuo

function self_update
{
  local base_path=$(dirname $0)
  . ${base_path}/.env

  if [ -f "${base_path}/.self_updating" ]; then
    rm -f "${base_path}/.self_updating"
    return
  fi

  touch "${base_path}/.self_updating"
  git pull origin ${SELF_UPDATE_BRANCH}
  ./$(basename $0) $@
  exit 0
}