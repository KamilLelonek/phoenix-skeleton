#!/usr/bin/env bash
set -e

iex --erl "-kernel shell_history enabled" -S mix phx.server # start IEx session
