#!/usr/bin/env bash
set -e

mix deps.get     # fetch all dependencies
mix deps.compile # compile downloaded dependencies
mix compile      # compile project files
