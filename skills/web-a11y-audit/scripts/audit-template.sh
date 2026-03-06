#!/usr/bin/env bash
set -euo pipefail
TARGET_URL="${1:-http://127.0.0.1:8099}"
echo "[web-a11y-audit] Target: $TARGET_URL"
echo "Run Lighthouse CI (if config exists):"
echo "  lhci autorun --collect.url=$TARGET_URL"
echo "Manual checks: references/a11y-checklist.md"
