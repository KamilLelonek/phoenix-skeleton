#!/usr/bin/env bash
set -e

./scripts/configure-tools.sh
./scripts/deps/install.sh
./scripts/db/setup.sh
