#!/bin/sh

set -xeuo

cd $(dirname $0)

. ./self-update.sh

self_update $@

echo hello $@

echo hello from other
