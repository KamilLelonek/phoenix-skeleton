#!/usr/bin/env bash
set -e

export MIX_ENV=prod

mix release --overwrite
