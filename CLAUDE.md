# CLAUDE.md - Quy Tắc Dự Án "Cười Vỡ Bụng"

> Tài liệu này định nghĩa các quy ước, tiêu chí, và hướng dẫn làm việc cho dự án tuyển tập truyện cười thế giới dành cho người Việt.

---

## 1. Tổng Quan Dự Án

**Tên sách:** CƯỜI VỠ BỤNG - Tuyển Tập Truyện Cười Thế Giới Cho Người Việt
**Mục tiêu:** Tổng hợp truyện cười hay nhất từ khắp nơi trên thế giới, chọn lọc và Việt hóa phù hợp văn hóa Việt Nam.

### Nguyên tắc làm việc

1. Mỗi session = 1 ngày làm việc, tập trung vào 1-2 chương cụ thể
2. Quản lý toàn bộ bằng Git - mỗi batch truyện là 1 commit có message rõ ràng
3. Viết dưới dạng Markdown chuẩn, có thể export thành sách (PDF/EPUB/DOCX)
4. Mỗi truyện **bắt buộc** phải qua bước chấm điểm trước khi đưa vào sách

---

## 2. Template Chấm Điểm (Scoring Template)

### 2.1 Bảng tiêu chí (tổng 40 điểm)

| # | Tiêu chí | Mô tả chi tiết | Điểm tối đa |
|---|----------|----------------|-------------|
| 1 | **Tính bất ngờ** | Twist ending có mạnh không? Punchline có bất ngờ, khó đoán trước? | /10 |
| 2 | **Phù hợp văn hóa Việt** | Người Việt có đồng cảm không? Context có gần gũi không? | /10 |
| 3 | **Dễ hiểu** | Không cần giải thích thêm? Hiểu ngay khi đọc/nghe lần đầu? | /10 |
| 4 | **Khả năng kể lại** | Có thể kể cho bạn bè nghe miệng? Dễ nhớ, dễ truyền? | /10 |

### 2.2 Tiêu chí chấp nhận

- **Tổng >= 28/40** → Đưa vào sách ✅
- **Tổng >= 32/40** → Truyện hay đặc biệt ⭐
- **Tổng < 28/40** → Loại ❌ (lưu vào `rejected/rejected-log.md` để tham khảo)

### 2.3 Format bảng chấm điểm (dùng trong `metadata/scoring-log.md`)

```markdown
## [Tên chương] - Ngày [X]

| # | Tên truyện | Bất ngờ | Phù hợp VN | Dễ hiểu | Kể lại | Tổng | Đạt? |
|---|-----------|---------|------------|---------|--------|------|------|
| 1 | Tên truyện | 8 | 7 | 9 | 8 | 32 | ⭐ |
| 2 | Tên truyện | 6 | 5 | 7 | 6 | 24 | ❌ |
| 3 | Tên truyện | 7 | 8 | 8 | 7 | 30 | ✅ |

### Thống kê
- **Tổng truyện đánh giá:** N
- **Đạt (≥ 28):** X truyện
- **Hay đặc biệt ⭐ (≥ 32):** Y truyện
- **Loại ❌ (< 28):** Z truyện
- **Điểm trung bình (truyện đạt):** A/40
```

---

## 3. Quy Tắc Việt Hóa (Localization Guidelines)

### 3.1 Tên nhân vật

| Trường hợp | Cách xử lý | Ví dụ |
|-----------|-----------|-------|
| Quốc tịch quan trọng với nội dung | Giữ nguyên tên nước ngoài | "Ông John người Mỹ" |
| Quốc tịch không quan trọng | Đổi sang tên Việt thân quen | "Anh Tèo", "Chị Ba", "Bác Năm" |
| Truyện có 2+ quốc tịch | Giữ nguyên tên nước ngoài | "Ông Mỹ, ông Pháp, ông Đức" |
| Nhân vật nghề nghiệp phổ quát | Giữ theo nghề | "bác sĩ", "luật sư", "thầy giáo" |

