# 🎭 DỰ ÁN: TUYỂN TẬP TRUYỆN CƯỜI THẾ GIỚI CHO NGƯỜI VIỆT

## Prompt Tổng Quan Cho Claude Code

> **Mục tiêu:** Xây dựng một cuốn sách truyện cười tiếng Việt, tổng hợp từ kho truyện cười toàn thế giới, được chọn lọc và Việt hóa sao cho phù hợp văn hóa và thực sự gây cười cho người Việt Nam.

---

## 📋 SYSTEM PROMPT (Dán vào Claude Code)

```
Bạn là một biên tập viên truyện cười chuyên nghiệp, am hiểu sâu về văn hóa hài hước Việt Nam và thế giới. Nhiệm vụ của bạn là xây dựng cuốn sách "CƯỜI VỠ BỤNG - Tuyển Tập Truyện Cười Thế Giới Cho Người Việt".

## NGUYÊN TẮC LÀM VIỆC:
1. Mỗi session = 1 ngày làm việc, tập trung vào 1-2 chương cụ thể
2. Quản lý toàn bộ bằng Git - mỗi batch truyện là 1 commit có message rõ ràng
3. Viết dưới dạng Markdown chuẩn, có thể export thành sách (PDF/EPUB/DOCX)
4. Mỗi truyện phải qua bước ĐÁNH GIÁ TÍNH GÂY CƯỜI trước khi đưa vào

## TIÊU CHÍ ĐÁNH GIÁ (Thang điểm 1-10):
- Tính bất ngờ (twist ending): /10
- Phù hợp văn hóa Việt: /10  
- Dễ hiểu (không cần giải thích): /10
- Khả năng kể lại (truyền miệng): /10
- Không xúc phạm/nhạy cảm: /10
→ Tổng điểm >= 35/50 mới được đưa vào sách
→ Tổng điểm >= 40/50 được đánh dấu ⭐ (truyện hay đặc biệt)

## CẤU TRÚC THƯ MỤC:
vietnamese-joke-book/
├── README.md                    # Giới thiệu dự án
├── CHANGELOG.md                 # Nhật ký thay đổi theo ngày
├── sach/
│   ├── 00-loi-noi-dau.md       # Loi noi dau
│   ├── 01-truyen-cuoi-my.md    # Truyen cuoi My
│   ├── 02-truyen-cuoi-anh.md   # Truyen cuoi Anh
│   ├── 03-truyen-cuoi-phap.md  # Truyen cuoi Phap
│   ├── 04-truyen-cuoi-duc.md   # Truyen cuoi Duc
│   ├── 05-truyen-cuoi-nga.md   # Truyen cuoi Nga
│   ├── 06-truyen-cuoi-nhat.md  # Truyen cuoi Nhat Ban
│   ├── 07-truyen-cuoi-han.md   # Truyen cuoi Han Quoc
│   ├── 08-truyen-cuoi-trung.md # Truyen cuoi Trung Quoc
│   ├── 09-truyen-cuoi-an-do.md # Truyen cuoi An Do
│   ├── 10-truyen-cuoi-trung-dong.md  # Truyen cuoi Trung Dong
│   ├── 11-truyen-cuoi-chau-phi.md    # Truyen cuoi Chau Phi
│   ├── 12-truyen-cuoi-my-latin.md    # Truyen cuoi My Latin
│   ├── 13-truyen-cuoi-bac-au.md      # Truyen cuoi Bac Au
│   ├── 14-truyen-cuoi-dong-nam-a.md  # Truyen cuoi Dong Nam A
│   ├── 15-truyen-cuoi-uc.md          # Truyen cuoi Uc & New Zealand
│   ├── 16-truyen-cuoi-quoc-te.md     # Truyen cuoi quoc te (khong ro nguon goc)
│   ├── 17-bonus-truyen-cuoi-kinh-dien.md  # Truyen cuoi kinh dien the gioi
│   └── 99-loi-ket.md                 # Loi ket
├── nhap/                        # Ban nhap chua duyet
│   └── [ten-nuoc]-draft.md
├── loai/                        # Truyen bi loai (luu de tham khao)
│   └── rejected-log.md
├── du-lieu/
│   ├── scoring-log.md           # Bang cham diem tung truyen
│   └── sources.md               # Nguon tham khao
├── kich-ban/
│   ├── build-book.sh            # Script ghep thanh sach hoan chinh
│   └── export.sh                # Script export PDF/EPUB
└── .gitignore
```

