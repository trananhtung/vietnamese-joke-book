#!/bin/bash
# Export sách sang các định dạng PDF, EPUB, DOCX

INPUT="full-book.md"

if [ ! -f "$INPUT" ]; then
    echo "❌ Chưa có file $INPUT. Hãy chạy build-book.sh trước!"
    exit 1
fi

echo "📄 Đang export PDF..."
pandoc "$INPUT" -o "Cuoi-Vo-Bung.pdf" \
    --pdf-engine=xelatex \
    -V mainfont="Noto Sans" \
    -V geometry:margin=1in \
    --toc --toc-depth=2

echo "📱 Đang export EPUB..."
pandoc "$INPUT" -o "Cuoi-Vo-Bung.epub" \
    --toc --toc-depth=2 \
    --metadata title="Cười Vỡ Bụng - Tuyển Tập Truyện Cười Thế Giới Cho Người Việt" \
    --metadata author="AI & Cộng đồng"

echo "📝 Đang export DOCX..."
pandoc "$INPUT" -o "Cuoi-Vo-Bung.docx"

echo "✅ Hoàn tất export!"