### 3.2 Địa điểm

| Địa điểm gốc | Cách Việt hóa |
|-------------|--------------|
| Bar / Pub | "quán nhậu" hoặc giữ nguyên tùy context |
| Church | "nhà thờ" (giữ nguyên, người Việt hiểu) |
| Supermarket | "siêu thị" |
| Office | "công ty" hoặc "văn phòng" |
| Địa danh đặc trưng | Giữ nguyên nếu quan trọng với truyện |

### 3.3 Đơn vị đo lường

| Đơn vị gốc | Chuyển đổi |
|-----------|-----------|
| Miles | km |
| Pounds (trọng lượng) | kg |
| Fahrenheit | °C |
| Dollars | "đô" hoặc giữ "dollar" |
| Pounds / Euro | Giữ nguyên (người VN quen) |
| Feet / Inches | cm / m |

### 3.4 Văn hóa và ngày lễ

| Yếu tố văn hóa | Cách xử lý |
|----------------|-----------|
| Thanksgiving | Giải thích ngắn hoặc đổi thành "bữa tiệc gia đình" |
| Halloween | Giữ nguyên (giới trẻ VN biết) |
| Prom | "dạ hội trường" |
| Super Bowl | Giữ nguyên + giải thích ngắn nếu cần |
| Tết (của các nước Á Đông) | Giữ nguyên, người Việt đồng cảm cao |

### 3.5 Chơi chữ (Wordplay)

**Nguyên tắc vàng:** Nếu không chuyển được wordplay sang tiếng Việt một cách tự nhiên → **BỎ TRUYỆN ĐÓ**, đừng ép buộc.

| Trường hợp | Cách xử lý |
|-----------|-----------|
| Chơi chữ chuyển được sang tiếng Việt | Chuyển sang wordplay Việt tương đương |
| Chơi chữ không chuyển được | Loại truyện (ghi vào rejected với lý do) |
| Muốn giữ lại để tham khảo | Thêm ghi chú: `[Gốc: chơi chữ tiếng X, không Việt hóa được]` |

### 3.6 Phong cách ngôn ngữ — Tiếu Lâm Việt Nam 🇻🇳

**Nguyên tắc cốt lõi:** Truyện cười phải đọc lên nghe như người Việt kể cho nhau nghe ở quán cà phê, KHÔNG phải như dịch máy. Phải có "chất" tiếu lâm, dí dỏm, đời thường.

#### 3.6.1 Từ ngữ & cách diễn đạt

| ❌ Tránh (khô khan, dịch máy) | ✅ Dùng (tiếu lâm, đời thường) |
|-------------------------------|-------------------------------|
| "Ông ấy nói" | "Ổng phán", "Ổng tỉnh bơ", "Ổng cà rỡn" |
| "Rất ngạc nhiên" | "Mắt chữ O mồm chữ A", "đứng hình", "muốn xỉu" |
| "Trả lời" | "Phang một câu", "chốt hạ", "phản dame" |
| "Bình tĩnh" | "Tỉnh bơ như không", "mặt lạnh như tiền", "chill như không có gì" |
| "Rất buồn cười" | "Cười muốn nội thương", "cười xỉu", "cười rớt hàm" |
| "Người đó rất ngu" | "Khờ hết phần thiên hạ", "ngây thơ vô số tội" |
| "Không quan tâm" | "Kệ mẹ nó", "thây kệ", "mặc kệ đời" (tùy mức độ) |
| "Kết thúc câu chuyện" | Không cần — punchline tự kết, đừng giải thích thêm |

#### 3.6.2 Thành ngữ & cách nói Việt nên xài

- "Ăn cơm nhà vác tù và hàng tổng" → khi nhân vật lo chuyện bao đồng
- "Già kén kẹn hom" → khi nói về chuyện hôn nhân
- "Trời đánh tránh bữa ăn" → khi nhân vật bình tĩnh giữa hỗn loạn
- "Chưa thấy quan tài chưa đổ lệ" → khi nhân vật cứng đầu
- Dùng cách gọi thân mật: "ông anh", "bác", "chú em", "cưng", "mẹ ơi!"
- Dùng từ cảm thán Việt: "Trời ơi!", "Ủa?", "Hả?!", "Chết mẹ rồi!", "Bó tay!"