## QUY TRÌNH MỖI SESSION:
1. `git pull` - Đồng bộ phiên bản mới nhất
2. Xác định chương cần làm hôm nay
3. Research truyện cười từ nguồn gốc tương ứng
4. Việt hóa - điều chỉnh context cho phù hợp người Việt
5. Chấm điểm từng truyện theo tiêu chí
6. Đưa truyện đạt điểm vào chương, truyen khong dat vao loai/
7. Cập nhật CHANGELOG.md và scoring-log.md
8. `git add . && git commit -m "Day X: [Mô tả công việc]"`
9. Review lại và polish nếu cần

## FORMAT MỖI TRUYỆN TRONG SÁCH:

### [Số thứ tự]. [Tên truyện]
> 🌍 Nguồn gốc: [Tên nước] | ⭐ Điểm: [X/50]

[Nội dung truyện]

---
```

---

## 📅 KẾ HOẠCH CHIA NGÀY LÀM VIỆC

### TUẦN 1: Thiết lập & Truyện cười phương Tây

| Ngày | Công việc | Prompt cho Claude Code |
|------|-----------|----------------------|
| **Ngày 1** | Setup dự án + Truyện cười Mỹ | Xem prompt bên dưới |
| **Ngày 2** | Truyện cười Anh + Pháp | Xem prompt bên dưới |
| **Ngày 3** | Truyện cười Đức + Nga | Xem prompt bên dưới |
| **Ngày 4** | Truyện cười Bắc Âu + Úc | Xem prompt bên dưới |
| **Ngày 5** | Review & polish Tuần 1 | Xem prompt bên dưới |

### TUẦN 2: Truyện cười Châu Á

| Ngày | Công việc | Prompt cho Claude Code |
|------|-----------|----------------------|
| **Ngày 6** | Truyện cười Nhật Bản + Hàn Quốc | Xem prompt bên dưới |
| **Ngày 7** | Truyện cười Trung Quốc | Xem prompt bên dưới |
| **Ngày 8** | Truyện cười Ấn Độ + Đông Nam Á | Xem prompt bên dưới |
| **Ngày 9** | Review & bổ sung Châu Á | Xem prompt bên dưới |

### TUẦN 3: Truyện cười các vùng còn lại + Hoàn thiện

| Ngày | Công việc | Prompt cho Claude Code |
|------|-----------|----------------------|
| **Ngày 10** | Truyện cười Trung Đông + Châu Phi | Xem prompt bên dưới |
| **Ngày 11** | Truyện cười Mỹ Latin + Quốc tế | Xem prompt bên dưới |
| **Ngày 12** | Bonus: Truyện kinh điển thế giới | Xem prompt bên dưới |
| **Ngày 13** | Lời nói đầu + Lời kết + Mục lục | Xem prompt bên dưới |
| **Ngày 14** | Review tổng thể + Export sách | Xem prompt bên dưới |

---

## 🔧 PROMPT CHI TIẾT TỪNG NGÀY

### NGÀY 1: Setup + Truyện cười Mỹ

```
Hôm nay là Ngày 1 của dự án "CƯỜI VỠ BỤNG". Nhiệm vụ:

1. SETUP DỰ ÁN:
   - Tạo cấu trúc thư mục theo plan
   - Khởi tạo git repo: `git init`
   - Tạo README.md với giới thiệu dự án
   - Tạo CHANGELOG.md
   - Tạo .gitignore
   - Tạo file template cho scoring-log.md
   - Commit: "Day 1: Initial project setup"

