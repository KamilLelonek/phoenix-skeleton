#!/usr/bin/env bash
set -e

mix format \
  --check-equivalent $@ # reformat the entire codebase
