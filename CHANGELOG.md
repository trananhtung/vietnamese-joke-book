# Nhật Ký Thay Đổi - CƯỜI VỠ BỤNG

## Ngày 5 (Review) - 2026-03-28

### 🔍 Review & Polish Tuần 1 — Phương Tây (Issue #11)
- Review toàn bộ chương 01-05, 13, 15 (7 chương phương Tây)
- **Loại 3 truyện trùng ý/yếu:**
  - Ch01 "Lái xe với vợ" (31/40) — trùng y hệt Ch05 Nga "Lái xe ở Moscow"
  - Ch02 "Câu cá ở sông Thames" (32/40) — trùng motif với Nga #12 và Bắc Âu #1
  - Ch13 "Cách Bắc Âu thể hiện tình cảm" (30/40) — yếu nhất chương, sát ngưỡng
- **Bổ sung 4 truyện cười Đức** (chương mỏng nhất, từ 16 → 20 truyện):
  - "Autobahn không giới hạn tốc độ" (35 ⭐)
  - "Phân loại rác quốc dân" (36 ⭐)
  - "Feierabend — Hết giờ là hết" (34)
  - "Kỹ sư Đức đi picnic" (33)
- Đánh lại số thứ tự truyện trong Ch01, Ch02, Ch13
- Cập nhật scoring-log.md và rejected-log.md
- Kiểm tra flow, thứ tự (truyện hay nhất đầu chương), ghi chú văn hóa: tất cả OK
- Không tìm thấy truyện trùng nội dung nào khác (chỉ overlap chủ đề nhẹ — xếp hàng, thời tiết — nhưng khác văn hóa)

## Ngày 5 - 2026-03-22

### Build & export (issue #26)
- Thêm `scripts/build-book.sh`: ghép `sach/*.md` theo thứ tự 00 → 01–17 → 99 → `full-book.md`, chèn `\newpage` giữa các chương (PDF qua xelatex)
- Thêm `scripts/export.sh`: PDF (Noto Sans, margin 1in, TOC depth 2), EPUB (metadata title/author, TOC depth 2), DOCX
- `kich-ban/*.sh` ủy quyền sang `scripts/`; README cập nhật hướng dẫn và phụ thuộc
- GitHub Actions **Release sách (PDF / EPUB / DOCX)** (`workflow_dispatch`): build trên Ubuntu, tạo Release và đính kèm `Cuoi-Vo-Bung-<tag>.{pdf,epub,docx}` (tên file theo phiên bản/tag)
- **`metadata/scoring-log.md`**: bổ sung hướng dẫn chấm điểm, sắp xếp chương 01–05, 13, 15; chuẩn hóa `rejected/` và link `rejected/rejected-log.md`

## Ngày 4 - 2026-03-22

### Chương 15: Truyện Cười Úc & New Zealand
- Tổng hợp và Việt hóa 22 truyện cười Úc & New Zealand
- Chủ đề chính: động vật nguy hiểm, khoảng cách xa, BBQ, Vegemite, Úc vs NZ rivalry, "no worries" attitude
- Chấm điểm 22 truyện: 18 đạt, 4 loại
- 11 truyện hay đặc biệt ⭐ (≥ 35 điểm)
- Điểm trung bình truyện đạt: 34.3/40
- Chi tiết xem scoring-log.md

## Ngày 1 - 2026-03-20

### Thiết lập dự án
- Tạo cấu trúc thư mục dự án
- Tạo README.md với giới thiệu và mục lục
- Tạo .gitignore
- Tạo CHANGELOG.md
- Tạo template scoring-log.md
- Tạo template cho các file chương

### Chương 01: Truyện Cười Mỹ
- Tổng hợp và Việt hóa truyện cười Mỹ
- Chấm điểm theo tiêu chí 5 mục
- Chi tiết xem scoring-log.md

## Ngày 2 - 2026-03-20

### Chương 02: Truyện Cười Anh
- Tổng hợp và Việt hóa 20 truyện cười phong cách Anh (dry humor, sarcasm, self-deprecating)
- Chủ đề chính: thời tiết, trà, xếp hàng, lịch sự thái quá, phong cách quý ông
- Chấm điểm 25 truyện: 20 đạt, 5 loại
- 14 truyện hay đặc biệt ⭐ (≥ 40 điểm)
- Điểm trung bình truyện đạt: 41.1/50
- Chi tiết xem scoring-log.md

