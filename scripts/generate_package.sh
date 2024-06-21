#!/usr/bin/env bash

set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
ROOT_DIR="${DIR}/.."

XCFRAMEWORKS="$(find $ROOT_DIR/Firebase -type f -name "*.xcframework.zip")"

OIFS=$IFS
IFS=$'\n'

echo "// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: \"Firebase-binary\",
    products: [
        .library(
            name: \"Firebase-binary\",
            targets: ["

for LINE in ${XCFRAMEWORKS[@]}; do
    ZIP="${LINE##*/}"
    NAME="${ZIP%.xcframework.zip}"

    echo "                \"${NAME}\"",
done

echo "            ]
        ),
    ],
    dependencies: [],
    targets: ["

for LINE in ${XCFRAMEWORKS[@]}; do
    ZIP="${LINE##*/}"
    NAME="${ZIP%.xcframework.zip}"
    FW_PATH="Firebase/${LINE##*Firebase/}"

    echo "        .binaryTarget(
            name: \"$NAME\",
            path: \"$FW_PATH\"
        ),"
done


echo "    ],
    cxxLanguageStandard: .cxx14
)
"

IFS=$OIFS
