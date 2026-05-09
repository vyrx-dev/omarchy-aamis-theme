#!/usr/bin/env bash
set -e

REPO_ROOT="$(cd "$(dirname "$0")" && pwd)"
THEME_NAME="aamis"
WALKER_THEME_NAME="omarchy-aamis"
INSTALL_DIR="$HOME/.config/omarchy/themes/$THEME_NAME"

echo "📦 Installing Aamis theme from repo..."

# Copy repository contents into Omarchy theme directory
mkdir -p "$INSTALL_DIR"
if command -v rsync >/dev/null 2>&1; then
  rsync -a --delete --exclude='.git' "$REPO_ROOT/" "$INSTALL_DIR/"
else
  cp -a "$REPO_ROOT/." "$INSTALL_DIR/"
  rm -rf "$INSTALL_DIR/.git"
fi

# Copy Walker config from repo if present
if [[ -f "$INSTALL_DIR/walker/config.toml" ]]; then
  mkdir -p "$HOME/.config/walker"
  cp "$HOME/.config/walker/config.toml" "$HOME/.config/walker/config.toml.bak.$(date +%s)" 2>/dev/null || true
  cp "$INSTALL_DIR/walker/config.toml" "$HOME/.config/walker/config.toml"
  echo "✓ Walker config installed"
fi

# Ensure install script is executable
chmod +x "$INSTALL_DIR/.omarchy-install" 2>/dev/null || true

# Run post-install setup using the installed theme directory
bash "$INSTALL_DIR/.omarchy-install" "$INSTALL_DIR"

echo "✅ Aamis theme installed to $INSTALL_DIR"

echo "Next step:"
echo "  omarchy theme set $THEME_NAME"
