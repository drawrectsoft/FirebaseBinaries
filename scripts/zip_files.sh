#!/usr/bin/env bash

set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
ROOT_DIR="${DIR}/.."

find $ROOT_DIR/Firebase -type d -name "*.xcframework" -execdir zip -Xrq '{}.zip' '{}' -x "__MACOSX" \;

find $ROOT_DIR/Firebase -type d -name "*.xcframework" | xargs rm -r
