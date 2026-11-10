#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
echo "XFetch - build bootstrap"
if [ -z "${XBOX360_CC:-}" ]; then
  echo "No Xbox 360 compiler configured."
  echo "Set XBOX360_CC to a compatible compiler, then run bash build.sh."
  echo "A standard Termux clang cannot generate a valid Xbox 360 .xex."
  exit 2
fi
mkdir -p build
echo "Compiler configured: $XBOX360_CC"
echo "XEX packaging/linking is not implemented yet; no .xex generated."
exit 3
