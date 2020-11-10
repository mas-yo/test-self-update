#!/bin/sh

. $(dirname $0)/.env
set -xeuo

function self_update
{
  git pull origin ${SELF_UPDATE_BRANCH}
  ./$(basename $0) $@
  exit 0
}