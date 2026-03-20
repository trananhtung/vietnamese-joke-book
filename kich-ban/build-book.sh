#!/bin/bash
# Ghep tat ca chuong thanh 1 file markdown hoan chinh

OUTPUT="full-book.md"

echo "Dang ghep sach..."

cat sach/00-loi-noi-dau.md \
    sach/01-truyen-cuoi-my.md \
    sach/02-truyen-cuoi-anh.md \
    sach/03-truyen-cuoi-phap.md \
    sach/04-truyen-cuoi-duc.md \
    sach/05-truyen-cuoi-nga.md \
    sach/06-truyen-cuoi-nhat.md \
    sach/07-truyen-cuoi-han.md \
    sach/08-truyen-cuoi-trung.md \
    sach/09-truyen-cuoi-an-do.md \
    sach/10-truyen-cuoi-trung-dong.md \
    sach/11-truyen-cuoi-chau-phi.md \
    sach/12-truyen-cuoi-my-latin.md \
    sach/13-truyen-cuoi-bac-au.md \
    sach/14-truyen-cuoi-dong-nam-a.md \
    sach/15-truyen-cuoi-uc.md \
    sach/16-truyen-cuoi-quoc-te.md \
    sach/17-bonus-truyen-cuoi-kinh-dien.md \
    sach/99-loi-ket.md \
    > "$OUTPUT"

echo "Da tao $OUTPUT"
echo "Tong so dong: $(wc -l < "$OUTPUT")"
