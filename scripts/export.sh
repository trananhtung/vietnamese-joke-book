#!/usr/bin/env bash
# Export full-book.md → PDF (pandoc + lualatex), EPUB, DOCX.
# Yêu cầu: pandoc, texlive (lualatex), font Noto Sans + Noto Color Emoji.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${ROOT}"

INPUT="${ROOT}/full-book.md"
OUTPUT_BASENAME="${ROOT}/Cuoi-Vo-Bung"
PDF_HEADER="${ROOT}/templates/pdf-header.tex"
PDF_TEMPLATE="${ROOT}/templates/pandoc-template.tex"
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

# --- PDF ---
# Ưu tiên LuaLaTeX (hỗ trợ font fallback cho emoji).
# Fallback sang XeLaTeX nếu không có LuaLaTeX (emoji sẽ bị mất).
PDF_ENGINE=""
PDF_HEADER_FLAG=()

if command -v lualatex >/dev/null 2>&1; then
  PDF_ENGINE=lualatex
  if [[ -f "${PDF_HEADER}" ]]; then
    PDF_HEADER_FLAG=(--include-in-header="${PDF_HEADER}")
  else
    echo "⚠️  Không tìm thấy ${PDF_HEADER}, PDF sẽ dùng style mặc định." >&2
  fi
  # Custom template tắt selnolig (crash khi gặp emoji flag codepoints)
  if [[ -f "${PDF_TEMPLATE}" ]]; then
    PDF_HEADER_FLAG+=(--template="${PDF_TEMPLATE}")
  fi
elif command -v xelatex >/dev/null 2>&1; then
  PDF_ENGINE=xelatex
  echo "⚠️  Không có lualatex, dùng xelatex (emoji có thể bị mất)." >&2
else
  echo "❌ PDF cần lualatex (gói texlive-luatex) hoặc xelatex (gói texlive-xetex)." >&2
  exit 1
fi

echo "📄 Đang export PDF (${PDF_ENGINE}, Noto Sans, custom styling)..."
pandoc "${INPUT}" -o "${OUTPUT_BASENAME}.pdf" \
  --pdf-engine="${PDF_ENGINE}" \
  -V mainfont="Noto Sans" \
  -V geometry:margin=1in \
  -V colorlinks=true \
  -V linkcolor="[HTML]{2980B9}" \
  -V toccolor="[HTML]{1A5276}" \
  --toc \
  --toc-depth=2 \
  --metadata title="${TITLE}" \
  --metadata author="${AUTHOR}" \
  "${PDF_HEADER_FLAG[@]}"

# --- EPUB ---
echo "📱 Đang export EPUB..."
pandoc "${INPUT}" -o "${OUTPUT_BASENAME}.epub" \
  --toc \
  --toc-depth=2 \
  --metadata title="${TITLE}" \
  --metadata author="${AUTHOR}"

# --- DOCX ---
echo "📝 Đang export DOCX..."
pandoc "${INPUT}" -o "${OUTPUT_BASENAME}.docx" \
  --metadata title="${TITLE}" \
  --metadata author="${AUTHOR}"

echo "✅ Hoàn tất export: ${OUTPUT_BASENAME##*/}.pdf, .epub, .docx (trong ${ROOT})"
