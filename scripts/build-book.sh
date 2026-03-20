#!/bin/bash
# Ghép tất cả chương thành 1 file markdown hoàn chỉnh

OUTPUT="full-book.md"

echo "📚 Đang ghép sách..."

cat book/00-loi-noi-dau.md \
    book/01-truyen-cuoi-my.md \
    book/02-truyen-cuoi-anh.md \
    book/03-truyen-cuoi-phap.md \
    book/04-truyen-cuoi-duc.md \
    book/05-truyen-cuoi-nga.md \
    book/06-truyen-cuoi-nhat.md \
    book/07-truyen-cuoi-han.md \
    book/08-truyen-cuoi-trung.md \
    book/09-truyen-cuoi-an-do.md \
    book/10-truyen-cuoi-trung-dong.md \
    book/11-truyen-cuoi-chau-phi.md \
    book/12-truyen-cuoi-my-latin.md \
    book/13-truyen-cuoi-bac-au.md \
    book/14-truyen-cuoi-dong-nam-a.md \
    book/15-truyen-cuoi-uc.md \
    book/16-truyen-cuoi-quoc-te.md \
    book/17-bonus-truyen-cuoi-kinh-dien.md \
    book/99-loi-ket.md \
    > "$OUTPUT"

echo "✅ Đã tạo $OUTPUT"
echo "📊 Tổng số dòng: $(wc -l < "$OUTPUT")"
