#!/usr/bin/env bash
# Tương thích ngược: ủy quyền cho scripts/build-book.sh
exec "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/../scripts/build-book.sh" "$@"