### Chỉnh sửa Chương 02: Nâng chuẩn chất lượng
- Loại 5 truyện dưới 40 điểm: Bác sĩ người Anh (39), Bữa tối kiểu Anh (38), Thời tiết xã giao (37), Bưu điện Anh (36), Đi du lịch nước ngoài (38)
- Thay bằng 5 truyện mới ≥40 điểm: Di chúc quý ông (42), Thang máy ở London (41), Quý ông gặp cướp (44), Quý ông mất ví (41), Đám cháy lịch sự (43)
- Toàn bộ 20 truyện giờ đều ≥40 điểm ⭐
- Điểm trung bình tăng từ 41.1 lên 42.2/50

## Ngày 3 - 2026-03-22

### Viết lại Chương 01: Truyện Cười Mỹ
- Viết lại toàn bộ 22 truyện với ngôn ngữ tiếu lâm Việt Nam (dùng "ổng phán", "tỉnh bơ", "phang một câu", "chốt hạ", "phản dame", thành ngữ VN)
- Thay 5 truyện yếu/quá ngắn bằng truyện mới có narrative tốt hơn:
  - "Luật sư dưới đáy biển" → "Vợ chồng già ở bệnh viện" (36 ⭐)
  - "Giá của sự thật" → "Mua bảo hiểm nhân thọ" (35 ⭐)
  - "Gọi món ở nhà hàng" → "Đồng nghiệp chăm chỉ" (34)
  - "WiFi nhà thờ" → "Bảo hiểm xe hơi" (33)
  - "Bác sĩ tâm lý" → "Wifi miễn phí" (33)
- 9 truyện ⭐ (tăng từ 6), điểm TB 34.0/40 (tăng từ 33.3)

### Viết lại Chương 02: Truyện Cười Anh
- Viết lại toàn bộ 20 truyện với ngôn ngữ tiếu lâm VN (ổng tỉnh bơ, phán, mặt lạnh như tiền, thành ngữ VN)
- Bổ sung narrative cho truyện ngắn: thêm đối thoại, chi tiết build-up, câu punchline đậm hơn
- Giữ nguyên 20 truyện (tất cả ≥ 30/40), nâng cấp văn phong và bình luận

### Chương 03: Truyện Cười Pháp
- Tổng hợp và Việt hóa 20 truyện cười phong cách Pháp (lãng mạn, rượu vang, ẩm thực, triết học, kiêu hãnh dân tộc)
- Chủ đề chính: tình yêu, rượu vang & pho mát, đình công, bồi bàn Paris, triết học đời thường
- Chấm điểm 25 truyện: 20 đạt, 5 loại
- 6 truyện hay đặc biệt ⭐ (≥ 35 điểm)
- Điểm trung bình truyện đạt: 33.6/40
- Chi tiết xem scoring-log.md

### Chương 04: Truyện Cười Đức
- Tổng hợp và Việt hóa 16 truyện cười phong cách Đức (kỷ luật, đúng giờ, logic cứng nhắc, quy tắc, German efficiency)
- Chủ đề chính: đúng giờ, xếp hàng, luật lệ, bia, bảo hiểm, meta joke về humor Đức
- Chấm điểm 20 truyện: 16 đạt, 4 loại
- 7 truyện hay đặc biệt ⭐ (≥ 35 điểm)
- Điểm trung bình truyện đạt: 33.8/40
- Tạo metadata/scoring-log.md và rejected/rejected-log.md
- Chi tiết xem scoring-log.md

### Chương 13: Truyện Cười Bắc Âu
- Tổng hợp và Việt hóa 18 truyện cười Bắc Âu (Thụy Điển, Na Uy, Phần Lan, Đan Mạch)
- Chủ đề chính: humor lạnh, im lặng Phần Lan, sauna, mùa đông, Thụy Điển vs Na Uy, hygge, IKEA, xe đạp Đan Mạch
- Chấm điểm 22 truyện: 18 đạt, 4 loại
- 8 truyện hay đặc biệt ⭐ (≥ 35 điểm)
- Điểm trung bình truyện đạt: 33.8/40
- Chi tiết xem scoring-log.md

### Chương 05: Truyện Cười Nga
- Tổng hợp và Việt hóa 18 truyện cười phong cách Nga (anekdot, vodka, mùa đông, gấu, tâm hồn Nga, Xô Viết)
- Chủ đề chính: vodka & triết học, mùa đông Siberia, xếp hàng thời Xô Viết, babushka, dashcam, tình hàng xóm
- Chấm điểm 25 truyện: 21 đạt, 4 loại, chọn 18 truyện tốt nhất vào sách
- 8 truyện hay đặc biệt ⭐ (≥ 35 điểm)
- Điểm trung bình truyện đạt: 34.0/40
- Chi tiết xem scoring-log.md