2. TRUYỆN CƯỜI MỸ (Chương 01):
   - Tổng hợp 20-25 truyện cười đặc trưng Mỹ
   - Các thể loại: stand-up comedy style, one-liner, truyện tình huống, 
     dad jokes, knock-knock jokes (Việt hóa)
   - Việt hóa tên nhân vật, bối cảnh khi cần
   - Giữ nguyên những truyện có context quốc tế dễ hiểu
   - Chấm điểm từng truyện, loại những truyện < 35 điểm
   - Ghi log vào scoring-log.md
   - Commit: "Day 1: Add Chapter 01 - American jokes (X stories)"

LƯU Ý VIỆT HÓA TRUYỆN MỸ:
- "Knock knock jokes" → chuyển thành dạng "Ai đó gõ cửa..." 
- Tên: John/Jane → dùng tên Việt nếu không ảnh hưởng nội dung
- Bối cảnh bar/pub → có thể giữ hoặc đổi thành quán nhậu
- Wordplay tiếng Anh → tìm wordplay tương đương tiếng Việt hoặc bỏ qua
- Truyện về luật sư, bác sĩ → giữ nguyên vì phổ biến ở VN
```

### NGÀY 2: Truyện cười Anh + Pháp

```
Hôm nay là Ngày 2 của dự án "CƯỜI VỠ BỤNG". Nhiệm vụ:

1. TRUYỆN CƯỜI ANH (Chương 02):
   - 15-20 truyện phong cách hài Anh
   - Đặc trưng: dry humor, sarcasm, self-deprecating, absurd humor
   - Truyện về thời tiết, trà, xếp hàng, lịch sự quá mức
   - Việt hóa: giữ "ông người Anh" làm nhân vật vì người Việt 
     quen thuộc hình ảnh này
   - Chấm điểm và lọc

2. TRUYỆN CƯỜI PHÁP (Chương 03):
   - 15-20 truyện phong cách hài Pháp  
   - Đặc trưng: tình yêu, rượu vang, ẩm thực, triết học
   - Truyện về sự lãng mạn, kiêu hãnh dân tộc
   - Việt hóa: người Pháp = nhân vật quen thuộc trong truyện cười VN

3. Cập nhật CHANGELOG.md và scoring-log.md
4. Commit: "Day 2: Add Chapter 02 (British) and 03 (French) jokes"

LƯU Ý:
- Truyện "1 ông Anh, 1 ông Pháp, 1 ông Mỹ..." rất phổ biến → 
  dành cho chương Quốc tế (16), không đưa vào đây
- Dry humor Anh cần thêm setup để người Việt hiểu context
- Truyện Pháp về tình yêu/ngoại tình → giữ mức độ nhẹ nhàng
```

### NGÀY 3: Truyện cười Đức + Nga

```
Hôm nay là Ngày 3 của dự án "CƯỜI VỠ BỤNG". Nhiệm vụ:

1. TRUYỆN CƯỜI ĐỨC (Chương 04):
   - 12-15 truyện 
   - Đặc trưng: humor logic, chính xác, kỷ luật
   - Truyện về sự nghiêm túc quá mức, đúng giờ, quy tắc
   - Dạng "German efficiency" jokes
   - META JOKE: "Truyện cười Đức không buồn cười" → tận dụng stereotype này

2. TRUYỆN CƯỜI NGA (Chương 05):
   - 15-20 truyện
   - Đặc trưng: anekdot (truyện cười ngắn), dark humor, political humor
   - Truyện về mùa đông, vodka, gấu, tâm hồn Nga
   - Truyện cười thời Xô Viết (rất phổ biến, nhiều truyện hay)
   - Người Việt có nhiều liên hệ văn hóa với Nga → dễ đồng cảm

3. Cập nhật logs và commit

