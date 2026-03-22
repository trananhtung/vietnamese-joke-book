#!/usr/bin/env bash
# Ghép tất cả chương thành full-book.md (thứ tự: 00 → 01–17 → 99).
# Chèn \newpage giữa các chương — pandoc giữ cho PDF (xelatex), bỏ qua khi export EPUB/DOCX.
# Chương: mọi file sach/NN-*.md (glob hai chữ số đầu), sắp xếp bằng sort -V (00…99).
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SACH="${ROOT}/sach"
OUTPUT="${ROOT}/full-book.md"

mapfile -t CHAPTERS < <(
  shopt -s nullglob
  for f in "${SACH}"/[0-9][0-9]-*.md; do
    printf '%s\n' "$(basename "$f")"
  done | sort -V
)

if ((${#CHAPTERS[@]} == 0)); then
  echo "❌ Không tìm thấy file chương nào (mẫu tên: NN-ten.md) trong ${SACH}" >&2
  exit 1
fi

echo "Đang ghép sách..."

missing=()
for f in "${CHAPTERS[@]}"; do
  if [[ ! -f "${SACH}/${f}" ]]; then
    missing+=("${SACH}/${f}")
  fi
done
if ((${#missing[@]} > 0)); then
  echo "❌ Thiếu file chương:" >&2
  printf '   %s\n' "${missing[@]}" >&2
  exit 1
fi

: > "${OUTPUT}"
first=1
for f in "${CHAPTERS[@]}"; do
  if ((first)); then
    first=0
  else
    # Dòng LaTeX cho PDF; pandoc bỏ qua khi xuất EPUB/DOCX (không dùng $'\\newpage' — bash hiểu nhầm thành \n)
    printf '\n%s\n\n' '\newpage' >> "${OUTPUT}"
  fi
  cat "${SACH}/${f}" >> "${OUTPUT}"
done

echo "Đã tạo ${OUTPUT}"
echo "Tổng số dòng: $(wc -l < "${OUTPUT}")"
