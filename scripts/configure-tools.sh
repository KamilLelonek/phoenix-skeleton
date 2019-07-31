#!/usr/bin/env bash
set -e

mix local.hex   --if-missing --force # install elixir package manager
mix local.rebar --force              # install rebar compiling tool
