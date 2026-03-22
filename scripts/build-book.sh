#!/usr/bin/env bash
# Ghép tất cả chương thành full-book.md (thứ tự: 00 → 01–17 → 99).
# Chèn \newpage giữa các chương — pandoc giữ cho PDF (xelatex), bỏ qua khi export EPUB/DOCX.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SACH="${ROOT}/sach"
OUTPUT="${ROOT}/full-book.md"

CHAPTERS=(
  "00-loi-noi-dau.md"
  "01-truyen-cuoi-my.md"
  "02-truyen-cuoi-anh.md"
  "03-truyen-cuoi-phap.md"
  "04-truyen-cuoi-duc.md"
  "05-truyen-cuoi-nga.md"
  "06-truyen-cuoi-nhat.md"
  "07-truyen-cuoi-han.md"
  "08-truyen-cuoi-trung.md"
  "09-truyen-cuoi-an-do.md"
  "10-truyen-cuoi-trung-dong.md"
  "11-truyen-cuoi-chau-phi.md"
  "12-truyen-cuoi-my-latin.md"
  "13-truyen-cuoi-bac-au.md"
  "14-truyen-cuoi-dong-nam-a.md"
  "15-truyen-cuoi-uc.md"
  "16-truyen-cuoi-quoc-te.md"
  "17-bonus-truyen-cuoi-kinh-dien.md"
  "99-loi-ket.md"
)

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