LƯU Ý:
- Truyện Nga thời Xô Viết → lọc bỏ những truyện quá nhạy cảm chính trị
- Giữ những truyện châm biếm nhẹ nhàng, phổ quát
- Truyện về vodka → người Việt hiểu vì cũng có văn hóa nhậu
```

### NGÀY 4: Truyện cười Bắc Âu + Úc

```
Hôm nay là Ngày 4 của dự án "CƯỜI VỠ BỤNG". Nhiệm vụ:

1. TRUYỆN CƯỜI BẮC ÂU (Chương 13):
   - 10-15 truyện từ Thụy Điển, Na Uy, Phần Lan, Đan Mạch
   - Đặc trưng: humor lạnh, absurd, minimalist
   - Truyện về mùa đông dài, ít nói, sauna (Phần Lan)
   - Truyện Thụy Điển vs Na Uy (giống kiểu truyện VN Nam - Bắc)

2. TRUYỆN CƯỜI ÚC & NEW ZEALAND (Chương 15):
   - 10-15 truyện
   - Đặc trưng: humor thoải mái, động vật kỳ lạ, tự giễu
   - Truyện về kangaroo, koala, nhện/rắn khổng lồ
   - Truyện về sự "chill" và ngôn ngữ slang

3. Cập nhật logs và commit
```

### NGÀY 5: Review Tuần 1

```
Hôm nay là Ngày 5 - REVIEW TUẦN 1. Nhiệm vụ:

1. ĐỌC LẠI tất cả chương đã viết (01-04, 13, 15)
2. KIỂM TRA:
   - Có truyện nào bị trùng ý không?
   - Có truyện nào đọc lại thấy không buồn cười?
   - Flow mỗi chương có hợp lý không (nên xen kẽ dài-ngắn)?
   - Phần mở đầu mỗi chương đã giới thiệu đủ context chưa?
3. CHỈNH SỬA:
   - Sắp xếp lại thứ tự truyện trong mỗi chương
   - Mở đầu bằng truyện hay nhất để "hook" người đọc
   - Thêm ghi chú văn hóa ngắn đầu mỗi chương
4. BỔ SUNG: Thêm 3-5 truyện cho chương nào còn mỏng
5. Commit: "Day 5: Week 1 review and polish"
```

### NGÀY 6: Truyện cười Nhật + Hàn

```
Hôm nay là Ngày 6 của dự án "CƯỜI VỠ BỤNG". Nhiệm vụ:

1. TRUYỆN CƯỜI NHẬT BẢN (Chương 06):
   - 15-20 truyện
   - Đặc trưng: manzai (hài đôi), rakugo (kể chuyện), tsukkomi/boke
   - Truyện về sự lịch sự quá mức, công nghệ, anime culture
   - Truyện wordplay tiếng Nhật → chuyển thành wordplay tiếng Việt
   - Truyện về sensei, samurai, ninja (hình ảnh quen thuộc)

2. TRUYỆN CƯỜI HÀN QUỐC (Chương 07):
   - 15-20 truyện
   - Đặc trưng: aegyo humor, K-drama parody, hierarchy jokes
   - Truyện về ajumma, soju, skincare, idol
   - Rất gần văn hóa Việt hiện đại → dễ Việt hóa
   - Truyện về mối quan hệ anh/chị/em, thứ bậc

3. Cập nhật logs và commit

LƯU Ý:
- Văn hóa Nhật-Hàn rất gần VN → cơ hội cao có truyện hay
- Truyện về cha mẹ Á Đông → cực kỳ phù hợp người Việt
- Truyện học hành, thi cử → resonance cao
```

### NGÀY 7: Truyện cười Trung Quốc

```
Hôm nay là Ngày 7 của dự án "CƯỜI VỠ BỤNG". Nhiệm vụ:

TRUYỆN CƯỜI TRUNG QUỐC (Chương 08):
- 20-25 truyện (chương lớn vì kho tàng phong phú)
- Nguồn:
  + Tiếu lâm cổ điển (Tiếu Lâm Quảng Ký)
  + Truyện Trạng (tương tự Trạng Quỳnh VN)
  + Truyện cười hiện đại Trung Quốc
  + Truyện châm biếm xã hội
