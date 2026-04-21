# 😂 CƯỜI VỠ BỤNG - Tuyển Tập Truyện Cười Thế Giới Cho Người Việt

> *"Tiếng cười là ngôn ngữ chung của nhân loại"* - Mark Twain

Cuốn sách tổng hợp những câu chuyện cười hay nhất từ khắp nơi trên thế giới, được chọn lọc và Việt hóa sao cho phù hợp văn hóa và thực sự gây cười cho người Việt Nam.

## 📖 Mục Lục

| Chương | Nội dung | Số truyện | ⭐ |
|--------|----------|-----------|-----|
| [Lời nói đầu](sach/00-loi-noi-dau.md) | Giới thiệu cuốn sách | - | - |
| [Chương 01](sach/01-truyen-cuoi-my.md) | Truyện cười Mỹ 🇺🇸 | 21 | 9 |
| [Chương 02](sach/02-truyen-cuoi-anh.md) | Truyện cười Anh 🇬🇧 | 19 | 8 |
| [Chương 03](sach/03-truyen-cuoi-phap.md) | Truyện cười Pháp 🇫🇷 | 20 | 6 |
| [Chương 04](sach/04-truyen-cuoi-duc.md) | Truyện cười Đức 🇩🇪 | 20 | 9 |
| [Chương 05](sach/05-truyen-cuoi-nga.md) | Truyện cười Nga 🇷🇺 | 21 | 8 |
| [Chương 06](sach/06-truyen-cuoi-nhat.md) | Truyện cười Nhật Bản 🇯🇵 | 20 | 16 |
| [Chương 07](sach/07-truyen-cuoi-han.md) | Truyện cười Hàn Quốc 🇰🇷 | 20 | 15 |
| [Chương 08](sach/08-truyen-cuoi-trung.md) | Truyện cười Trung Quốc 🇨🇳 | 20 | 15 |
| [Chương 09](sach/09-truyen-cuoi-an-do.md) | Truyện cười Ấn Độ 🇮🇳 | 20 | 14 |
| [Chương 10](sach/10-truyen-cuoi-trung-dong.md) | Truyện cười Trung Đông 🐪 | 20 | 14 |
| [Chương 11](sach/11-truyen-cuoi-chau-phi.md) | Truyện cười Châu Phi 🌍 | 20 | 14 |
| [Chương 12](sach/12-truyen-cuoi-my-latin.md) | Truyện cười Mỹ Latin 🌎 | 20 | 14 |
| [Chương 13](sach/13-truyen-cuoi-bac-au.md) | Truyện cười Bắc Âu 🧊 | 17 | 8 |
| [Chương 14](sach/14-truyen-cuoi-dong-nam-a.md) | Truyện cười Đông Nam Á 🌏 | 20 | 15 |
| [Chương 15](sach/15-truyen-cuoi-uc.md) | Truyện cười Úc & New Zealand 🦘 | 18 | 11 |
| [Chương 16](sach/16-truyen-cuoi-quoc-te.md) | Truyện cười Quốc tế 🌐 | 20 | 14 |
| [Chương 17](sach/17-bonus-truyen-cuoi-kinh-dien.md) | Bonus: Truyện cười kinh điển 🏆 | 15 | 14 |
| [Lời kết](sach/99-loi-ket.md) | Lời kết | - | - |
| | **TỔNG CỘNG** | **331** | **198** |

## ⭐ Hệ Thống Đánh Giá

Mỗi truyện được chấm điểm theo 4 tiêu chí (thang 10):

| Tiêu chí | Mô tả |
|----------|--------|
| Tính bất ngờ | Twist ending có mạnh không? |
| Phù hợp văn hóa Việt | Người Việt có đồng cảm không? |
| Dễ hiểu | Không cần giải thích thêm? |
| Khả năng kể lại | Có thể kể cho bạn bè nghe? |

- **Tổng >= 30/40**: Đưa vào sách ✅
- **Tổng >= 35/40**: Truyện hay đặc biệt ⭐

## 🛠 Cách Build Sách

**Phụ thuộc:** [pandoc](https://pandoc.org/), TeX Live (xelatex cho PDF), font **Noto Sans** (tiếng Việt).

```bash
# Ghép tất cả chương thành full-book.md (có ngắt trang giữa các chương cho PDF)
bash scripts/build-book.sh

# Export sang PDF / EPUB / DOCX
bash scripts/export.sh
```

(`kich-ban/build-book.sh` và `kich-ban/export.sh` vẫn gọi các script trên để tương thích cũ.)

### Release trên GitHub

Vào **Actions** → workflow **Release sách (PDF / EPUB / DOCX)** → **Run workflow**: nhập **tag** (vd: `v1.0.0`), tùy chọn tiêu đề / draft / prerelease. Workflow sẽ build và đính kèm các file có tên theo tag, ví dụ `Cuoi-Vo-Bung-v1.0.0.pdf` (và `.epub`, `.docx`) vào trang **Releases** của repo (cần quyền ghi nội dung).

## 📝 Đóng Góp

Dự án mở, hoan nghênh đóng góp! Nếu bạn có truyện cười hay, hãy tạo Pull Request.

## 📄 License

Nội dung sách được chia sẻ dưới giấy phép [Creative Commons BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/).
