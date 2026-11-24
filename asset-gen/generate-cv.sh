#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
# shellcheck source=deps.sh
source "${SCRIPT_DIR}/deps.sh"

require_chromium

ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
SRC="file://${ROOT}/asset-gen/cv.html"
OUT="${ROOT}/public/cv.pdf"

# The time budget gives the Google Fonts stylesheet time to load before printing.
chromium --headless=new --disable-gpu --no-pdf-header-footer --virtual-time-budget=10000 \
  --print-to-pdf="${OUT}" "${SRC}"

echo "Wrote ${OUT}"
