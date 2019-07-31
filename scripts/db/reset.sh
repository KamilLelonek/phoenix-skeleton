#!/usr/bin/env bash
set -e

mix ecto.drop # drop the existing database
mix ecto.create # create a new database
mix ecto.migrate # migrate the created database