- Đặc trưng: chơi chữ, trí tuệ, châm biếm quan lại
- Truyện về thầy đồ, học trò, quan huyện
- Truyện về sự tiết kiệm, khôn vặt

Cập nhật logs và commit

LƯU Ý:
- Nhiều truyện TQ đã có phiên bản VN → kiểm tra không trùng
- Truyện cổ điển TQ rất gần văn hóa VN → điểm cao
- Tránh truyện nhạy cảm chính trị hiện đại
- Giữ truyện Trạng vì người Việt rất thích thể loại này
```

### NGÀY 8: Truyện cười Ấn Độ + Đông Nam Á

```
Hôm nay là Ngày 8 của dự án "CƯỜI VỠ BỤNG". Nhiệm vụ:

1. TRUYỆN CƯỜI ẤN ĐỘ (Chương 09):
   - 15-20 truyện
   - Nguồn: truyện Birbal, Mulla Nasruddin (bản Ấn), truyện hiện đại
   - Đặc trưng: trí tuệ, đảo ngược logic, gia đình
   - Truyện về Bollywood, cricket, IT/tech support
   - Truyện về hôn nhân sắp đặt, gia đình đông đúc

2. TRUYỆN CƯỜI ĐÔNG NAM Á (Chương 14):
   - 15-20 truyện từ Thái, Philippines, Indonesia, Malaysia, Myanmar
   - Đặc trưng: humor gần gũi nhất với VN
   - Truyện về thời tiết nóng, ăn cay, xe máy
   - Truyện Thái: ladyboy jokes (nhẹ nhàng), voi
   - Truyện Philippines: humor gia đình, OFW
   - Truyện Indonesia/Malaysia: truyện Si Kabayan, Pak Pandir

3. Cập nhật logs và commit

LƯU Ý:
- ĐNÁ = vùng humor gần VN nhất → tỉ lệ đạt cao
- Nasruddin = kho tàng truyện cười quốc tế, rất hay
- Birbal = "Trạng" phiên bản Ấn → người Việt sẽ thích
```

### NGÀY 9: Review Tuần 2

```
Hôm nay là Ngày 9 - REVIEW TUẦN 2 (Châu Á). Nhiệm vụ:

1. ĐỌC LẠI chương 06-09, 14
2. SO SÁNH:
   - Có truyện Châu Á nào trùng ý với truyện cười Việt Nam không?
   - Nếu trùng → loại hoặc ghi chú "tương tự truyện VN: ..."
3. ĐÁNH GIÁ ĐẶC BIỆT:
   - Chương Châu Á nên có điểm trung bình cao hơn (gần VN hơn)
   - Nếu chương nào điểm TB < 37 → bổ sung thêm truyện
4. THÊM CONTEXT:
   - Viết đoạn giới thiệu văn hóa hài mỗi nước (2-3 dòng)
   - Thêm "Bạn có biết?" cho những truyện có nguồn gốc thú vị
5. Commit: "Day 9: Week 2 Asia chapters review"
```

### NGÀY 10: Truyện cười Trung Đông + Châu Phi

```
Hôm nay là Ngày 10 của dự án "CƯỜI VỠ BỤNG". Nhiệm vụ:

1. TRUYỆN CƯỜI TRUNG ĐÔNG (Chương 10):
   - 12-15 truyện
   - Nguồn chính: Truyện Nasruddin/Joha, truyện Ả Rập hiện đại
   - Đặc trưng: trí tuệ dân gian, triết lý, châm biếm nhẹ nhàng
   - Nasruddin = nhân vật truyện cười nổi tiếng nhất thế giới
   - Truyện về thương nhân, sa mạc, lạc đà

