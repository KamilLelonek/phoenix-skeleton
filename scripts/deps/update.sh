#!/usr/bin/env bash
set -e

mix deps.clean --unused # remove dependencies from `deps` not present in mix.exs
mix deps.unlock --all   # clear mix.lock file
mix deps.get            # download all dependencies
mix deps.compile        # compile downloaded dependencies