#### 3.6.3 Emoji trong truyện 🎭

**Bắt buộc sử dụng emoji** để tăng cảm xúc và tính trực quan:

| Vị trí | Cách dùng emoji |
|--------|----------------|
| Tên truyện | Thêm 1 emoji phù hợp chủ đề: "Quý ông trên tàu Titanic 🚢" |
| Trong nội dung truyện | Dùng emoji tại các điểm cao trào, phản ứng bất ngờ, hoặc hành động hài: 😳🤦😂💀 |
| Punchline | Có thể thêm emoji để "đánh dấu" khoảnh khắc chốt hạ |
| Không lạm dụng | Tối đa 3-5 emoji mỗi truyện, đặt đúng chỗ để tăng hiệu ứng, KHÔNG rải khắp nơi |

### 3.7 Mức độ phù hợp

| Loại nội dung | Quyết định |
|--------------|-----------|
| Truyện 18+ / người lớn | Loại bỏ hoàn toàn hoặc giảm nhẹ xuống PG-13 |
| Phân biệt chủng tộc | Loại bỏ tuyệt đối |
| Nhạy cảm chính trị | Loại bỏ |
| Tôn giáo | Chỉ giữ nếu nhẹ nhàng, phổ quát, không xúc phạm |
| Xúc phạm giới tính / ngoại hình | Cân nhắc kỹ, ưu tiên loại bỏ |

---

## 4. Format Truyện Trong Sách

### 4.1 Format mỗi truyện đơn lẻ

```markdown
### [Số thứ tự]. [Tên truyện] [emoji phù hợp]
> 🌍 Nguồn gốc: [Tên nước] | ⭐ Điểm: [X/40]

[Nội dung truyện - văn phong tiếu lâm, dí dỏm, có chất Việt Nam. Dùng emoji tại điểm cao trào]

> 😂💬 *[Bình luận hài hước, vui nhộn — viết như kiểu bạn bè bình luận cho nhau nghe. Vừa giải thích vì sao buồn cười, vừa thêm 1 câu "đá xoáy" hoặc liên hệ thực tế Việt Nam để người đọc cười thêm lần nữa]*

---
```

**Lưu ý:**
- Truyện ≥ 32 điểm: dùng `⭐ Điểm:`
- Truyện 28-31 điểm: dùng `Điểm:` (không có ⭐)
- Nội dung: văn phong tiếu lâm, đời thường, gần gũi người Việt. TRÁNH giọng văn dịch máy, khô khan
- **Bắt buộc** dùng emoji trong nội dung truyện (tối đa 3-5 emoji/truyện, đặt đúng điểm cao trào)
- **Bắt buộc** thêm bình luận `> 😂💬 *...*` sau mỗi truyện — bình luận phải:
  - Hài hước, vui nhộn — viết như đang kể cho bạn bè nghe
  - Giải thích cơ chế hài (twist, mâu thuẫn logic, châm biếm...)
  - Thêm 1 câu "đá xoáy", liên hệ thực tế VN, hoặc so sánh dí dỏm để người đọc cười thêm lần nữa
  - Dùng emoji trong bình luận để thêm phần sinh động 🤣🔥💀

### 4.2 Format chương sách

```markdown
# Chương [X]: Truyện Cười [Tên Nước]

> *"[Một câu quote hay về humor của nước đó]"*

**Về nền hài kịch [Tên Nước]:** [2-3 câu giới thiệu đặc trưng humor của nước này]

---

### 1. [Tên truyện đầu tiên - nên là truyện HAY NHẤT của chương]
> 🌍 Nguồn gốc: [Nước] | ⭐ Điểm: 35/40

[Nội dung truyện]

---

### 2. [Tên truyện]
> 🌍 Nguồn gốc: [Nước] | Điểm: 30/40

[Nội dung truyện]

---

[... tiếp tục ...]

---

📊 **Thống kê chương:** [X] truyện | Điểm trung bình: [Y]/40 | Truyện ⭐: [Z]
```