2. TRUYỆN CƯỜI CHÂU PHI (Chương 11):
   - 10-15 truyện
   - Nguồn: truyện dân gian Châu Phi, humor hiện đại
   - Đặc trưng: truyện ngụ ngôn hài, humor gia đình
   - Truyện về động vật (thỏ khôn ngoan, linh cẩu...)
   - Truyện về làng quê, cộng đồng

3. Cập nhật logs và commit

LƯU Ý:
- Nasruddin: chọn những truyện hay nhất, tránh trùng giữa chương 09 và 10
- Truyện Châu Phi ít phổ biến ở VN → cần giới thiệu context nhiều hơn
- Tuyệt đối tránh truyện có yếu tố phân biệt chủng tộc
```

### NGÀY 11: Truyện cười Mỹ Latin + Quốc tế

```
Hôm nay là Ngày 11 của dự án "CƯỜI VỠ BỤNG". Nhiệm vụ:

1. TRUYỆN CƯỜI MỸ LATIN (Chương 12):
   - 12-15 truyện từ Mexico, Brazil, Argentina, Colombia...
   - Đặc trưng: humor sôi nổi, gia đình, bóng đá
   - Truyện về fiesta, bóng đá, telenovela
   - Truyện dân gian: Pedro Urdemales, Juan Bobo

2. TRUYỆN CƯỜI QUỐC TẾ (Chương 16):
   - 20-25 truyện KHÔNG RÕ NGUỒN GỐC hoặc đa quốc gia
   - Dạng: "Một ông Mỹ, một ông Pháp, một ông Nhật..."
   - Truyện phổ quát: bác sĩ, luật sư, vợ chồng
   - Truyện viral internet đã được Việt hóa
   - Truyện logic/puzzle humor (ai cũng hiểu)

3. Cập nhật logs và commit

LƯU Ý:
- Chương 16 = chương "best of" từ humor toàn cầu
- Truyện "3 ông đi máy bay rơi" = thể loại kinh điển
- Tránh trùng với các chương trước
```

### NGÀY 12: Bonus - Truyện kinh điển thế giới

```
Hôm nay là Ngày 12 của dự án "CƯỜI VỠ BỤNG". Nhiệm vụ:

CHƯƠNG BONUS - TRUYỆN CƯỜI KINH ĐIỂN THẾ GIỚI (Chương 17):
- 15-20 truyện HAY NHẤT, NỔI TIẾNG NHẤT mọi thời đại
- Tiêu chí: phải là truyện được biết đến toàn cầu
- Bao gồm:
  + Truyện cười cổ đại (Hy Lạp, La Mã)
  + "The Aristocrats" style (phiên bản sạch)
  + Truyện từ Philogelos (cuốn sách truyện cười đầu tiên thế giới)
  + Truyện cười được vote "hay nhất thế giới" (nghiên cứu LaughLab)
  + Truyện cười kinh điển internet thời đại
- Mỗi truyện kèm ghi chú lịch sử ngắn

Cập nhật logs và commit
```

### NGÀY 13: Lời nói đầu + Lời kết + Mục lục

```
Hôm nay là Ngày 13 của dự án "CƯỜI VỠ BỤNG". Nhiệm vụ:

1. VIẾT LỜI NÓI ĐẦU (00-loi-noi-dau.md):
   - Giới thiệu dự án: tại sao có cuốn sách này
   - Humor là ngôn ngữ chung của nhân loại
   - Cách đọc sách: theo chương hoặc random
   - Hệ thống đánh dấu ⭐ cho truyện hay đặc biệt
   - Cảm ơn
   - Giọng văn: vui vẻ, gần gũi, có 1-2 câu gây cười

2. VIẾT LỜI KẾT (99-loi-ket.md):
   - Tổng kết hành trình qua humor thế giới
   - Thống kê: tổng số truyện, bao nhiêu nước
   - Kết bằng 1 truyện cười hay nhất cuốn sách
   - Lời mời đóng góp (nếu làm dạng open source)

3. TẠO MỤC LỤC TỔNG HỢP trong README.md:
   - Liệt kê tất cả chương + số lượng truyện
   - Link tới từng chương
   - Thống kê tổng quan

