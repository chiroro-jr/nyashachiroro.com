#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
# shellcheck source=deps.sh
source "${SCRIPT_DIR}/deps.sh"

require_chromium

ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
SRC="file://${ROOT}/asset-gen/logo.html"
OUT="${ROOT}/asset-gen/logo.png"

chromium --headless=new --disable-gpu --hide-scrollbars --window-size=512,512 \
  --screenshot="${OUT}" "${SRC}"

echo "Wrote ${OUT}"
echo "Upload to https://favicon.io/favicon-converter/ and copy the package into public/favicon/"
