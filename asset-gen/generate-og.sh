#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
# shellcheck source=deps.sh
source "${SCRIPT_DIR}/deps.sh"

require_chromium
require_magick

ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
SRC="file://${ROOT}/asset-gen/og.html"
OUT_PNG="${ROOT}/public/og-image.png"
OUT_JPG="${ROOT}/public/og-image.jpg"

chromium --headless=new --disable-gpu --hide-scrollbars --window-size=1200,630 \
  --screenshot="${OUT_PNG}" "${SRC}"
magick "${OUT_PNG}" -strip -quality 82 "${OUT_JPG}"

echo "Wrote ${OUT_PNG} and ${OUT_JPG}"