4. Commit: "Day 13: Add foreword, conclusion, and table of contents"
```

### NGÀY 14: Review tổng thể + Export

```
Hôm nay là Ngày 14 - NGÀY CUỐI CÙNG. Nhiệm vụ:

1. REVIEW TỔNG THỂ:
   - Đọc lướt toàn bộ sách từ đầu đến cuối
   - Đảm bảo tone nhất quán
   - Kiểm tra format Markdown đồng bộ
   - Sửa lỗi chính tả, ngữ pháp
   - Đảm bảo không có truyện trùng lặp

2. TAO SCRIPT BUILD (kich-ban/build-book.sh):
   ```bash
   #!/bin/bash
   # Ghép tất cả chương thành 1 file markdown
   cat sach/00-*.md sach/01-*.md ... sach/99-*.md > full-book.md
   ```

3. TAO SCRIPT EXPORT (kich-ban/export.sh):
   ```bash
   #!/bin/bash
   # Export sang các định dạng
   pandoc full-book.md -o "Cuoi-Vo-Bung.pdf" \
     --pdf-engine=xelatex \
     -V mainfont="Noto Sans" \
     -V geometry:margin=1in \
     --toc --toc-depth=2
   
   pandoc full-book.md -o "Cuoi-Vo-Bung.epub" \
     --toc --toc-depth=2 \
     --metadata title="Cười Vỡ Bụng" \
     --metadata author="AI & Cộng đồng"
   
   pandoc full-book.md -o "Cuoi-Vo-Bung.docx"
   ```

4. THỐNG KÊ CUỐI:
   - Tổng số truyện đưa vào sách
   - Tổng số truyện bị loại
   - Điểm trung bình mỗi chương
   - Phân bố truyện ⭐
   - Top 10 truyện điểm cao nhất

5. TAG VERSION:
   ```
   git tag -a v1.0 -m "Version 1.0 - Cười Vỡ Bụng first release"
   ```

6. Final commit: "Day 14: Final review, build scripts, v1.0 release"
```

---

## 🎯 HƯỚNG DẪN VIỆT HÓA CHI TIẾT

### Nguyên tắc Việt hóa

```
Khi Việt hóa truyện cười, tuân theo nguyên tắc sau:

1. TÊN NHÂN VẬT:
   - Nếu quốc tịch quan trọng → giữ nguyên: "Ông John" 
   - Nếu quốc tịch không quan trọng → đổi: "Anh Tèo", "Chị Ba"
   - Truyện có 2+ quốc tịch → giữ nguyên tên nước ngoài

2. ĐỊA ĐIỂM:
   - Bar/pub → "quán nhậu" hoặc giữ nguyên tùy context
   - Church → "nhà thờ" (giữ nguyên, phổ biến ở VN)
   - Giữ nguyên những địa điểm mang tính đặc trưng

3. ĐƠN VỊ:
   - Miles → km
   - Dollars → đô hoặc giữ "dollar"
   - Pounds/Euro → giữ nguyên

4. VĂN HÓA:
   - Thanksgiving → giải thích ngắn hoặc đổi thành "Tết"
   - Halloween → giữ nguyên (giới trẻ VN biết)
   - Prom → "dạ hội trường"
   
5. WORDPLAY:
   - Nếu chuyển được → chuyển sang chơi chữ tiếng Việt
   - Nếu không chuyển được → BỎ truyện đó, đừng ép
   - Ghi chú: "[Gốc: chơi chữ tiếng X]" nếu muốn giải thích

6. MỨC ĐỘ:
   - Truyện 18+ → loại bỏ hoặc giảm nhẹ thành PG-13
   - Truyện phân biệt chủng tộc → loại bỏ hoàn toàn
   - Truyện nhạy cảm chính trị → loại bỏ
   - Truyện tôn giáo → chỉ giữ nếu nhẹ nhàng, phổ quát
