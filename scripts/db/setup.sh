#!/usr/bin/env bash
set -e

mix ecto.create # create a new database
mix ecto.migrate # migrate the created database