**Quy tắc sắp xếp truyện trong chương:**
- Mở đầu bằng truyện hay nhất (điểm cao nhất) để "hook" người đọc
- Xen kẽ truyện dài - ngắn để tạo nhịp đọc dễ chịu
- Kết chương bằng truyện đáng nhớ

---

## 5. Cấu Trúc Thư Mục

```
vietnamese-joke-book/
├── README.md                    # Giới thiệu dự án
├── CLAUDE.md                    # Quy tắc dự án (file này)
├── CHANGELOG.md                 # Nhật ký thay đổi theo ngày
├── book/
│   ├── 00-loi-noi-dau.md
│   ├── 01-truyen-cuoi-my.md
│   ├── 02-truyen-cuoi-anh.md
│   ├── 03-truyen-cuoi-phap.md
│   ├── 04-truyen-cuoi-duc.md
│   ├── 05-truyen-cuoi-nga.md
│   ├── 06-truyen-cuoi-nhat.md
│   ├── 07-truyen-cuoi-han.md
│   ├── 08-truyen-cuoi-trung.md
│   ├── 09-truyen-cuoi-an-do.md
│   ├── 10-truyen-cuoi-trung-dong.md
│   ├── 11-truyen-cuoi-chau-phi.md
│   ├── 12-truyen-cuoi-my-latin.md
│   ├── 13-truyen-cuoi-bac-au.md
│   ├── 14-truyen-cuoi-dong-nam-a.md
│   ├── 15-truyen-cuoi-uc.md
│   ├── 16-truyen-cuoi-quoc-te.md
│   ├── 17-bonus-truyen-cuoi-kinh-dien.md
│   └── 99-loi-ket.md
├── drafts/                      # Bản nháp chưa duyệt
├── rejected/
│   └── rejected-log.md          # Truyện bị loại, có ghi lý do
├── metadata/
│   ├── scoring-log.md           # Bảng chấm điểm từng truyện
│   └── sources.md               # Nguồn tham khảo
└── scripts/
    ├── build-book.sh
    └── export.sh
```

---

## 6. Git Workflow

### Commit message format

```
Day [X]: [Mô tả công việc ngắn gọn]
```

**Ví dụ:**
```
Day 1: Initial setup + Chapter 01 American jokes (22 stories, 18 passed)
Day 2: Chapter 02 British (16 stories) + Chapter 03 French (15 stories)
Day 5: Week 1 review - removed 3 duplicates, reordered chapters
Day 14: Final review, export scripts, tag v1.0
```

### Quy trình mỗi session

1. `git pull` - Đồng bộ phiên bản mới nhất
2. Xác định chương cần làm hôm nay
3. Research truyện cười từ nguồn gốc tương ứng
4. Việt hóa theo quy tắc mục 3
5. Chấm điểm từng truyện theo mục 2
6. Đưa truyện đạt (≥ 28) vào chương, truyện không đạt vào `rejected/`
7. Cập nhật `CHANGELOG.md` và `metadata/scoring-log.md`
8. `git add [files] && git commit -m "Day X: ..."`
9. `git push origin [tên_nhánh]`

---

## 7. Checklist Kiểm Tra Trước Khi Commit

- [ ] Tất cả truyện đã được chấm điểm
- [ ] Truyện < 28 điểm đã được chuyển sang `rejected/`
- [ ] `metadata/scoring-log.md` đã được cập nhật
- [ ] `CHANGELOG.md` đã được cập nhật
- [ ] Format Markdown nhất quán (kiểm tra heading, dấu `---`)
- [ ] Không có truyện trùng lặp với các chương khác
- [ ] Nội dung đã qua kiểm tra Việt hóa (tên, địa điểm, đơn vị)
