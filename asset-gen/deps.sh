# Shared dependency checks for asset-gen scripts (source this file).

require_chromium() {
  if command -v chromium &>/dev/null; then
    return 0
  fi
  cat >&2 <<'EOF'
error: chromium is not installed (required for headless screenshots).

Install chromium, for example:
  Arch Linux:    sudo pacman -S chromium
  Debian/Ubuntu: sudo apt install chromium
  Fedora:        sudo dnf install chromium
  macOS:         brew install --cask chromium
EOF
  exit 1
}

require_magick() {
  if command -v magick &>/dev/null; then
    return 0
  fi
  cat >&2 <<'EOF'
error: magick is not installed (ImageMagick — required to compress OG images to JPEG).

Install ImageMagick, for example:
  Arch Linux:    sudo pacman -S imagemagick
  Debian/Ubuntu: sudo apt install imagemagick
  Fedora:        sudo dnf install imagemagick
  macOS:         brew install imagemagick
EOF
  exit 1
}
