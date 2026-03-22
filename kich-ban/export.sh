#!/usr/bin/env bash
# Tương thích ngược: ủy quyền cho scripts/export.sh
exec "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/../scripts/export.sh" "$@"
