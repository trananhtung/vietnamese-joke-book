#!/usr/bin/env bash
# Export full-book.md → PDF (pandoc + xelatex), EPUB, DOCX.
# Yêu cầu: pandoc, texlive (xelatex), font Noto Sans (tiếng Việt).
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${ROOT}"

INPUT="${ROOT}/full-book.md"
OUTPUT_BASENAME="${ROOT}/Cuoi-Vo-Bung"
TITLE="Cười Vỡ Bụng - Tuyển Tập Truyện Cười Thế Giới Cho Người Việt"
AUTHOR="AI & Cộng đồng"

if ! command -v pandoc >/dev/null 2>&1; then
  echo "❌ Cần cài pandoc: https://pandoc.org/installing.html" >&2
  exit 1
fi

if [[ ! -f "${INPUT}" ]]; then
  echo "❌ Chưa có ${INPUT}. Chạy scripts/build-book.sh trước." >&2
  exit 1
fi

if ! command -v xelatex >/dev/null 2>&1; then
  echo "❌ PDF cần xelatex (gói texlive-xetex hoặc tương đương)." >&2
  exit 1
fi

echo "📄 Đang export PDF (Noto Sans, margin 1in, TOC)..."
pandoc "${INPUT}" -o "${OUTPUT_BASENAME}.pdf" \
  --pdf-engine=xelatex \
  -V mainfont="Noto Sans" \
  -V geometry:margin=1in \
  --toc \
  --toc-depth=2

echo "📱 Đang export EPUB..."
pandoc "${INPUT}" -o "${OUTPUT_BASENAME}.epub" \
  --toc \
  --toc-depth=2 \
  --metadata title="${TITLE}" \
  --metadata author="${AUTHOR}"

echo "📝 Đang export DOCX..."
pandoc "${INPUT}" -o "${OUTPUT_BASENAME}.docx"

echo "✅ Hoàn tất export: ${OUTPUT_BASENAME##*/}.pdf, .epub, .docx (trong ${ROOT})"
