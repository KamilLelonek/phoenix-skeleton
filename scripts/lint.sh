#!/usr/bin/env bash
set -e

mix credo  --strict          # validate styleguide
mix format --check-formatted # validate formatting
