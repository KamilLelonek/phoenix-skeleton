#!/usr/bin/env bash
set -e

ARGS=${@:---stale}

MIX_ENV=test mix test ${ARGS} # run all test cases