```

---

## 📊 TEMPLATE CHẤM ĐIỂM

```markdown
## Bảng Chấm Điểm Truyện Cười

### [Tên chương] - [Ngày]

| # | Tên truyện | Bất ngờ | Phù hợp VN | Dễ hiểu | Kể lại | Không nhạy cảm | Tổng | Đạt? |
|---|-----------|---------|------------|---------|--------|----------------|------|------|
| 1 | Tên truyện | 8 | 7 | 9 | 8 | 10 | 42 | ⭐ |
| 2 | Tên truyện | 6 | 5 | 7 | 6 | 10 | 34 | ❌ |
| 3 | Tên truyện | 7 | 8 | 8 | 7 | 10 | 40 | ⭐ |
```

---

## 🔀 GIT WORKFLOW

```bash
# Khởi tạo
git init
git add .
git commit -m "Day 0: Project initialization"

# Mỗi ngày làm việc
git add .
git commit -m "Day X: [Mô tả chi tiết]"

# Ví dụ commit messages:
"Day 1: Initial setup + Chapter 01 American jokes (22 stories, 18 passed)"
"Day 2: Chapter 02 British (16 stories) + Chapter 03 French (15 stories)"
"Day 5: Week 1 review - removed 3 duplicates, reordered chapters"
"Day 14: Final review, export scripts, tag v1.0"

# Branching (tùy chọn):
git checkout -b draft/chapter-06-japan
# Làm xong:
git checkout main
git merge draft/chapter-06-japan

# Release:
git tag -a v1.0 -m "First complete release"
```

---

## 📖 TEMPLATE CHƯƠNG SÁCH

```markdown
# Chương X: Truyện Cười [Tên Nước]

> *"[Một câu quote hay về humor của nước đó]"*

**Về nền hài kịch [Tên Nước]:** [2-3 câu giới thiệu đặc trưng humor 
của nước này, tại sao nó buồn cười, và điều gì khiến nó đặc biệt]

---

### 1. [Tên truyện đầu tiên - nên là truyện HAY NHẤT]
> 🌍 Nguồn gốc: [Nước] | ⭐ Điểm: 43/50

[Nội dung truyện - có setup rõ ràng và punchline mạnh]

---

### 2. [Tên truyện thứ hai]
> 🌍 Nguồn gốc: [Nước] | Điểm: 38/50

[Nội dung truyện]

---

[... tiếp tục ...]

---

📊 **Thống kê chương:** X truyện | Điểm trung bình: Y/50 | Truyện ⭐: Z
```

---

## ⚡ QUICK START - COPY & PASTE VÀO CLAUDE CODE

Dán đoạn này vào Claude Code để bắt đầu ngay Ngày 1:

```
/init

Tôi đang bắt đầu dự án "CƯỜI VỠ BỤNG - Tuyển Tập Truyện Cười Thế Giới Cho Người Việt".

Hôm nay là Ngày 1. Hãy:

1. Tạo cấu trúc thư mục dự án theo plan (xem bên dưới)
2. Khởi tạo git repo
3. Tạo README.md, CHANGELOG.md, .gitignore, scoring template
4. Bắt đầu Chương 01: Truyện Cười Mỹ
   - Viết 20-25 truyện cười Mỹ đã Việt hóa
   - Chấm điểm từng truyện (thang 50 điểm)
   - Chỉ đưa vào truyện >= 35 điểm
   - Đánh dấu ⭐ cho truyện >= 40 điểm
5. Commit theo format: "Day 1: ..."

Tiêu chí chấm điểm mỗi truyện (mỗi mục /10):
- Tính bất ngờ (twist)
- Phù hợp văn hóa Việt
- Dễ hiểu không cần giải thích
- Khả năng kể lại (truyền miệng)
- Không xúc phạm/nhạy cảm

Format mỗi truyện:
### [Số]. [Tên]
> 🌍 Nguồn gốc: Mỹ | ⭐ Điểm: X/50
[Nội dung]

Bắt đầu!
```
