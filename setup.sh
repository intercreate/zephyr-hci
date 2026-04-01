#!/bin/sh
set -e

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
SAMPLES_DIR="${SCRIPT_DIR}/../zephyr/samples/bluetooth"

for dir in "${SCRIPT_DIR}"/*/; do
    sample=$(basename "$dir")
    [ -d "${SAMPLES_DIR}/${sample}" ] || continue
    for file in Kconfig.sysbuild sysbuild.cmake; do
        [ -f "${dir}${file}" ] && ln -sf "${dir}${file}" "${SAMPLES_DIR}/${sample}/${file}"
    done
done
