CREATE DATABASE [FMStyle]
GO
USE [FMStyle]
GO
/****** Object:  Table [dbo].[slide]    Script Date: 09/13/2017 18:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slide](
	[id_slide] [int] IDENTITY(1,1) NOT NULL,
	[hinhanh] [nvarchar](200) NOT NULL,
	[link] [nvarchar](200) NOT NULL,
	[vitri] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_slide] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[slide] ON
INSERT [dbo].[slide] ([id_slide], [hinhanh], [link], [vitri]) VALUES (10, N'2014-11-3-00-22-49.png', N'http://mp3.zing.vn/album/Tuyen-Tap-Nhac-Khong-Loi-Hay-Nhat-Various-Artists/ZWZA9EI8.html?st=8', 3)
INSERT [dbo].[slide] ([id_slide], [hinhanh], [link], [vitri]) VALUES (11, N'2014-11-3-00-23-23.png', N'https://www.facebook.com/', 2)
INSERT [dbo].[slide] ([id_slide], [hinhanh], [link], [vitri]) VALUES (12, N'2014-11-3-00-23-53.png', N'http://vnexpress.net/', 4)
INSERT [dbo].[slide] ([id_slide], [hinhanh], [link], [vitri]) VALUES (14, N'2014-11-3-00-27-17.png', N'http://kenh14.vn/', 1)
INSERT [dbo].[slide] ([id_slide], [hinhanh], [link], [vitri]) VALUES (15, N'2014-11-3-00-27-43.png', N'http://funring.vn/funringme?utm_source=AdMicro&utm_medium=CPD&utm_campaign=Mobifone', 9)
SET IDENTITY_INSERT [dbo].[slide] OFF
/****** Object:  Table [dbo].[lien_he]    Script Date: 09/13/2017 18:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lien_he](
	[id_lienhe] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](100) NOT NULL,
	[email] [nvarchar](100) NULL,
	[sdt] [nvarchar](11) NULL,
	[noidung] [ntext] NULL,
	[ngaygui] [smalldatetime] NULL,
	[diachi] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_lienhe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[lien_he] ON
INSERT [dbo].[lien_he] ([id_lienhe], [hoten], [email], [sdt], [noidung], [ngaygui], [diachi]) VALUES (19, N'Đỗ Đức Minh', N'minhdd@gmail.com', N'09812849124', N'<p>
	Th&aacute;ng 10 thời điểm bận rộn nhất trong năm của l&agrave;ng di động với việc nhiều thiết bị cao cấp thi nhau l&agrave;m n&oacute;ng thị trường. Ở kh&iacute;a cạnh kh&aacute;c, những tựa game d&agrave;nh cho Android, iPhone v&agrave; Windows Phone cũng xuất hiện ồ ạt.</p>', CAST(0xA3D90000 AS SmallDateTime), N'14/8A THOI TU, Thới Tam Thôn, Hóc Môn, Hồ Chí Minh(Tp)')
INSERT [dbo].[lien_he] ([id_lienhe], [hoten], [email], [sdt], [noidung], [ngaygui], [diachi]) VALUES (20, N'NGUYỄN THỊ NGỌC MAI', N'maintn@gmail.com', N'09283646246', N'<p>
	Thị trường game mobile đang ng&agrave;y c&agrave;ng ph&aacute;t triển, cuốn h&uacute;t sự tham gia của những nh&agrave; ph&aacute;t triển game h&agrave;ng đầu. B&ecirc;n cạnh đ&oacute;, chất lượng game cũng được ch&uacute; trọng hơn. Những tr&ograve; chơi trước đ&acirc;y vốn đ&atilde; nổi tiếng tr&ecirc;n hệ m&aacute;y PC hoặc console đ&atilde; lần lượt xuất hiện tr&ecirc;n smartphone.</p>
<p>
	Dưới đ&acirc;y l&agrave; những tựa game hay, hấp dẫn nhất vừa được ph&aacute;t h&agrave;nh trong th&aacute;ng 10/2014 d&agrave;nh cho c&aacute;c nền tảng di động Android, iPhone v&agrave; Windows Phone.</p>', CAST(0xA3D90000 AS SmallDateTime), N'ẤP 6, Tiến Hưng, Đồng Xoài(Tx), Bình Phước')
INSERT [dbo].[lien_he] ([id_lienhe], [hoten], [email], [sdt], [noidung], [ngaygui], [diachi]) VALUES (21, N'LÊ HOÀNG MINH TUYẾT', N'tuyetlhm@gmail.com', N'09764164471', N'<p>
	Rovio &ndash; nh&agrave; ph&aacute;t triển game nổi tiếng Angry Bird vừa cho ra mắt một game mới mang t&ecirc;n RETRY.</p>
<p>
	Thay v&igrave; một sản phẩm n&agrave;o đ&oacute; li&ecirc;n quan đến những ch&uacute; chim giận dữ, RETRY y&ecirc;u cầu bạn phải điều khiển một chiếc m&aacute;y bay nhỏ, tiến l&ecirc;n ph&iacute;a trước v&agrave; tr&aacute;nh c&aacute;c chướng ngại vật tr&ecirc;n đường đi. Game n&agrave;y cũng d&ugrave;ng đồ họa 8-bit, m&agrave;u sắc kh&aacute; sặc sỡ.</p>
<p>
	Từ đồ họa cho đến c&aacute;ch chơi, kh&ocirc;ng kh&oacute; để nhận ra RETRY l&agrave; một sản phẩm học theo th&agrave;nh c&ocirc;ng của Flappy Bird v&agrave; Swing Copters .</p>', CAST(0xA3D90000 AS SmallDateTime), N'250/56 NGUYỄN THƯỢNG HIỀN, P.5, Q.Phú Nhuận, Hồ Chí Minh(Tp)')
INSERT [dbo].[lien_he] ([id_lienhe], [hoten], [email], [sdt], [noidung], [ngaygui], [diachi]) VALUES (22, N'PHẠM THỊ MAI THƯƠNG', N'thuongptm@gmail.com', N'01675728528', N'<p>
	Khi bạn ho&agrave;n th&agrave;nh một mức chơi, bạn sẽ thấy được th&agrave;nh quả của m&igrave;nh tr&ecirc;n một tấm bản đồ 8-bit. RETRY l&agrave; một game dạng freemium &ndash; nghĩa l&agrave; bạn c&oacute; thể download game ho&agrave;n to&agrave;n miễn ph&iacute; nhưng c&oacute; thể mua v&agrave;ng b&ecirc;n trong để mở kh&oacute;a m&agrave;n chơi tiếp theo nếu bạn kh&ocirc;ng vượt qua.</p>', CAST(0xA3D90000 AS SmallDateTime), N'70 BÀ HUYỆN THANH QUAN, P.7, Q.3, Hồ Chí Minh(Tp)')
INSERT [dbo].[lien_he] ([id_lienhe], [hoten], [email], [sdt], [noidung], [ngaygui], [diachi]) VALUES (23, N'VÕ THỊ MỸ NGỌC', N'ngocvtm@gmail.com', N'09814718741', N'<p>
	Một tuần sau khi ra mắt, Swing Copters đ&atilde; rơi xuống vị tr&iacute; thứ 7 tr&ecirc;n gian ứng dụng Google Play tại Việt Nam v&agrave; bị hai tr&ograve; chơi kh&aacute;c l&agrave; <a href="http://news.zing.vn/Mochi--tro-choi-gay-sot-tren-iPhone-Android-post450737.html">Mochi</a> v&agrave; Đuổi h&igrave;nh bắt chữ bỏ lại ph&iacute;a sau.&nbsp;</p>
<p>
	Trong khi đ&oacute;, tr&ecirc;n gian ứng dụng App Store, Swing Copters đ&atilde; rơi xuống vị tr&iacute; số 2 sau phần mềm chat của Facebook. Trước đ&oacute;, tr&ograve; chơi n&agrave;y từng leo l&ecirc;n đầu bảng do hiệu ứng truyền th&ocirc;ng. Bảng xếp hạng tại Mỹ, Swing Copters cũng lui xuống vị tr&iacute; thứ 4.</p>', CAST(0xA3D90000 AS SmallDateTime), N'23/19 ĐƯỜNG 26, P.Phước Long A, Q.9, Hồ Chí Minh(Tp)')
INSERT [dbo].[lien_he] ([id_lienhe], [hoten], [email], [sdt], [noidung], [ngaygui], [diachi]) VALUES (24, N'LÊ THỊ HIẾU', N'hieult@gmail.com', N'09184784741', N'<p>
	Thống k&ecirc; từ Google cho thấy, Swing Copters được c&aacute;c trang b&aacute;o đưa tin rầm rộ trong 4 ng&agrave;y đầu ra mắt. Từ đầu tuần n&agrave;y, tần suất xuất hiện của tr&ograve; chơi n&agrave;y tr&ecirc;n truyền th&ocirc;ng &iacute;t dần.</p>', CAST(0xA3D90000 AS SmallDateTime), N'21 CẦM BÁ THƯỚC, Lam Sơn, Thanh Hóa(Tp), Thanh Hóa')
INSERT [dbo].[lien_he] ([id_lienhe], [hoten], [email], [sdt], [noidung], [ngaygui], [diachi]) VALUES (25, N'NGUYỄN THỊ THU HOA', N'hoantt@gmail.com', N'09872428444', N'<p>
	Khảo s&aacute;t của <em>Zing.vn</em> cho thấy, phần lớn người d&ugrave;ng kh&ocirc;ng chơi tiếp Swing Copters do độ kh&oacute; của ứng dụng n&agrave;y qu&aacute; cao. &quot;Flappy Bird c&oacute; thể chinh phục được do tu&acirc;n theo một số quy tắc về nhấp tay v&agrave; thời gian chạm, nhưng Swing Copters th&igrave; kh&ocirc;ng r&otilde; r&agrave;ng. M&igrave;nh chơi trong hai ng&agrave;y v&agrave; bỏ cuộc&quot;, Ho&agrave;i Anh (sinh vi&ecirc;n trường Đại học Văn Lang, TP.HCM) chia sẻ.</p>', CAST(0xA3D90000 AS SmallDateTime), N'114 NGÔ THÌ NHẬM, An Phú, An Khê(Tx), Gia Lai')
INSERT [dbo].[lien_he] ([id_lienhe], [hoten], [email], [sdt], [noidung], [ngaygui], [diachi]) VALUES (26, N'LÊ HỒNG PHÚ', N'phulh@gmail.com', N'09478225785', N'<p>
	Theo nhiều bạn trẻ, họ c&agrave;i Swing Copters v&igrave; hiệu ứng Flappy Bird, nhưng ứng dụng mới kh&ocirc;ng hấp dẫn như tr&ograve; chơi cũ. Dưới đ&acirc;y l&agrave; một số &yacute; kiến thu thập từ người chơi.</p>', CAST(0xA3D90000 AS SmallDateTime), N'59/58/8, ĐƯỜNG AN PHÚ ĐÔNG 27, P.An Phú Đông, Q.12, Hồ Chí Minh(Tp)')
INSERT [dbo].[lien_he] ([id_lienhe], [hoten], [email], [sdt], [noidung], [ngaygui], [diachi]) VALUES (27, N'NGUYỄN NGỌC VĂN', N'vannn@gmail.com', N'01682374927', N'<p>
	Thống k&ecirc; từ Google cho thấy, Swing Copters được c&aacute;c trang b&aacute;o đưa tin rầm rộ trong 4 ng&agrave;y đầu ra mắt. Từ đầu tuần n&agrave;y, tần suất xuất hiện của tr&ograve; chơi n&agrave;y tr&ecirc;n truyền th&ocirc;ng &iacute;t dần.</p>
<p>
	Khảo s&aacute;t của <em>Zing.vn</em> cho thấy, phần lớn người d&ugrave;ng kh&ocirc;ng chơi tiếp Swing Copters do độ kh&oacute; của ứng dụng n&agrave;y qu&aacute; cao. &quot;Flappy Bird c&oacute; thể chinh phục được do tu&acirc;n theo một số quy tắc về nhấp tay v&agrave; thời gian chạm, nhưng Swing Copters th&igrave; kh&ocirc;ng r&otilde; r&agrave;ng. M&igrave;nh chơi trong hai ng&agrave;y v&agrave; bỏ cuộc&quot;, Ho&agrave;i Anh (sinh vi&ecirc;n trường Đại học Văn Lang, TP.HCM) chia sẻ.</p>
<p>
	Theo nhiều bạn trẻ, họ c&agrave;i Swing Copters v&igrave; hiệu ứng Flappy Bird, nhưng ứng dụng mới kh&ocirc;ng hấp dẫn như tr&ograve; chơi cũ. Dưới đ&acirc;y l&agrave; một số &yacute; kiến thu thập từ người chơi.</p>', CAST(0xA3D90000 AS SmallDateTime), N'434 ẤP NÚI ĐỎ, Bàu Sen, Long Khánh(Tx), Đồng Nai')
INSERT [dbo].[lien_he] ([id_lienhe], [hoten], [email], [sdt], [noidung], [ngaygui], [diachi]) VALUES (28, N'BÙI THỊ HUYỀN TRÂM', N'trambth@gmail.com', N'09273642734', N'<p>
	Tr&ecirc;n thực tế, nếu t&iacute;nh theo th&aacute;ng, th&igrave; kể từ đầu năm tới nay, Việt Nam chỉ xuất si&ecirc;u 3 th&aacute;ng v&agrave; nhập si&ecirc;u 7 th&aacute;ng, song do xuất si&ecirc;u lớn, n&ecirc;n t&iacute;nh chung, Việt Nam đang xuất si&ecirc;u khoảng 1,87 tỷ USD. Dự kiến cả năm, xuất si&ecirc;u khoảng 1,5 tỷ USD - mức xuất si&ecirc;u cao nhất kể từ trước tới nay.</p>', CAST(0xA3D90000 AS SmallDateTime), N'59 PHẠM VĂN CHIÊU, P.14, Q.Gò Vấp, Hồ Chí Minh(Tp)')
INSERT [dbo].[lien_he] ([id_lienhe], [hoten], [email], [sdt], [noidung], [ngaygui], [diachi]) VALUES (29, N'TRẦN VĂN HUY', N'huytv@gmail.com', N'09536482484', N'<p>
	Mặc d&ugrave; xuất si&ecirc;u l&agrave; th&agrave;nh t&iacute;ch đ&aacute;ng kể g&oacute;p phần v&agrave;o tăng dự trữ ngoại hối, ổn định thị trường ngoại tệ của Việt Nam, nhưng trong thời điểm n&agrave;y, chuyện nhập si&ecirc;u quay trở lại c&oacute; lẽ l&agrave; điểm đ&aacute;ng mừng.</p>', CAST(0xA3D90000 AS SmallDateTime), N'16 ĐƯỜNG 31, P.Bình An, Q.2, Hồ Chí Minh(Tp)')
INSERT [dbo].[lien_he] ([id_lienhe], [hoten], [email], [sdt], [noidung], [ngaygui], [diachi]) VALUES (30, N'NGUYỄN THỊ THANH NGÂN', N'nganntt@gmail.com', N'09474477979', N'<p>
	Sau th&aacute;ng 8 c&oacute; mức xuất si&ecirc;u rất cao (1,07 tỷ USD), sang th&aacute;ng 9, cả nước nhập si&ecirc;u khoảng 582 triệu USD, th&aacute;ng 10 nhập si&ecirc;u 400 triệu USD. Nhiều khả năng, những th&aacute;ng c&ograve;n lại cũng sẽ tiếp tục nhập si&ecirc;u. Đ&oacute; l&agrave; dấu hiệu cho thấy, nhu cầu nhập khẩu c&aacute;c loại thiết bị, m&aacute;y m&oacute;c, nguy&ecirc;n vật liệu đ&atilde; tăng trở lại.&nbsp;Doanh nghiệp đ&atilde; c&oacute; th&ecirc;m đơn h&agrave;ng v&agrave; như vậy, sản xuất sẽ tiếp tục phục hồi, đ&oacute;ng g&oacute;p cho tăng trưởng kinh tế những th&aacute;ng cuối năm v&agrave; năm sau.</p>', CAST(0xA3D90000 AS SmallDateTime), N'403/1C KHÓM ĐÔNG THỊNH 3, Mỹ Phước, Long Xuyên(Tp), An Giang')
SET IDENTITY_INSERT [dbo].[lien_he] OFF
/****** Object:  Table [dbo].[khuyenmai]    Script Date: 09/13/2017 18:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khuyenmai](
	[id_khuyenmai] [int] IDENTITY(1,1) NOT NULL,
	[ten_khuyenmai] [nvarchar](50) NOT NULL,
	[giatri] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_khuyenmai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[khuyenmai] ON
INSERT [dbo].[khuyenmai] ([id_khuyenmai], [ten_khuyenmai], [giatri]) VALUES (1, N'khuyenmai', 20)
SET IDENTITY_INSERT [dbo].[khuyenmai] OFF
/****** Object:  Table [dbo].[danhmuc]    Script Date: 09/13/2017 18:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danhmuc](
	[id_danhmuc] [int] IDENTITY(1,1) NOT NULL,
	[ten_danhmuc] [nvarchar](100) NOT NULL,
	[groupdanhmuc] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_danhmuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[danhmuc] ON
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (1, N'Áo sơ mi nam', 1.2)
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (2, N'Áo thun nam', 1.2)
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (3, N'Áo đôi - Áo cặp', 1.2)
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (4, N'Áo khoác nam', 1.2)
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (5, N'Quần dài nam', 1.2)
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (6, N'Quần short nam', 1.2)
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (7, N'Quần thể thao nam', 1.2)
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (8, N'Quần jean nam', 1.2)
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (10, N'Áo sơ mi nữ', 2.2)
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (11, N'Áo thun nữ', 2.2)
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (12, N'Áo đôi - Áo cặp', 2.2)
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (13, N'Áo khoác nữ', 2.2)
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (14, N'Váy đầm nữ', 2.2)
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (15, N'Quần dài nữ', 2.2)
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (16, N'Quần jean nữ', 2.2)
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (17, N'Quần short nữ', 2.2)
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (18, N'Quần thun nữ', 2.2)
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (19, N'Đồ bộ nữ', 2.2)
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (20, N'Váy đầm ngủ', 2.2)
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (21, N'Dành cho nam', 1.1)
INSERT [dbo].[danhmuc] ([id_danhmuc], [ten_danhmuc], [groupdanhmuc]) VALUES (22, N'Dành cho nữ', 2.1)
SET IDENTITY_INSERT [dbo].[danhmuc] OFF
/****** Object:  Table [dbo].[role]    Script Date: 09/13/2017 18:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id_role] [int] IDENTITY(1,1) NOT NULL,
	[role] [nvarchar](30) NOT NULL,
	[truycap_cms] [bit] NULL,
	[special] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_role] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[role] ON
INSERT [dbo].[role] ([id_role], [role], [truycap_cms], [special]) VALUES (1, N'Admin', 1, 1)
INSERT [dbo].[role] ([id_role], [role], [truycap_cms], [special]) VALUES (2, N'Nhân viên', 1, 0)
INSERT [dbo].[role] ([id_role], [role], [truycap_cms], [special]) VALUES (3, N'Khách hàng', 0, 1)
SET IDENTITY_INSERT [dbo].[role] OFF
/****** Object:  Table [dbo].[quangcao]    Script Date: 09/13/2017 18:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quangcao](
	[id_adv] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](100) NOT NULL,
	[link] [nvarchar](200) NOT NULL,
	[hinhanh] [nvarchar](200) NULL,
	[trangthai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_adv] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[quangcao] ON
INSERT [dbo].[quangcao] ([id_adv], [ten], [link], [hinhanh], [trangthai]) VALUES (8, N'khuyến mãi 70% tháng 9', N'https://www.google.com.vn/?gfe_rd=cr&ei=TJRSVJShHMuL8QfG34HQDQ&gws_rd=ssl', N'2014-10-31-02-41-16.png', 1)
INSERT [dbo].[quangcao] ([id_adv], [ten], [link], [hinhanh], [trangthai]) VALUES (9, N'Adv', N'https://www.google.com.vn/search?q=qu%E1%BA%A3ng+c%C3%A1o&client=firefox-a&hs=ko0&rls=org.mozilla:en-US:official&channel=sb&source=lnms&tbm=isch&sa=X&ei=8WlWVIvDBoik8QWyoYHoDg&ved=0CAkQ_AUoAg&biw=1366', N'2014-11-3-00-31-20.jpg', 0)
SET IDENTITY_INSERT [dbo].[quangcao] OFF
/****** Object:  Table [dbo].[phuong_thuc_thanh_toan]    Script Date: 09/13/2017 18:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phuong_thuc_thanh_toan](
	[id_pt] [int] IDENTITY(1,1) NOT NULL,
	[ten_phuongthuc] [nvarchar](100) NOT NULL,
	[chitiet] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pt] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[phuong_thuc_thanh_toan] ON
INSERT [dbo].[phuong_thuc_thanh_toan] ([id_pt], [ten_phuongthuc], [chitiet]) VALUES (1, N'ATM', N'<p>
	<strong>HƯỚNG DẪN THANH TO&Aacute;N:</strong></p>
<p>
	<strong>Thanh to&aacute;n bằng h&igrave;nh thức chuyển khoản qua ng&acirc;n h&agrave;ng H&igrave;nh thức n&agrave;y &aacute;p dụng cho c&aacute;c kh&aacute;ch h&agrave;ng ở v&ugrave;ng ngoại th&agrave;nh H&agrave; Nội, c&aacute;c tỉnh v&agrave; th&agrave;nh phố kh&aacute;c tr&ecirc;n to&agrave;n quốc. Ngay sau khi x&aacute;c nhận đơn h&agrave;ng, Q&uacute;y kh&aacute;ch vui l&ograve;ng chuyển khoản v&agrave;o một trong những t&agrave;i khoản sau, để ch&uacute;ng t&ocirc;i sớm c&oacute; thể chuyển h&agrave;ng cho Q&uacute;y kh&aacute;ch. </strong></p>
<p>
	1. NG&Acirc;N H&Agrave;NG NGOẠI THƯƠNG VIỆT NAM VIETCOMBANK TH&Agrave;NH C&Ocirc;NG Chủ T&agrave;i Khoản : Nguyễn Tuấn Điệp Số t&agrave;i khoản : 0021001680159 Địa chỉ: Nh&agrave; 18T2 KĐT Trung H&ograve;a Nh&acirc;n Ch&iacute;nh, H&agrave; Nội</p>
<p>
	2. NG&Acirc;N H&Agrave;NG KỸ THƯƠNG VIỆT NAM TECHCOMBANK Đ&Ocirc;NG Đ&Ocirc; Chủ t&agrave;i khoản : Nguyễn Tuấn Điệp Số t&agrave;i khoản : 11120269126016 Địa chỉ: Tầng 1, to&agrave; nh&agrave; 18T1, Khu đ&ocirc; thị Trung Ho&agrave;- Nh&acirc;n Ch&iacute;nh, Thanh Xu&acirc;n, H&agrave; Nội</p>
<p>
	3. NG&Acirc;N H&Agrave;NG THƯƠNG MẠI CỔ PHẦN XĂNG DẦU PETROLIMEX - HỘI SỞ CH&Iacute;NH Chủ T&agrave;i Khoản : Nguyễn Tuấn Điệp Số t&agrave;i khoản : 9947040035189 Địa chỉ: 229 T&acirc;y Sơn, Đống Đa, H&agrave; Nội</p>
<p>
	4. NG&Acirc;N H&Agrave;NG THƯƠNG MẠI CỔ PHẦN H&Agrave;NG HẢI VIỆT NAM Chủ T&agrave;i Khoản : Nguyễn Tuấn Điệp Số t&agrave;i khoản : 031-01-01-191060-1 Địa chỉ: Số 47A Huỳnh Th&uacute;c Kh&aacute;ng, Đống Đa, H&agrave; Nội</p>
<p>
	5. NG&Acirc;N H&Agrave;NG &Aacute; CH&Acirc;U - CHI NH&Aacute;NH H&Agrave; NỘI Chủ T&agrave;i Khoản : Nguyễn Tuấn Điệp Số t&agrave;i khoản : 9033109 Địa chỉ: Số 184 - 186 B&agrave; Triệu, Hai B&agrave; Trưng, H&agrave; Nội</p>
')
INSERT [dbo].[phuong_thuc_thanh_toan] ([id_pt], [ten_phuongthuc], [chitiet]) VALUES (2, N'Thu tiền', N'<p>
	<span style="font-size:12px;"><strong><span style="font-family: arial,helvetica,sans-serif;">Dịch vụ ph&aacute;t h&agrave;ng thu tiền l&agrave; một loại h&igrave;nh dịch vụ mới m&agrave; người gửi c&oacute; thể để ủy th&aacute;c cho Bưu điện thu hộ một khoản tiền của người nhận khi ph&aacute;t bưu gửi l&agrave; h&agrave;ng h&oacute;a v&agrave; chuyển trả khoản tiền đ&oacute; cho người gửi.</span></strong></span></p>
<p style="text-align: justify;">
	<span style="font-size:12px;"><span style="font-family: arial,helvetica,sans-serif;"><b>THUẬN TIỆN - DỄ SỬ DỤNG.</b></span></span></p>
<p style="text-align: justify;">
	<span style="font-size:12px;"><span style="font-family: arial,helvetica,sans-serif;">Để đặt h&agrave;ng Q&uacute;y kh&aacute;ch cần đ&aacute;p ứng những điều kiện sau đ&acirc;y:</span></span></p>
<p style="text-align: justify;">
	<span style="font-size:12px;"><span style="font-family: arial,helvetica,sans-serif;">Đối với c&aacute;c th&agrave;nh phố, ch&uacute;ng t&ocirc;i c&oacute; thể vận chuyển tận nh&agrave; mới thu tiền của qu&yacute; kh&aacute;ch.</span></span></p>
<p style="text-align: justify;">
	<span style="font-size:12px;"><span style="font-family: arial,helvetica,sans-serif;">Đối với c&aacute;c tỉnh lẻ, bạn phải cho địa chỉ ở tỉnh để nhận h&agrave;ng v&agrave; thu tiền.</span></span></p>
<p style="text-align: justify;">
	<span style="font-size:12px;"><span style="font-family: arial,helvetica,sans-serif;">Bạn phải trả trước 1 khoản ph&iacute; l&agrave; 150.000 Tiền vận chuyển v&agrave;o t&agrave;i khoản.</span></span></p>
<p style="text-align: justify;">
	<span style="font-size:12px;"><span style="font-family: arial,helvetica,sans-serif;">Rồi sau đ&oacute; th&ocirc;ng b&aacute;o cho ch&uacute;ng t&ocirc;i qua số Điện thoại 0916.544.611 - hoặc 0968.416.111</span></span></p>
')
SET IDENTITY_INSERT [dbo].[phuong_thuc_thanh_toan] OFF
/****** Object:  Table [dbo].[nguoidung]    Script Date: 09/13/2017 18:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[nguoidung](
	[id_user] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](30) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[hoten] [nvarchar](100) NOT NULL,
	[sdt] [varchar](11) NULL,
	[diachi] [nvarchar](200) NOT NULL,
	[role] [int] NULL,
	[email] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[nguoidung] ON
INSERT [dbo].[nguoidung] ([id_user], [username], [password], [hoten], [sdt], [diachi], [role], [email]) VALUES (1, N'thedtv', N'789', N'Đàm Triệu Văn Thế', N'0987654321', N'14 Tân Hoà- Buôn Đôn- DakLak', 1, N'thedtv@gmail.com')
INSERT [dbo].[nguoidung] ([id_user], [username], [password], [hoten], [sdt], [diachi], [role], [email]) VALUES (2, N'admin', N'789', N'Admin', N'09876543215', N'14 Tân Hoà- Buôn Đôn- DakLak', 1, N'admin@gmail.com')
INSERT [dbo].[nguoidung] ([id_user], [username], [password], [hoten], [sdt], [diachi], [role], [email]) VALUES (3, N'dungnv', N'123', N'Nguyễn Văn Dũng', N'09867497247', N'136- Lý Thường Kiệt-Buôn Ma Thuột', 2, N'dungnv@gmail.com')
INSERT [dbo].[nguoidung] ([id_user], [username], [password], [hoten], [sdt], [diachi], [role], [email]) VALUES (4, N'hienptt', N'123', N'Phạm Thị Thu Hiên', N'1234557890', N'167 Nguyễn Thị Thập Liên Chiểu Đà Nẵng', 2, N'henptt@gmail.com')
INSERT [dbo].[nguoidung] ([id_user], [username], [password], [hoten], [sdt], [diachi], [role], [email]) VALUES (5, N'longhq', N'22', N'Hoàng Quốc Long', N'0987654321', N'14/8A THOI TU, Thới Tam Thôn, Hóc Môn, Hồ Chí Minh(Tp)', 3, N'longhq@gmail.com')
INSERT [dbo].[nguoidung] ([id_user], [username], [password], [hoten], [sdt], [diachi], [role], [email]) VALUES (6, N'anhlk', N'22', N'LÊ KIM ANH', N'0930000363', N'013/B1 KHU 1, Uyên Hưng, Huyện Tân Uyên, Bình Dương', 3, N'anhlk@gmail.com')
INSERT [dbo].[nguoidung] ([id_user], [username], [password], [hoten], [sdt], [diachi], [role], [email]) VALUES (7, N'nantn', N'123', N'NGUYỄN THỊ NI NA', N'0930001426', N'68/47 ĐOÀN VĂN BƠ, P.9, Q.4, Hồ Chí Minh(Tp)', 3, N'nantn@gmail.com')
INSERT [dbo].[nguoidung] ([id_user], [username], [password], [hoten], [sdt], [diachi], [role], [email]) VALUES (8, N'dieutn', N'123', N'TRẦN THỊ NGỌC DIỆU', N'0930002651', N'270/29 VĨNH HƯNG 1, Vĩnh Thành, Chợ Lách, Bến Tre', 3, N'dieutn@gmail.com')
INSERT [dbo].[nguoidung] ([id_user], [username], [password], [hoten], [sdt], [diachi], [role], [email]) VALUES (9, N'ngocpv', N'123', N'PHẠM VĂN NGỌC', N'0930005698', N'69 ĐƯỜNG 102, P.Tăng Nhơn Phú B, Q.9, Hồ Chí Minh(Tp)', 3, N'ngocpv@gmail.com')
INSERT [dbo].[nguoidung] ([id_user], [username], [password], [hoten], [sdt], [diachi], [role], [email]) VALUES (10, N'hyunvk', N'123', N'NGUYỄN VŨ KHÁNH HUY', N'0930005734', N'84B2, TỔ 9, ẤP HÒA MỸ, XÃ HÒA AN, TP CAO LÃNH, ĐỒNG THÁP', 3, N'hyunvk@gmail.com')
INSERT [dbo].[nguoidung] ([id_user], [username], [password], [hoten], [sdt], [diachi], [role], [email]) VALUES (11, N'maipt', N'123', N'PHẠM THỊ MAI', N'09300064126', N'SỐ NHÀ 75, NGÕ 120, P.Cổ Nhuế, Q.Từ Liêm, Hà Nội(Tp)', 3, N'maipt@gmail.com')
INSERT [dbo].[nguoidung] ([id_user], [username], [password], [hoten], [sdt], [diachi], [role], [email]) VALUES (12, N'giangnth', N'123', N'NGUYỄN THỊ HỒNG GIANG', N'09300064126', N'PHÒNG 606, TÒA NHÀ CT2B, KHU MỸ ĐÌNH 2, TỪ LIÊM, HÀ NỘI', 3, N'giangnth@gmail.com')
INSERT [dbo].[nguoidung] ([id_user], [username], [password], [hoten], [sdt], [diachi], [role], [email]) VALUES (13, N'nhungvtt', N'123', N'VÕ THỊ TUYẾT NHUNG', N'09300085672', N'80/1B LÊ ĐỨC THỌ, P.6, Q.Gò Vấp, Hồ Chí Minh(Tp)', 3, N'nhungvtt@gmail.com')
INSERT [dbo].[nguoidung] ([id_user], [username], [password], [hoten], [sdt], [diachi], [role], [email]) VALUES (14, N'uyenlnht', N'123', N'LÊ NGUYỄN HOÀNG THẢO UYÊN', N'09300090238', N'81 CHÙA AM, Gia Lộc, Trảng Bàng, Tây Ninh', 3, N'uyenlnht@gmail.com')
INSERT [dbo].[nguoidung] ([id_user], [username], [password], [hoten], [sdt], [diachi], [role], [email]) VALUES (15, N'lamnh', N'123', N'NGUYỄN HOÀNG LÂM', N'09300111241', N'9 ĐƯỜNG 41, P.Bình Thuận, Q.7,    Hồ Chí Minh(Tp)', 3, N'lamnh@gmail.com')
INSERT [dbo].[nguoidung] ([id_user], [username], [password], [hoten], [sdt], [diachi], [role], [email]) VALUES (16, N'hungnv', N'123', N'Ngọc Việt Hưng', N'0935533129', N'146D, Nguyễn Thị Thập, Liên Chiểu, Đà Nẵng', 3, N'hungnv@gmail.com')
INSERT [dbo].[nguoidung] ([id_user], [username], [password], [hoten], [sdt], [diachi], [role], [email]) VALUES (30, N'dtvthe', N'123', N'Thế Đàm', N'09355331263', N'Tân Hòa', 3, N'dtvthe@gmail.com')
SET IDENTITY_INSERT [dbo].[nguoidung] OFF
/****** Object:  Table [dbo].[san_pham]    Script Date: 09/13/2017 18:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham](
	[id_sanpham] [int] IDENTITY(1,1) NOT NULL,
	[ten_sanpham] [nvarchar](100) NOT NULL,
	[soluong] [int] NOT NULL,
	[hinhanh] [nvarchar](50) NULL,
	[id_danhmuc] [int] NULL,
	[tt_chitiet] [ntext] NULL,
	[ngaydang] [smalldatetime] NOT NULL,
	[gia] [decimal](18, 0) NOT NULL,
	[khuyenmai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_sanpham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[san_pham] ON
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (1, N'Áo vest nữ viền gợn sóng tinh tế', 15, N'7206-1239714449310201411961163837206-12397.jpg', 13, N'<ul>
	<li>
		<p>
			<span><span>Áo được thiết kế trẻ trung và tinh tế với kiểu dáng tay dài, cổ V may gợn sóng cách điệu đầy tinh tế.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Áo vest nữ&nbsp;mang lại sự phong cách thanh lịch, sang trọng cho bạn tự tin trong giao tiếp.</span></span></p>
	</li>
	<li>
		<span>Chất liệu: Tuyết mưa dày dặn</span></li>
	<li>
		<span>Kích thước: Dài 59cm, Vai 35cm, Tay 58cm, Ngực 48*2cm</span></li>
	<li>
		<span>Sai số 1-2cm. </span></li>
	<li>
		<span>Phù hợp với bạn dưới 53kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C40000 AS SmallDateTime), CAST(185000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (2, N'Áo sơ mi Voan 2 lớp nữ tính', 20, N'4820-1009913114024620143161041874820-10099.jpg', 10, N'<ul>
	<li>
		<span>Kiểu dáng nữ tính mang đến vẻ đẹp, dịu dàng, trang nhã cho phái đẹp.</span></li>
	<li>
		<span>Thiết kế thanh lịch với cổ sơ mi kiểu tim, tay lỡ phồng, vừa đủ kín đáo nhưng không làm mất đi vẻ gợi cảm vốn có của bạn gái.</span></li>
	<li>
		<span>Phần eo máy nhún để bạn phối với các kiểu dây nịt thời trang, tạo điểm nhấn ấn tượng cho chiếc áo.</span></li>
	<li>
		<span>Dễ kết hợp với các loại quần tây, kaki, chân váy để đi làm, đi học...</span></li>
	<li>
		<span>Chất liệu vải chiffon mềm mịn, có độ rũ nhẹ, mát mẻ tạo nét thanh thoát cho người mặc.</span></li>
	<li>
		<em>Sản phẩm đươc tặng kèm thắt lưng tương tự.</em></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(159000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (4, N'Áo nữ cánh dơi 2 lớp cá tính', 20, N'5535-1069216105107201414979531975535-10692.jpg', 10, N'<ul>
	<li>
		<span>Form áo dài cánh dơi, 2 lớp tay cánh tiên gợi cảm.</span></li>
	<li>
		<span>Dễ phối cùng quần dài, short hay chân váy tạo dáng vẻ trẻ trung, năng động khi tới công sở, hoặc đi chơi cùng bạn bè.</span></li>
	<li>
		<span>Chất liệu: Chiffon</span></li>
	<li>
		<span>Thích hợp với bạn dưới 55kg (tùy chiều cao).</span></li>
	<li>
		<span>Kích thước: Dài 65cm.</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(125000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (5, N'Áo sơ mi nữ cổ trụ form dài', 17, N'6816-1216111313619920144614235126816-12161.jpg', 10, N'<ul>
	<li>
		<span>Áo sơ mi form dài rộng&nbsp;cho bạn nữ phong cách thanh lịch, hiện đại.</span></li>
	<li>
		<span>Kiểu dáng form dài, vạt bầu kín đáo không kém phần thời trang.</span></li>
	<li>
		<span>Cho bạn phối cùng nhiều kiểu quần short, skinny, kaki, jeans ...&nbsp;</span></li>
	<li>
		<span>Thích hợp cho môi trường công sở và đi chơi, dạo phố cùng bạn bè...</span></li>
	<li>
		<span>Chất liệu: Kate dày dặn, hút ẩm tốt thích hợp với mọi hoạt động, cho bạn cả ngày đầy năng động</span></li>
	<li>
		<span>Kích thước: Dài 63cm, Vai 36cm, Tay 57cm, Ngực 48*2cm </span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
</ul>', CAST(0xA3C40000 AS SmallDateTime), CAST(125000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (6, N'Áo sơ mi đỏ đính nút cá tính', 20, N'4256121381662014790239016.jpg', 10, N'<ul>
	<li>
		<span>Thiết kế thanh lịch với kiểu cổ bẻ cài nút, cổ áo xẻ sâu (hình tim), tay suông dài đính nút nổi bật. Form áo đẹp, kiểu dáng sơ mi công sở, cổ áo lạ.</span></li>
	<li>
		<span>Thích hợp diện nơi công sở và mix cùng quần tây, kaki, jeans hay chân váy tạo nét cuốn hút ở bạn gái.</span></li>
	<li>
		<span>Chất liệu: kate. Màu sắc như hình.</span></li>
	<li>
		<span>Sản phẩm phù hợp với bạn gái dưới 52kg.</span></li>
	<li>
		<span>Kích thước: Dài 65cm, Tay 54cm, Ngực 90cm, Eo 88cm</span></li>
</ul>', CAST(0xA3C40000 AS SmallDateTime), CAST(135000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (7, N'Áo sơ mi form dài xếp ly', 18, N'7328-12591932371310201414542048117328-12591.jpg', 10, N'<ul>
	<li>
		<span>Thiết kế form dài, cổ sơ mi, tay sát nách, trang phục giúp che khuyết điểm vòng eo, mang đến cho bạn gái phong cách thời trang mới mẻ, hiện đại.</span></li>
	<li>
		<span>Với kiểu áo form dài, bạn có thể buông thả hoặc mix cùng thắt lưng tạo điểm nhấn phần eo.</span></li>
	<li>
		<span>Thích hợp mix cùng quần skinny/ legging/ tregging hoặc short để mặc đi làm, đi chơi...</span></li>
	<li>
		<span>Chất liệu: Châu toan, mềm rũ, thoải mái khi mặc. </span></li>
	<li>
		<span>Kèm thắt lưng tương tự.</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(159000 AS Decimal(18, 0)), 1)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (8, N'Áo sơ mi nữ phối màu cá tính', 20, N'7300-1255793210101020148416929357300-12557.jpg', 10, N'<ul>
	<li>
		<span>Thiết kế đơn giản với form áo rộng, tay sát cánh, cổ bẻ, thân áo phối màu nhã nhặn phần cổ, tay và đường gài nút.</span></li>
	<li>
		<span>Dễ dàng phối cùng short, jeans dài, chân váy ...</span></li>
	<li>
		<span>Chất liệu: Voan cát.</span></li>
	<li>
		<span>Kích thước: Dài 69cm, Vai 36cm, Tay 54cm, Ngực 49*2cm.</span></li>
	<li>
		<span>Phù hợp với bạn dưới 55kg (tùy chiều cao).</span></li>
</ul>', CAST(0xA3C00000 AS SmallDateTime), CAST(139000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (10, N'Áo sơ mi nữ viền màu nổi bật', 20, N'7260-1247615271771020142476618257260-12476.jpg', 10, N'<ul>
	<li>
		<span>Áo sơ mi viền màu nữ tính, kiểu dáng sát cánh trẻ trung, phối màu nền nã cho bạn gái tôn thêm sự duyên dáng.&nbsp;</span></li>
	<li>
		<span>Sự phối màu nhẹ nhàng, lạ mắt, tạo phong cách trẻ trung của cô nàng hiện đại.</span></li>
	<li>
		<span>Sự sang trọng, tao nhã của chiếc áo giúp bạn gái dễ dàng mix với chân váy, quần jean, quần short ... &nbsp;</span></li>
	<li>
		<span>Chất liệu: Cát thái mềm mịn</span></li>
	<li>
		<span>Kích thước: Dài 67cm, Vai 37cm, Tay 55cm, Ngực 47*2m </span></li>
	<li>
		<span>Sai số 1-2cm </span></li>
	<li>
		<span>Phù hợp với bạn dưới 52kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(135000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (11, N'Áo sơ mi nữ kẻ ô thời trang', 20, N'7112-12398141052310201420565372377112-12398.jpg', 10, N'<ul>
	<li>
		<span>Kiểu áo đơn giản với họa tiết caro viền màu nhã nhặn, tay áo lửng; thiết kế đầy nữ tính với tông màu trắng giúp bạn dễ phối đồ.</span></li>
	<li>
		<span>Form áo rộng vạt bầu, dễ dàng mix cùng short mang đến nét cá tính và năng động ở bạn.</span></li>
	<li>
		<span>Bạn có thể phối cùng áo quây, tanktop tạo phong cách thời trang của riêng mình.</span></li>
	<li>
		<span>Chất liệu: Vải Thái cao cấp, mỏng, mềm mịn.</span></li>
	<li>
		<span>Kích thước: Dài 61cm</span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
	<li>
		<span>Phù hợp với bạn dưới 55kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C40000 AS SmallDateTime), CAST(175000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (12, N'Áo phông nữ form dài phối màu cá tính', 20, N'5838-111879482188201416667880155838-11187.jpg', 11, N'<ul>
	<li>
		<span>Thiết kế với gout thời trang đơn&nbsp;</span><span>giản nhưng sành điệu.&nbsp;</span></li>
	<li>
		<span><span>Kiểu dáng thời trang giúp bạn khẳng định cá tính và phong cách.</span></span></li>
	<li>
		<span><span>Bạn có thể phối cùng short hay quần âu tùy sở thích, giúp bạn gái khoe đôi chân dài thon thả.&nbsp;</span></span></li>
	<li>
		<span>Chất liệu thun Hàn Quốc cao cấp.</span></li>
	<li>
		<span><span>Kích thước: Dài 67cm, Ngực 47*2cm</span></span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(125000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (13, N'Áo len họa tiết trái tim nhí', 20, N'7290-12539115726910201419954344487290-12539.jpg', 11, N'<ul>
	<li>
		<span>Thiết kế form dáng suông hiện đại, dễ mặc, không kén dáng.</span></li>
	<li>
		<span>Màu sắc trẻ trung với họa tiết thêu trái tim nhí xinh xắn trên áo giúp bạn gái trở nên duyên dáng, dịu dàng hơn.</span></li>
	<li>
		<span>Dễ dàng kết hợp cùng jeans dài, chân váy ... và có thể mix cùng áo sơ mi bên trong tạo gu thời trang ấn tượng.</span></li>
	<li>
		<span>Chất liệu: Len mềm mại, tạo sự thoải mái cho người mặc.</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(189000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (14, N'Áo len khoét vai kẻ sọc màu', 20, N'7299-12582124111110201410022354427299-12582.jpg', 11, N'<ul>
	<li>
		<span>Kiểu dáng cổ tròn, tay lở khoét vai tinh tế &nbsp;tạo vẻ trẻ trung mang đến phong cách dịu dàng, năng động cho bạn gái trong những ngày giao mùa.</span></li>
	<li>
		<span>Form áo ôm vừa vặn, khéo léo khoe đường cong hình thể.</span></li>
	<li>
		<span>Dễ dàng kết hợp cùng short, jeans... để đi làm, đi chơi hay dạo phố.</span></li>
	<li>
		<span>Chất liệu: Len dệt kim cao cấp, mềm mại cho bạn thoải mái và ấm áp.</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(189000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (15, N'Áo len móc hình cú phá cách phối màu', 20, N'7288-1253711371691020142040343727288-12537.jpg', 11, N'<ul>
	<li>
		<span>Áo len dệt hình cú, thiết kế form dáng suông hiện đại, dễ mặc không kén dáng.</span></li>
	<li>
		<span>Dễ dàng phối cùng quần jeans dài/ kaki/ short... hoặc có thể mix cùng áo sơ mi bên trong tạo gu thời trang ấn tượng.</span></li>
	<li>
		<span>Màu sắc trẻ trung với hình cú ngộ nghĩnh móc trên áo.</span></li>
	<li>
		<span>Chất liệu: Len mềm mại, tạo sự thoái mái tối đa cho người mặc.</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(199000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (16, N'Áo thun nữ Meou viền màu cá tính', 20, N'7267-12497105431810201413525118477267-12497.jpg', 11, N'<ul>
	<li>
		<span>Form áo rộng khỏe khoắn tạo nét năng động, tinh nghịch cho bạn gái.</span></li>
	<li>
		<span>Áo được thiết kế đơn giản với cổ tròn, tay ngắn viền màu, thân áo in hình mèo và chữ nổi bật tạo nên nét tinh nghịch ở bạn nữ.</span></li>
	<li>
		<span>Dễ dàng kết hợp cùng jeans, kaki, short, ... khi dạo phố.</span></li>
	<li>
		<span>Chất liệu: thun cotton mịn, đẹp, thoáng mát tạo cảm giác thoải mái cho người mặc. </span></li>
	<li>
		<span>Freesize, phù hợp với bạn dưới 52kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(99000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (18, N'Áo len nữ Zara sọc ngang thời trang', 20, N'7124-12370144012210201415943650067124-12370.jpg', 11, N'<ul>
	<li>
		<span>Kiểu áo len đơn giản nhưng không bao giờ lỗi mốt giúp bạn nữ thêm phần thời trang khi phối cùng phụ kiện và các trang phục khác.</span></li>
	<li>
		<span>Màu sắc phối hài hòa cùng họa tiết sọc ngang.</span></li>
	<li>
		<span>Thích hợp mix cùng short/ jeans dài/ chân váy cạp cao</span></li>
	<li>
		<span>Chất liệu: Len thun Thái cao cấp.</span></li>
	<li>
		<span>Kích thước: Dài 51cm, Tay 38cm</span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
	<li>
		<span>Phù hợp với bạn dưới 53kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(209000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (20, N'Áo nữ kiểu Thái thời trang', 19, N'7017-12512154827810201418004532177017-12512.jpg', 11, N'<ul>
	<li>
		<span>Kiểu áo tay dài, họa tiết gợn sóng cùng màu sắc ấn tượng.</span></li>
	<li>
		<span>Form áo dễ dàng mix cùng các kiểu quần jeans dài/ short/ chân váy mang đến phong cách thời trang riêng ở bạn.</span></li>
	<li>
		<span>Chất liệu: Thun len Thái cao cấp</span></li>
	<li>
		<span>Freesize, phù hợp với bạn dưới 53kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(175000 AS Decimal(18, 0)), 1)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (21, N'Áo hoodie nữ Thái Lan năng động', 20, N'7134-12426113918610201420836319247134-12426.jpg', 11, N'<ul>
	<li>
		<span>Kiểu áo hoodie với form áo rộng cánh dơi in họa tiết chữ trên nền màu nổi bật.</span></li>
	<li>
		<span>Dễ dàng mix cùng các kiểu short thêm vẻ năng động, cá tính ở bạn.</span></li>
	<li>
		<span>Chất liệu: Thun Thái cao cấp, mềm mịn.</span></li>
	<li>
		<span>Kích thước: Dài áo 67cm</span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
	<li>
		<span>Phù hợp với bạn dưới 53kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(145000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (22, N'Áo croptop ren hoa tay dài', 16, N'7026-123141339329920146825254447026-12314.jpg', 11, N'<ul>
	<li>
		<span>Áo croptop ren hoa cho bạn gái tự tin khoe vẻ trẻ trung sành điệu</span></li>
	<li>
		<span>Thiết kế trang nhã, nữ tính.</span></li>
	<li>
		<span>Đường nét tinh xảo, điểm nhấn dễ thương.</span></li>
	<li>
		<span>Chất liệu: Ren thun, co giãn tốt, mềm mịn.</span></li>
	<li>
		<span>Kích thước: Dài 28cm, Ngực 41*2cm, Tay 54cm</span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(135000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (23, N'Áo thun nữ Thái Lan thời trang', 19, N'6516-1198910572012920144973306636516-11989.jpg', 11, N'<ul>
	<li>
		<span>Thiết kế đơn giản với form áo hơi rộng, thân áo kết cườm với họa tiết in gam màu đen trắng nổi bật cho bạn diện mạo thời trang đầy khỏe khoắn và cá tính.</span></li>
	<li>
		<span>Form áo tương đối rộng dễ kết hợp với quần âu/ jeans dài/ short ...</span></li>
	<li>
		<span>Chất liệu: Thun Thái cao cấp.</span></li>
	<li>
		<span>Freesize, phù hợp với bạn dưới 53kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(149000 AS Decimal(18, 0)), 1)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (24, N'Áo khoác cặp thời trang phối màu', 20, N'3063127481662014223096409.jpg', 12, N'<ul>
	<li>
		<p>
			<span><span><strong>Áo khoác cặp</strong> giúp cho người bạn yêu thương, gần gũi nhau hơn mỗi khi mặc <em><strong>Áo Khoác Căp Tình Nhân</strong></em> người ấy sẽ cảm thấy như đang có bạn bên cạnh.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Kiểu dáng áo tay dài, có nón và 2 túi, khóa kéo chắc chắn thể hiện phong cách<strong> năng động, trẻ trung.</strong></span></span></p>
	</li>
</ul> <ul>
		<li>
			<p>
				<span><span>Chất liệu nỉ chống nắng, giữ ấm hiệu quả và thấm hút tốt mồ hôi.</span></span></p>
		</li>
		<li>
			<p>
				<span><span><strong>Freesize.&nbsp;</strong>Thích hợp bạn nam<strong>&nbsp;dưới 65kg</strong>&nbsp;+ nữ&nbsp;<strong>dưới 53kg.</strong></span></span></p>
		</li>
		<li>
			<p>
				<span><span><em><strong>Bộ sản phẩm gồm:</strong></em>&nbsp;<strong>1 áo nam + 1 áo nữ.</strong></span></span></p>
		</li>
	</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(285000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (25, N'Áo thun cặp sọc họa tiết ngôi sao', 20, N'6609-118091635559201416180430576609-11809.jpg', 12, N'<ul>
	<li>
		<span>Áo được thiết kế tay dài, cổ tròn cùng họa tiết ngôi sao được may với chất liệu da, tay và thân áo viền sọc độc đáo.</span></li>
	<li>
		<span><span>Mang vẻ năng động, trẻ trung mà còn giúp bạn cùng người ấy thể hiện được gu cá tính của riêng mình.</span></span></li>
	<li>
		<span><span>Áo thun cặp in họa tiết cá tính tạo ấn tượng đặc biệt khi hai bạn sánh bước bên nhau.</span></span></li>
	<li>
		<span><span>Chất liệu thun cotton thoáng mát, thấm hút mồ hôi tốt cho bạn thoải mái vận động.</span></span></li>
	<li>
		<span><span>Bộ sản phẩm gồm: 1 áo Nam + 1 áo Nữ.</span></span></li>
	<li>
		<span><span>Thích hợp nam &lt;65kg. Nữ &lt; 52kg.</span></span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(249000 AS Decimal(18, 0)), 1)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (26, N'Áo thun cặp tay dài in hoa văn thổ cẩm', 20, N'6786-120121633512920145727404106786-12012.jpg', 12, N'<ul>
	<li>
		<span>Áo được thiết kế tay dài, cổ tròn, tay và thân áo in hoa văn và phối màu độc đáo.</span></li>
	<li>
		<span><span>Mang vẻ năng động, trẻ trung mà còn giúp bạn cùng người ấy thể hiện được gu cá tính của riêng mình.</span></span></li>
	<li>
		<span><span>Áo thun cặp in hoa văn thổ cẩm tạo ấn tượng đặc biệt khi hai bạn sánh bước bên nhau.</span></span></li>
	<li>
		<span><span>Chất liệu thun cotton thoáng mát, thấm hút mồ hôi tốt cho bạn thoải mái vận động.</span></span></li>
	<li>
		<span><span>Bộ sản phẩm gồm: 1 áo Nam + 1 áo Nữ.</span></span></li>
	<li>
		<span><span>Thích hợp nam &lt;65kg. Nữ &lt; 52kg.</span></span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(219000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (27, N'Áo thun cặp Raglan AND cá tính ', 20, N'7094-12327104849309201421167478967094-12327.jpg', 12, N'<ul>
	<li>
		<span>Mang vẻ năng động, trẻ trung mà còn giúp bạn cùng người ấy thể hiện được gu cá tính của riêng mình.</span></li>
	<li>
		<span><span>Áo thun cặp in họa tiết và phối màu cá tính, tay dài.</span></span></li>
	<li>
		<span><span>Chất liệu thun thoáng mát, thấm hút mồ hôi tốt cho bạn thoải mái vận động.</span></span></li>
	<li>
		<span>Sản phẩm gồm áo nam + áo nữ</span></li>
	<li>
		<span>Thích hợp Nam &lt;65kg và Nữ &lt; 52kg.</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(239000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (28, N'Áo thun cặp Raglan HBA', 20, N'7221-1243313354161020144047916047221-12433.jpg', 12, N'<ul>
	<li>
		<span>Mang vẻ năng động, trẻ trung mà còn giúp bạn cùng người ấy thể hiện được gu cá tính của riêng mình.</span></li>
	<li>
		<span><span>Áo thun cặp in họa tiết cá tính, tay dài, thân áo phối màu đen trắng nổi bật cùng họa tiết chữ HBA cá tính in trên áo.</span></span></li>
	<li>
		<span><span>Chất liệu thun thoáng mát, thấm hút mồ hôi tốt cho bạn thoải mái vận động.</span></span></li>
	<li>
		<span>Sản phẩm gồm áo nam + áo nữ</span></li>
	<li>
		<span>Thích hợp Nam &lt;65kg và Nữ &lt; 52kg.</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(239000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (29, N'Set đồ đôi áo thun nam + váy nữ họa tiết cá tính', 20, N'7224-1243813588610201415392335147224-12438.jpg', 12, N'<ul>
	<li>
		<span>Thiết kế đơn giản với họa tiết cá tính, váy nữ dáng suông cho đôi bạn phong cách thời trang hiện đại.</span></li>
	<li>
		<span>Thích hợp để mặc khi đi chơi, tham gia các hoạt động ngoài trời.</span></li>
	<li>
		<span>Là món quà yêu thương cho bạn và người ấy.</span></li>
	<li>
		<span>Chất liệu: thun thoáng mát, dễ dàng thấm hút mồ hôi, mềm mại.</span></li>
	<li>
		<span><span>Kích thước: Nam: thích hợp với bạn dưới 65kg.</span></span></li>
	<li>
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Nữ:&nbsp;<span>Dài váy 83cm, phù hợp với bạn dưới 53kg</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(259000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (30, N'Áo thun cặp Pusple phối màu cá tính', 20, N'6896-1219711858239201411980369776896-12197.jpg', 12, N'<ul>
	<li>
		<span>Áo thun cặp Pusple&nbsp;thiết kế cổ tròn, tay ngắn, thân áo có in dòng chữ</span></li>
	<li>
		<span>Pusple, thân áo 2 màu giúp 2 bạn trở nên nổi bật hơn.</span></li>
	<li>
		<span>Kiểu dáng trẻ trung, năng động giúp đôi bạn nổi bật giữa đám đông.</span></li>
	<li>
		<span>Dễ dàng phối hợp với jeans, kaki hay short ... tạo nên nhiều phong cách.</span></li>
	<li>
		<span>Chất liệu cotton mịn, đẹp, co giãn tốt, thoáng mát, dễ thấm hút mồ hôi, dễ dàng cho việc giặt giũ. </span></li>
	<li>
		<span>Sản phẩm gồm: 1 áo nam + 1 áo nữ </span></li>
	<li>
		<span>Thích hợp với nam &lt;65kg và nữ &lt;52kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(219000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (31, N'Áo thun cặp Raglan Wolf cá tính', 19, N'6706-11933115401092014940048236706-11933.jpg', 12, N'<ul>
	<li>
		<span>Áo được thiết kế tay dài, cổ tròn cùng họa tiết phần thân áo độc đáo.</span></li>
	<li>
		<span><span>Mang vẻ năng động, trẻ trung mà còn giúp bạn cùng người ấy thể hiện được gu cá tính của riêng mình.</span></span></li>
	<li>
		<span><span>Áo thun cặp in chữ cá tính và phần vai in họa tiết ngôi sao tạo ấn tượng đặc biệt khi hai bạn sánh bước bên nhau.</span></span></li>
	<li>
		<span><span>Chất liệu thun cotton thoáng mát, thấm hút mồ hôi tốt cho bạn thoải mái vận động.</span></span></li>
	<li>
		<span><span>Bộ sản phẩm gồm: 1 áo Nam + 1 áo Nữ.</span></span></li>
	<li>
		<span><span>Thích hợp nam &lt;65kg. Nữ &lt; 52kg.</span></span></li>
</ul>', CAST(0xA3C40000 AS SmallDateTime), CAST(219000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (32, N'Áo thun cặp Raglan Pusple phối màu', 20, N'6634-118701324198920144458045786634-11870.jpg', 12, N'<ul>
	<li>
		<span>Mang vẻ năng động, trẻ trung mà còn giúp bạn cùng người ấy thể hiện được gu cá tính của riêng mình.</span></li>
	<li>
		<span><span>Áo thun cặp in họa tiết cá tính, tay dài, thân áo phối màu đen trắng nổi bật cùng họa tiết Pusple cá tính in trên áo.</span></span></li>
	<li>
		<span><span>Chất liệu thun thoáng mát, thấm hút mồ hôi tốt cho bạn thoải mái vận động.</span></span></li>
	<li>
		<span>Sản phẩm gồm áo nam + áo nữ</span></li>
	<li>
		<span>Thích hợp Nam &lt;65kg và Nữ &lt; 52kg.</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(239000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (33, N'Áo thun cặp phối sọc màu cá tính', 20, N'5829-11076117524820145192955595829-11076.jpg', 12, N'<ul>
	<li>
		<p>
			<span><span>Thiết kế tay ngắn, cổ tròn, áo nổi bật với họa tiết ngựa in trên áo cùng phần sọc màu phần tay tạo sự khác lạ.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Mang vẻ năng động, trẻ trung mà còn giúp bạn cùng người ấy thể hiện được gu cá tính của riêng mình.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Áo được may từ chất liệu thun cotton thoáng mát, thấm hút mồ hôi tốt cho bạn thoải mái vận động.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Bộ sản phẩm gồm: 1 Nam size L + 1 Nữ size M.<br>
			Thích hợp nam &lt;65kg. Nữ &lt; 52kg.</span></span></p>
	</li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(158000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (34, N'Áo Khoác Hàn Quốc Tay Nút', 20, N'1282-12303103712299201411792965941282-12303.jpg', 13, N'<ul>
	<li>
		<p>
			<span><span>Áo khoác Hàn Quốc tay đính nút kiểu dáng trẻ trung mang đến phong cách thời trang, cá tính và thanh lịch.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Kiểu dáng mới nhất cực Hot.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Giúp chống nắng bảo vệ làn da mái tóc hiệu quả.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Chất liệu thun Nỉ cao cấp dày vừa phải thấm hút mồ hôi tốt.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Thiết kế cực tinh tế khóa xéo phá cách và nổi bật.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Tay bo thun đính nút tinh tế.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Phần mũ áo rộng có thể giữ nếp tóc khỏi rối khi gặp gió.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Màu sắc cá tính, thời trang.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Kích thước: dài 60cm, ngang ngực 52cm, ngang vai 41cm, dài tay 57m, mũ 37cm.</span></span></p>
	</li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(139000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (35, N'Áo khoác EVA túi đính hạt Hàn Quốc', 20, N'1932-12270163047259201416474518591932-12270.jpg', 13, N'<ul>
	<li>
		<span><span>Áo có thiết kế trẻ trung, đẹp mắt với màu hồng nữ tính.</span></span></li>
	<li>
		<span><span>Áo thiết kế cổ cao, có nón, tay dày bo phối màu thời trang.</span></span></li>
	<li>
		<span><span>Thiết kế 2 túi phối nút 2 bên sành điệu.</span></span></li>
	<li>
		<span><span>Chất liệu nỉ mềm, thoáng mát mang đến sự thoải mái khi mặc.</span></span></li>
	<li>
		<span><span>Đem đến cho bạn gái phong cách thời trang trẻ trung, cá tính.</span></span></li>
	<li>
		<span><span>Freesize, phù hợp với bạn nữ dưới 50kg. </span></span></li>
	<li>
		<span><span>Kích thước: Dài 57cm, Vai 40cm, Tay 57cm.&nbsp;</span></span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(135000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (36, N'Áo khoác vest phối nẹp hồng', 20, N'26601262416620141779244128.jpg', 13, N'<ul>
	<li>
		<p>
			<span><span>Thiết kế màu <strong>đen </strong>truyền thống nhưng với form dáng và gấu tay và nẹp áo phối <strong>màu hồng</strong> trẻ trung</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Áo khoác <strong>vest Hàn Quốc</strong> cách điệu theo phong cách thời trang trẻ có thể mặc riêng với các kiểu quần âu, quần thô, chân váy hay váy liền.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Thiết kế dạng áo vest theo một phong cách trẻ trung quyến rũ với chất liệu <strong>tuyết mưa</strong> cho người mặc thêm phần duyên dáng.&nbsp;</span></span></p>
	</li>
	<li>
		<span><span><strong>Freesize. </strong>Thích hợp bạn gái dưới<strong> 55kg.</strong></span></span></li>
	<li>
		<span><span>Kích thước: dài 60cm, eo 74cm, ngực 82.</span></span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(185000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (37, N'Áo khoác nữ túi phối dây kéo thời trang', 20, N'5172-1067610322710720146991172965172-10676.jpg', 13, N'<ul>
	<li>
		<p>
			<span><span>Áo được thiết kế&nbsp;form dài, phá cách với túi áo dây kéo cá tính,&nbsp;chất liệu nỉ dày dặn.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Kiểu dáng cá tính, màu sắc nhã nhặn.</span></span></p>
	</li>
	<li>
		<span>Chất liệu: nỉ dày dặn, thoáng mát, tạo cảm giác thoải mái cho người mặc.</span></li>
	<li>
		<span>Màu sắc: Hồng - Nâu - Đỏ - Xanh dương - Xanh lá</span></li>
	<li>
		<span>Kích thước: Dài 62cm, Tay 58cm, Vai 40cm</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(139000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (38, N'Áo khoác nữ thiết kế túi rộng', 18, N'7329-12592947171310201411845826227329-12592.jpg', 13, N'<ul>
	<li>
		<p>
			<span><span>Thời trang cá tính cho bạn nữ vẻ năng động khỏe khoắn.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Thiết kế đơn giản với áo có nón tiện dụng, thiết kế cá tính với kiểu túi rộng phá cách, đường may tinh tế thể hiện phong cách trẻ trung, sành điệu.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Thích hợp dùng để chống nắng và giữ ấm vào buổi tối.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Chất liệu: thun nỉ, thấm hút mồ hôi, thoáng mát tạo cảm giác thoải mái cho người mặc.</span></span></p>
	</li>
	<li>
		<p>
			Kích thước: Dài 54cm.<br>
			Phù hợp với bạn dưới 54kg (tùy chiều cao)</p>
	</li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(159000 AS Decimal(18, 0)), 1)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (40, N'Áo khoác nữ in hình headphone', 20, N'7330-1259395321310201413417213327330-12593.jpg', 13, N'<ul>
	<li>
		<p>
			<span><span>Một kiểu trang phục không bao giờ lỗi mốt cho chị em phụ nữ ở mọi lứa tuổi.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Được may từ&nbsp;chất liệu nỉ dày dặn và thoáng mát.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Thiết kế form áo rộng, thân áo in hình headphone phá cách, khóa kéo xéo trẻ trung mang đến phong cách thời trang, cá tính.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Nón áo rộng giúp bảo vệ mái tóc, kiểu dáng&nbsp;năng động, trẻ trung&nbsp;và hợp thời trang.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Kích thước: Dài 61cm<br>
			Thích hợp bạn gái&nbsp;dưới 54kg.</span></span></p>
	</li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(159000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (41, N'Áo khoác blazer form dài phối nút thanh lịch', 20, N'7203-12394111535310201419013791627203-12394.jpg', 13, N'<ul>
	<li>
		<span>Thiết kế dạng vest thanh lịch, tôn vẻ đẹp hiện đại cùng phong cách sang trọng, quý phái của bạn gái.</span></li>
	<li>
		<span>Form dáng dài, cổ tròn, phối hai hàng nút cách điệu làm toát lên dáng thon hoàn hảo của bạn gái.</span></li>
	<li>
		<span>Dễ dàng mix cùng các bộ cánh công sở.</span></li>
	<li>
		<span>Chất liệu: Tuyết mưa dày dặn, thấm hút tốt, tạo form dáng đẹp, tinh tế tôn dáng thanh lịch của bạn nữ.</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(189000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (42, N'Áo khoác nữ giả vest 1 nút thời trang', 20, N'7121-12447152713610201420645668987121-12447.jpg', 13, N'<ul>
	<li>
		<span>Form áo dài rộng, thiết kế áo cài 1 nút và gút dây eo.&nbsp;</span></li>
	<li>
		<span>Kiểu áo đơn giản dễ dàng phối cùng các kiểu trang phục, trông bạn cá tính và phong cách hơn.</span></li>
	<li>
		<span>Chất liệu: Kaki Thái cao cấp, mềm mịn.</span></li>
	<li>
		<span>Kích thước: Dài 76cm, Vai 30cm, Tay 61cm, Ngực 58*2cm</span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
	<li>
		<span>Phù hợp với bạn dưới 55kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(249000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (44, N'Áo khoác blazer form dài thanh lịch', 20, N'7204-12393114543102014213111217204-12393.jpg', 13, N'<ul>
	<li>
		<span>Kiểu áo mang đến cho bạn diện mạo vô cùng trẻ trung, ấn tượng</span></li>
	<li>
		<span>Form dáng dài, cổ tròn, không nút khóa thể hiện sự sang trọng cùng nét phóng khoáng, hiện đại trong phong cách.</span></li>
	<li>
		<span>Dễ dàng mix cùng các bộ cánh công sở.</span></li>
	<li>
		<span>Chất liệu: Tuyết mưa dày dặn, thấm hút tốt, tạo form dáng đẹp, tinh tế tôn dáng thanh lịch của bạn nữ.</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(185000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (45, N'Áo sơ mi nữ chấm bi phối ren', 20, N'7166-1235411455411020144884856287166-12354.jpg', 10, N'<ul>
	<li>
		<span>Thiết kế đơn giản với cổ và tay ren, chấm bi; form áo đẹp tôn phong cách trẻ trung, thanh lịch nơi công sở.</span></li>
	<li>
		<span>Dễ dàng mix cùng các kiểu trang phục như quần âu/ jeans dài/ short/ chân váy cho bạn phong cách thời trang lạ mắt.</span></li>
	<li>
		<span>Chất liệu: Cát Thái.</span></li>
	<li>
		<span>Kích thước: Dài 64cm, Vai 37cm, Tay 54cm, Ngực 48*2cm, Eo 44*2cm</span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
	<li>
		<span>Phù hợp với bạn dưới 52kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(159000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (46, N'Áo sơ mi nữ viền màu', 20, N'7160-1234116444309201420062689057160-12341.jpg', 10, N'<ul>
	<li>
		<span>Form dáng chuẩn, kết hợp &nbsp;với đường viền phối màu mang lại sự khác biệt và độc đáo.</span></li>
	<li>
		<span>Chất liệu: Lụa loại 1 dày và mềm mại, thấm hút mồ hôi thoải mái vận động.</span></li>
	<li>
		<span>Kích thước: Dài 64cm, Vai 37cm, Tay 62cm, Ngực 51*2cm</span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
	<li>
		<span>Phù hợp với bạn dưới 53kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(165000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (47, N'Đầm đuôi cá phối ren lưng gợi cảm', 20, N'5038-9963114034196201421173091425038-9963.jpg', 14, N'<ul>
	<li>
		<span>Thiết kế đơn giản đầy nữ tính với kiểu dáng cổ tim hơi tròn, tay sát cánh, phối ren hoa phần lưng gợi cảm, bo thun eo, form váy dài và thiết kế kiểu đuôi cá tôn vóc dáng uyển chuyển.</span></li>
	<li>
		<span>Màu sắc nhã nhặn, thu hút mọi ánh nhìn.</span></li>
	<li>
		<span>Thích hợp diện dự tiệc, đi chơi cùng người thân và bạn bè.</span></li>
	<li>
		<span>Chất liệu: &nbsp;Voan phối ren, lớp lót dày dặn.</span></li>
	<li>
		<span>Kích thước: Dài 95cm, Ngực 90cm, Eo 65cm.</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(199000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (48, N'Đầm xòe dáng dài thắt nơ sang trọng', 20, N'30491274616620141603718823.jpg', 14, N'<ul>
	<li>
		<p>
			<span><span>Với<strong> form dáng xòe</strong> đầy nữ tính, giúp bạn gái không cần trau chuốt cầu kỳ mà vẫn có được vẻ ngoài, dịu dàng, cuốn hút.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Trang phục dành riêng cho các cô nàng sành điệu, linh hoạt trong việc thể hiện phong cách.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Đầm được may từ <strong>chất liệu siêu tuyết</strong>&nbsp;mềm mại và cực kỳ êm ái, luôn mang đến cảm giác thoải mái cho người mặc.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Có 2 màu cho bạn chọn: <strong>Đỏ và Trắng.<br>
			<span>Lưu ý: sản phẩm không kèm thắt lưng.</span></strong></span></span></p>
	</li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(255000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (50, N'Đầm body cổ V gợi cảm', 20, N'7327-1258992219131020142568744927327-12589.jpg', 14, N'<ul>
	<li>
		<span>Form body, sát nách, nổi bật với thiết kế cách điệu ở cổ cùng điểm nhúng thun 2 bên hông váy.</span></li>
	<li>
		<span>Trang phục mang đến vẻ quyến rũ, gợi cảm cùng gu thời trang sành điệu, đầy phong cách.</span></li>
	<li>
		<span>Thích hợp diện dự tiệc.</span></li>
	<li>
		<span>Chất liệu: Thun nhung mềm mại, co giãn tốt, thoải mái khi di chuyển.</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(189000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (52, N'Đầm thun phối màu cá tính', 20, N'7269-124991170810201415651672047269-12499.jpg', 14, N'<ul>
	<li>
		<span>Thiết kế đơn giản nhưng không kém phần cá tính với tay dài, đầm phối màu.</span></li>
	<li>
		<span>Kiểu dáng body gợi cảm, dễ dàng phối cùng phụ kiện và các trang phục khác.</span></li>
	<li>
		<span>Thích hợp diện đi làm, đi chơi, dự tiệc.</span></li>
	<li>
		<span>Chất liệu: Thun gân, co giãn tốt.</span></li>
	<li>
		<span>Kích thước: Dài 82cm</span></li>
	<li>
		<span>Freesize, phù hợp với bạn dưới 53kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(165000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (53, N'Đầm xòe họa tiết sao khoét vai', 20, N'7314-12567133614101020143327779747314-12567.jpg', 14, N'<ul>
	<li>
		<span>Kiểu váy đơn giản với dáng váy xòe may xếp tầng viền bèo nhún, chiếc váy tạo điểm nhấn với phần vai khoét gợi cảm khoe đôi vai thon gọn.</span></li>
	<li>
		<span>Thích hợp diện đi chơi.</span></li>
	<li>
		<span>Chất liệu: Voan</span></li>
	<li>
		<span>Kích thước: Dài 91cm, Ngực 45*2cm</span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
	<li>
		<span>Phù hợp với bạn dưới 54kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(175000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (54, N'Đầm xòe họa tiết caro thời trang', 20, N'7315-12569134827101020141863043617315-12569.jpg', 14, N'<ul>
	<li>
		<span>Form váy xòe đơn giản với họa tiết caro cùng màu sắc nhã nhặn tôn vóc dáng cũng như làn da của bạn nữ.</span></li>
	<li>
		<span>Thích hợp diện đi làm, dự tiệc, đi chơi.</span></li>
	<li>
		<span>Chất liệu: Kim cương co giãn</span></li>
	<li>
		<span>Kích thước: Dài 84cm, Ngực 50*2cm, Eo 37*2cm</span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
	<li>
		<span>Phù hợp với bạn dưới 53kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(209000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (55, N'Đầm thun nữ cổ tim gợi cảm', 19, N'7268-124981115981020144352886537268-12498.jpg', 14, N'<ul>
	<li>
		<span>Thiết kế đầm body giúp tôn vóc dáng khỏe khoắn ở bạn nữ; cổ tim đầy gợi cảm.</span></li>
	<li>
		<span>Kiểu dáng đơn giản dễ mặc, dễ phối phụ kiện.</span></li>
	<li>
		<span>Thích hợp diện đi chơi, dự tiệc, đi làm.</span></li>
	<li>
		<span>Chất liệu: Thun gân, co giãn tốt.</span></li>
	<li>
		<span>Kích thước: Dài 81cm</span></li>
	<li>
		<span>Freesize, phù hợp với bạn dưới 53kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(165000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (56, N'Đầm tay lỡ phối nút thanh lịch', 20, N'7297-12549163326910201410800547647297-12549.jpg', 14, N'<ul>
	<li>
		<span>Thiết kế theo form dáng chuẩn, kiểu dáng thời trang tay lở, phối nút thanh lịch.</span></li>
	<li>
		<span>Đầm tay lở phối nút giúp tôn dáng của phái nữ, thích hợp khi đến công sở, dự tiệc...</span></li>
	<li>
		<span>Màu sắc được phối đẹp mắt, sang trọng thể hiện gu thẩm mỹ cao cấp của bạn nữ.</span></li>
	<li>
		<span>Chất liệu: Bố len, mềm mịn tạo sự dễ chịu cho người mặc. </span></li>
	<li>
		<span>Không kèm thắt lưng</span></li>
</ul>', CAST(0xA3C40000 AS SmallDateTime), CAST(225000 AS Decimal(18, 0)), 1)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (57, N'Đầm xòe phối nơ điệu đà', 20, N'7236-124481542396102014509396187236-12448.jpg', 14, N'<ul>
	<li>
		<span>Thiết kế nữ tính với điểm nhấn viền màu, tôn vẻ đẹp trẻ trung thanh lịch cho bạn gái.</span></li>
	<li>
		<span>Kiểu cổ tròn, tay lở, viền màu, form xòe duyên dáng với nơ eo tinh tế tạo sự nổi bật và phá cách cho chiếc đầm.</span></li>
	<li>
		<span>Kết hợp cùng túi xách, giày cao gót giúp bạn gái thêm tự tin khi đi làm, dự tiệc hay xuống phố.</span></li>
	<li>
		<span>Chất liệu: Thun dày dặn, co giãn tốt, bền đẹp, tạo form dáng đẹp cho chiếc đầm và sự thoải mái cho người mặc. </span></li>
	<li>
		<span>Kích thước: Dài 91cm, Ngực 45*2cm, Eo 32*2cm </span></li>
	<li>
		<span>Kèm dây thắt nơ</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(215000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (58, N'Đầm vintage thời trang thanh lịch', 20, N'6996-1235612220110201420367276016996-12356.jpg', 14, N'<ul>
	<li>
		<span>Thiết kế form váy xòe, đơn giản theo phong cách Vintage, eo thun, họa tiết và màu sắc phối hài hòa.</span></li>
	<li>
		<span>Thích hợp diện đi chơi, đi làm</span></li>
	<li>
		<span>Chất liệu: Voan kèm lớp thun bên trong, giúp bạn nữ thoải mái và tự tin hơn.</span></li>
	<li>
		Kích thước: Dài 89cm, Vai 34cm, Ngực 52*2cm </li>
	<li>
		Sai số 1-2cm </li>
	<li>
		Phù hợp với bạn dưới 55kg (tùy chiều cao)</li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(315000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (59, N'Quần legging họa văn thổ cẩm', 20, N'6735-1210214301316920144971587406735-12102.jpg', 15, N'<ul>
	<li>
		<span>Họa tiết thổ cẩm mới lạ, độc đáo đem lại sự trẻ trung, thời trang cho bạn nữ</span></li>
	<li>
		<span>Thiết kế ôm sát tạo sự gợi cảm, cuốn hút, dễ dàng phối hợp cùng các trang phục khác</span></li>
	<li>
		<span>Chất liệu thun tốt, có độ co dãn đem lại cảm giác thoải mái, dễ chịu cho người dện</span></li>
	<li>
		<span>Có 2 mẫu, mỗi mẫu có 2 size: M,L</span><br>
		&nbsp;</li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(215000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (60, N'Quần tregging nữ Thái Lan thời trang', 20, N'6776-12055105623159201413264436156776-12055.jpg', 15, N'<ul>
	<li>
		<span>Kiểu dáng ôm sát giúp phái đẹp tự tin khoe chân thon.</span></li>
	<li>
		<span>Dễ dàng mix cùng các kiểu áo thời trang khác giúp bạn trở nên cá tính và nổi bật.</span></li>
	<li>
		<span>Chất liệu: Vải thun co giãn.</span></li>
	<li>
		<span>Kích thước: Dài 104cm, Eo 38*2cm, Mông 43*2cm. </span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
	<li>
		<span>Phù hợp với bạn dưới 53kg (tùy chiều cao).</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(165000 AS Decimal(18, 0)), 1)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (61, N'Quần jeans nữ Classic thời trang', 20, N'6218-1152316843258201414028150436218-11523.jpg', 15, N'<ul>
	<li>
		<span>Quần jean kiểu dáng đơn giản, phá cách với chi tiết lưng độc đáo tạo điểm nhấn.</span></li>
	<li>
		<span>Độ co giãn vừa phải, chất vải Jeans mềm mại, thoáng mát, hú ẩm tốt cho bạn thoải mái vận động.</span></li>
	<li>
		<span>Thích hợp với những buổi đi chơi cùng bạn bè.</span></li>
	<li>
		<span>Size: 26 - 27 - 28 - 29 - 30</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(187000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (62, N'Quần legging kaki lửng thời trang', 20, N'6052-1140212534118820142637147516052-11402.jpg', 15, N'<ul>
	<li>
		<span>Thiết kế form ôm chân thon, kiểu dáng năng động, khỏe khoắn hợp thời trang.</span></li>
	<li>
		<span>Dễ dàng mix cùng các kiểu áo form dài cho bạn gái trở nên sành điệu và cá tính.</span></li>
	<li>
		<span>Chất liệu: Kaki thun co giãn.</span></li>
	<li>
		<span>Kích thước: Dài 77cm, Eo 32*2cm, Mông 41*2cm.</span></li>
	<li>
		<span>Phù hợp với bạn dưới 54kg (tùy chiều cao).</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(173000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (63, N'Quần tregging dài thời trang', 20, N'6053-11401125224188201417972421686053-11401.jpg', 15, N'<ul>
	<li>
		<span>Thiết kế form dài ôm chân thon, kiểu dáng năng động, khỏe khoắn hợp thời trang.</span></li>
	<li>
		<span>Dễ dàng mix cùng các kiểu áo form dài cho bạn gái trở nên sành điệu và cá tính.</span></li>
	<li>
		<span>Chất liệu: Denim thun co giãn.</span></li>
	<li>
		<span>Kích thước: Dài 92cm, Eo 34*2cm, Mông 38*2cm.</span></li>
	<li>
		<span>Phù hợp với bạn dưới 54kg (tùy chiều cao).</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(165000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (64, N'Quần tregging jeans CNC thời trang', 20, N'6051-1140012491118820144534059146051-11400.jpg', 15, N'<ul>
	<li>
		<span>Kiểu dáng ôm sát giúp phái đẹp tự tin khoe chân thon.</span></li>
	<li>
		<span>Dễ dàng mix cùng các kiểu áo thời trang khác giúp bạn trở nên cá tính và nổi bật.</span></li>
	<li>
		<span>Chất liệu: Denim thun co giãn</span></li>
	<li>
		<span>Kích thước: Dài 90cm, Eo 35*2cm, Mông 36*2cm.</span></li>
	<li>
		<span>Phù hợp với bạn dưới 53kg (tùy chiều cao).</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(185000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (65, N'Quần thun nữ phối họa tiết beo', 20, N'5768-11000151934297201420507909595768-11000.jpg', 15, N'<ul>
	<li>
		<span>Thiết kế đơn giản với quần lửng, ống bo mang lại dáng vẻ khỏe khoắn, năng động cho người mặc, tạo cảm giác thoải mái khi vận động.</span></li>
	<li>
		<span>Có thể mặc ở nhà, tập thể thao. Dễ dàng kết hợp với áo thun ba lỗ mang lại vẻ năng động cho người mặc.</span></li>
	<li>
		<span>Chất liệu: Thun nỉ da cá.</span></li>
	<li>
		<span>Phù hợp với bạn dưới 55kg (tùy chiều cao).</span></li>
	<li>
		<span>Kích thước: Dài 78cm, Eo 32*2cm, Mông 42*2cm</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(108000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (66, N'Quần baggy Thái Lan sọc dọc', 20, N'5151-10560113030772014641609525151-10560.jpg', 15, N'<ul>
	<li>
		<span>Thiết kế tinh tế cho phái đẹp một phong cách hoàn toàn mới.</span></li>
	<li>
		<span>Với điểm nhấn viền nhún eo kèm dây rút, mang đến cho bạn gái một sự mới mẻ,&nbsp;độc đáo, nhưng không kém phần sang trọng.</span></li>
	<li>
		<span>Chất liệu: mát mẻ, thoải mái khi mặc.</span></li>
	<li>
		<span>Freesize, phù hợp với bạn dưới 55kg (tùy chiều cao).</span></li>
	<li>
		<span>Kích thước: Dài 90cm, Eo 60cm, Mông 100cm.</span></li>
	<li>
		<span>Xuất xứ: Thái Lan</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(215000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (67, N'Thailand - Quần jean yếm cao cấp trẻ trung', 20, N'5191-102441015331720148338683345191-10244.jpg', 15, N'<ul>
	<li>
		<span>Quần yếm jeans, với kiểu dáng hiện đại, thiết kế đẹp mắt, mang đến cho bạn gái một phong cách mới lạ, trẻ trung.</span></li>
	<li>
		<span>Màu sắc tao nhã, phối cúc tinh tế, thiết kế túi đáng yêu, trông bạn sẽ thật sang trọng và đầy phong cách.</span></li>
	<li>
		<span>Form dáng cách điệu, giúp bạn dễ dàng tạo kiểu. Phù hợp với nhiều kiểu dáng.</span></li>
	<li>
		<span>Chất liệu jeans cao cấp, thể hiện phong cách đầy ấn tượng, tạo cảm giác thoải mái cho người mặc.</span></li>
	<li>
		<span>Dễ dàng phối với nhiều kiểu áo, tạo nên nhiều phong cách ấn tượng: sơ mi, t-shirt, tanktop ...&nbsp;</span></li>
	<li>
		<span>Size M phù hợp với bạn dưới 50kg.</span></li>
	<li>
		Size L<span>&nbsp;phù hợp với bạn dưới 55kg.</span></li>
	<li>
		<span>Xuất xứ: Hàng Thái Lan</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(269000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (68, N'Quần baggy yếm phong cách, trẻ trung', 20, N'44121213521662014287576451.jpg', 15, N'<ul>
	<li>
		<span>Dáng quần baggy thoải mái, lạ mắt, mang đến cho bạn một diện mạo mới thật thời trang và hiện đại.</span></li>
	<li>
		<span>Quần được thiết kế với những điểm nhấn là viền nhún, xếp li lạ mắt, mang đến cho bạn gái một sự mới mẻ,&nbsp;độc đáo, nhưng không kém phần sang trọng.</span></li>
	<li>
		<span>Với thiết kế đai yếm giúp bạn có thể thay đổi phong cách mỗi ngày. Thật mới mẻ và trẻ trung.</span></li>
	<li>
		<span>Chất liệu kaki mềm mịn, tạo cho bạn một cảm giác cực kì thoải mái khi mặc.</span></li>
	<li>
		<span>Màu sắc: Đen và Nâu bò.</span></li>
	<li>
		<span>Freesize. ( Phù hợp cho bạn gái dưới 53kg)</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(199000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (70, N'Quần jean nữ lưng cao NC túi phối màu - Xanh đậm', 20, N'37251210361662014485441195.jpg', 16, N'<ul>
	<li>
		<span>Quần Jean ôm dáng, tôn đường cong cho bạn gái vẻ trẻ trung, năng động và gợi cảm.</span></li>
	<li>
		<span>Quần co giãn ít, chất vải mềm mại, thoáng mát và hút ẩm tốt cho bạn thoải mái vận động.</span></li>
	<li>
		<span>Thiết kế đơn giản, phá cách 1 chút với túi khác màu khiến chiếc quần thêm nổi bật không kém phần lịch sự và thời trang. Dễ kết hợp với áo thun, sơ mi, ...</span></li>
	<li>
		<span>Thích hợp khi đi học, đi làm, đi chơi ...</span></li>
	<li>
		<strong><span>Có 5 size: 26 - 27 - 28 - 29 - 30</span></strong></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(194000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (71, N'Quần jean nữ lưng cao NC 2 màu cá tính - Xanh nhạt', 20, N'372012103516620141269509777.jpg', 16, N'<ul>
	<li>
		<span>Thiết kế đơn giản với form quần lưng cao, quần phối màu cá tính.</span></li>
	<li>
		<span>Quần độ co giãn ít, mềm mại, thoáng mát và hút ẩm tốt cho bạn thoải mái khi vận động.</span></li>
	<li>
		<span>Quần jean ôm dáng, tôn đường cong cho bạn gái vẻ trẻ trung, năng động.</span></li>
	<li>
		<span>Thích hợp đi học, đi làm, đi chơi cùng bạn bè ..</span></li>
	<li>
		<strong><span>Có 5 size: 26 - 27 - 28 - 29 -30</span></strong></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(259000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (73, N'Quần short jeans nữ rách gấu', 20, N'4458121441662014522469774.jpg', 16, N'<ul>
	<li>
		<span>Quần short jeans nữ rách gấu, với phong cách mới, thật tươi trẻ và lạ mắt, &nbsp;phái đẹp sẽ trở nên năng động, style hơn.</span></li>
	<li>
		<span>Thiết kế tinh tế, rách gấu lạ mắt, trẻ trung, cho bạn gái một phong cách hoàn toàn mới.</span></li>
	<li>
		<span>Chất liệu jeans mềm, thoáng mát, tạo cảm giác thoải mái cho người mặc.</span></li>
	<li>
		<span>Thật dễ dàng để bạn có thể phối với áo sơ mi, áo thun, áo ba lỗ ...</span></li>
	<li>
		<span>Màu như hình.</span></li>
	<li>
		<span>Size: 27, 28, 29, 30</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(112000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (74, N'Quần yếm jeans nữ cá tính', 20, N'4940-997313474819620145992180294940-9973.jpg', 16, N'<ul>
	<li>
		<span>Dáng quần baggy thoải mái, lạ mắt, mang đến cho bạn một diện mạo mới thật thời trang và hiện đại.</span></li>
	<li>
		<span>Quần được thiết kế với những điểm nhấn với phần yếm có thể tách rời để bạn có thể mặc được nhiều kiểu, mang đến cho bạn gái một sự mới mẻ,&nbsp;độc đáo.</span></li>
	<li>
		<span>Với thiết kế đai yếm giúp bạn có thể thay đổi phong cách mỗi ngày. Thật mới mẻ và trẻ trung.</span></li>
	<li>
		<span>Chất liệu jeans mềm mịn, tạo cho bạn một cảm giác cực kì thoải mái khi mặc.</span></li>
	<li>
		Size M tương ứng size 27. </li>
	<li>
		Size L tương ứng size 29.</li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(275000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (75, N'Quần short nữ phối rách cá tính', 20, N'4959-9976141619196201416218252884959-9976.jpg', 16, N'<ul>
	<li>
		<span>Quần short nữ thiết kế form dáng trẻ trung, cho bạn nữ phong cách tự tin, thoải mái khi mặc.</span></li>
	<li>
		<span>Thiết kế kiểu cách với những đường phối rách tại gấu và lưng quần, tạo điểm nhấn ấn tượng, cùng màu sắc nền nã, cho bạn dễ phối các kiểu áo.</span></li>
	<li>
		<span>Dễ dàng khoe đôi chân thon dài, phù hợp cho bạn mặc đi chơi, gặp gỡ bạn bè ...</span></li>
	<li>
		<span>Chất liệu jeans nhung mềm mại, tạo cảm giác thoải mái cho người mặc.</span></li>
	<li>
		<span>Thật dễ dàng cho bạn mix cùng nhiều kiểu áo khác nhau: áo sơ mi, áo thun, áo ba lỗ ...</span></li>
	<li>
		<span>Màu sắc: màu Vàng chanh, màu Đỏ đô.</span></li>
	<li>
		<span>Size:26, 27</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(145000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (77, N'Quần short jeans nữ năng động', 20, N'5093-1017493912276201411159205555093-10174.jpg', 16, N'<ul>
	<li>
		<span>Thiết kế lưng thun sau cùng dáng quần rộng phù hợp với mọi vóc dáng.</span></li>
	<li>
		<span>Kiểu dáng năng động cùng chất liệu jeans mềm mại co giãn cho bạn thoải mái vận động.</span></li>
	<li>
		<span>Dễ dàng phối cùng các kiểu áo như: sơ mi, t-shirt, tanktop, v.v.v...</span></li>
	<li>
		<span>Freesize, phù hợp với bạn nữ dưới 55kg.</span></li>
	<li>
		<span>Kích thước: Dài 40cm, Eo 70 - 80cm.</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(135000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (78, N'Quần short Jean bụi Thái Lan cao cấp', 19, N'5149-10494142394720141717499515149-10494.jpg', 16, N'<ul>
	<li>
		<span>Kiểu dáng mới lạ với phần túi xẻ xéo, form dáng quần trẻ trung, phong cách tươi trẻ và lạ mắt.</span></li>
	<li>
		<span>Dễ dàng phối cùng các kiểu áo như: sơ mi, t-shirt, croptop v.v..</span></li>
	<li>
		<span>Chất liệu: Jeans dày dặn, thoáng mát, tạo cảm giác thoải mái cho người mặc.</span></li>
	<li>
		<span>Size M, phù hợp với bạn dưới 50kg.</span></li>
	<li>
		<span>Size L, phù hợp với bạn dưới 55kg.</span></li>
	<li>
		<span>&nbsp;</span><span>Xuất xứ: Hàng Thái Lan.</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(249000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (79, N'Quần short Jean bụi Thái Lan cao cấp', 20, N'5148-1045816304937201411798589895148-10458.jpg', 16, N'<ul>
	<li>
		<span>Quần short jeans tạo điểm nhấn với phần túi sau in hình cá tính, phong cách mới, tươi trẻ và lạ mắt, &nbsp;phái đẹp sẽ trở nên năng động, style hơn.</span></li>
	<li>
		<span>Thiết kế tinh tế, trẻ trung, cho bạn gái một phong cách hoàn toàn mới.</span></li>
	<li>
		<span>Chất liệu jeans mềm, thoáng mát, tạo cảm giác thoải mái cho người mặc.</span></li>
	<li>
		<span>Bạn có thể phối với áo sơ mi, áo thun, áo ba lỗ ...</span></li>
	<li>
		Size M, phù hợp với bạn dưới 50kg.</li>
	<li>
		Size L, phù hợp với bạn dưới 55kg.</li>
	<li>
		<span>Xuất xứ: Thái Lan</span></li>
</ul>', CAST(0xA3C40000 AS SmallDateTime), CAST(249000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (80, N'Quần short jean Thái Lan cao cấp', 20, N'5147-104861059164720147457663705147-10486.jpg', 16, N'<ul>
	<li>
		<span>Quần short jeans với phong cách mới, tươi trẻ và lạ mắt, &nbsp;phái đẹp sẽ trở nên năng động, style hơn.</span></li>
	<li>
		<span>Thiết kế tinh tế, trẻ trung, cho bạn gái một phong cách hoàn toàn mới.</span></li>
	<li>
		<span>Chất liệu: Jeans dày dặn, thoáng mát, thoải mái khi mặc.</span></li>
	<li>
		<span>Size M, phù hợp với bạn dưới 50kg. </span></li>
	<li>
		<span>Size L, phù hợp với bạn dưới 55kg.</span></li>
	<li>
		<span>Xuất xứ: Thái Lan</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(249000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (81, N'Quần jeans nữ rách gối phá cách', 20, N'6663-11972838012920145560584826663-11972.jpg', 16, N'<ul>
	<li>
		<span>Kiểu dáng đơn giản nhưng vẫn đủ cá tính và sexy với đường rách gối.</span></li>
	<li>
		<span>Dễ dàng mix cùng các kiểu áo: sơ mi, t-shirt, tanktop...</span></li>
	<li>
		<span>Thích hợp với những buổi đi chơi cùng bạn bè. </span></li>
	<li>
		<span>Chất liệu: Jeans thun, co giãn tốt, thấm hút mồ hôi tốt, tạo cảm giác thoải mái khi vận động.</span></li>
	<li>
		<span>Size: 26 - 27 - 28 - 29 - 30</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(175000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (82, N'Quần thun thể thao dành cho nữ', 20, N'416812124516620141799894369.jpg', 17, N'<ul>
	<li>
		<span>Quần thun dài thể thao cho nữ với thiết kế đơn giản, mang đến vẻ trẻ trung, khỏe khoắn và năng động cho bạn gái.</span></li>
	<li>
		<span>Chất liệu vải thun cotton thoáng mát, thấm hút mồ hôi tốt, dễ dàng giặt giũ.</span></li>
	<li>
		<span>Thiết kế lưng thun, cho bạn dễ dàng điều chỉnh độ chật rộng của quần, tạo cảm giác thoải mái khi mặc.</span></li>
	<li>
		<span>Hai bên hông quần có hai túi nhỏ tiện dụng.</span></li>
	<li>
		<span>Thích hợp mặc ở nhà hay đi tập thể thao.</span></li>
	<li>
		<span>Màu Sắc: Đen, Xám</span></li>
	<li>
		<span>Size: Freesize</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(125000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (83, N'Quần short nữ giả váy', 20, N'7065-123201653929920141396811637065-12320.jpg', 17, N'<ul>
	<li>
		<span>Quần giả váy với kiểu dáng độc đáo, sành điệu, nhưng không kém phần dịu dàng và duyên dáng.</span></li>
	<li>
		<span>Thiết kế short phối bèo tạo độ xòe giả chân váy tinh tế với dây kéo bên hông sành điệu, cho bạn gái một phong cách cực kì đáng yêu và duyên dáng.</span></li>
	<li>
		<span>Short giả chân váy, tạo một phong cách sang trọng cho bạn gái.&nbsp;</span></li>
	<li>
		<span>Chất liệu: Vải thoáng mát, hút ẩm tốt, co giãn ít, chất vải mịn màng, cho bạn cảm giác thoải mái và tự tin khi mặc.</span></li>
	<li>
		<span>Thật dễ dàng cho bạn gái phối cùng nhiều kiểu áo khác nhau.</span></li>
	<li>
		<span>Size S: Dài 36cm, Eo 68cm</span></li>
	<li>
		<span>Size M: Dài 37cm, Eo 72cm</span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(119000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (84, N'Set quần giả váy + áo lưới Thái Lan thời trang', 20, N'6502-121251538431792014145478146502-12125.jpg', 17, N'<ul>
	<li>
		<span>Kiểu quần short kết hợp áo phông ren hoa mang đến vẻ ngoài năng động nhưng không kém phần điệu đà với chi tiết hoa liti trên sản phẩm.</span></li>
	<li>
		<span>Set đồ thích hợp diện đi chơi, dạo phố</span></li>
	<li>
		<span>Set đồ cá tính thích hợp với bạn gái năng động và dễ dàng mix cùng phụ kiện.</span></li>
	<li>
		<span>Chất liệu: Áo ren hoa dày dặn.</span></li>
	<li>
		<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Quần Silk lụa mềm mại.</span></li>
	<li>
		<span>Kích thước: Áo: Dài 61cm, Ngực 52*2cm</span></li>
	<li>
		<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Quần: Dài 37cm, Eo lưng thun&nbsp;</span></li>
	<li>
		<span>Sai số 1-2cm.</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(329000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (85, N'Quần short nữ thời trang', 20, N'6397-1163910314429820146414742616397-11639.jpg', 17, N'<ul>
	<li>
		<span>Form dáng lưng cao đẹp mắt, cùng khóa kéo bên hông tinh tế tạo điểm nhấn nổi bật cho gu thời trang phái đẹp. </span></li>
	<li>
		<span>Quần short lưng cao, sự lựa chọn tinh tế cho những cô nàng sành điệu.</span></li>
	<li>
		<span>Chất liệu: Cát len cao cấp</span></li>
	<li>
		<span>Kích thước: Dài 36cm, Eo 64 - 68cm, Mông 88 - 92cm, Rộng ống 29cm (sai số 1-2cm)</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(108000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (86, N'Quần short ren thời trang', 20, N'6352-11591155512278201410420577456352-11591.jpg', 17, N'<ul>
	<li>
		<span>Thiết kế kiểu short năng động, kín đáo không kém phần nữ tính với lớp ren độc đáo.</span></li>
	<li>
		<span>Lưng bo thun co giãn dễ mặc, phù hợp với nhiều dáng người.</span></li>
	<li>
		<span>Màu sắc trang nhã, dễ dàng phối với các kiểu áo thun, áo cách điệu để mặc đi chơi, dạo phố...</span></li>
	<li>
		<span>Chất liệu: Ren cao cấp với hoa văn đẹp.</span></li>
	<li>
		<span>Kích thước: Dài 34cm, Eo 31*2cm, Mông 48*2cm (sai số 1-2cm)</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(199000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (87, N'Quần giả váy thời trang', 20, N'5846-1108810581658201420455832835846-11088.jpg', 17, N'<ul>
	<li>
		<span>Kiểu dáng đơn giản nhưng hợp mốt, thân trước xếp ly cách điệu, thân sau phối túi giả tinh tế.</span></li>
	<li>
		<span>Đường may khéo léo chắc chắn, có thể kết hợp cùng nhiều loại áo khác nhau như áo thun rộng, áo thun bó sát, áo ba lỗ, tanktop, croptop ...</span></li>
	<li>
		<span>Sự kết hợp độc đáo giữa quần short và váy ngắn tạo nét trẻ trung và năng động cho bạn gái.</span></li>
	<li>
		<span>Chất liệu: Tuyết mưa</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(139000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (88, N'Quần yếm trắng tinh khôi sang trọng', 20, N'4532-1005514244323620149880135134532-10055.jpg', 17, N'<ul>
	<li>
		<span>Kiểu dáng sành điệu, mang đến cho bạn gái một phong cách hoàn toàn mới mẻ và đầy cá tính.</span></li>
	<li>
		<span>Thiết kế form dáng vừa vặn, điệu đà, cho bạn gái thêm phần cuốn hút.</span></li>
	<li>
		<span>Bạn sẽ thật tự tin với phong cách hoàn toàn mới lạ. Chiếc quần yếm trắng tinh khôi là sự lựa chọn của rất nhiều bạn trẻ hiện nay.</span></li>
	<li>
		<span>Chất liệu tuyết mưa mịn màng, tạo cảm giác thoải mái, thoáng mát cho người mặc.</span></li>
	<li>
		<span>Điểm nổi bật của chiếc quần là giúp bạn dễ dàng phối với nhiều kiểu áo: áo sơ mi, áo phông, áo ba lỗ ...</span></li>
	<li>
		<span>Màu trắng.</span></li>
	<li>
		<span>Freesize</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(138000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (89, N'Quần short kaki nữ rách gấu năng động', 20, N'44591214416620141200456543.jpg', 17, N'<ul>
	<li>
		<span>Với thiết kế tinh tế và lạ mắt, cho bạn gái một phong cách mới, đầy năng động và trẻ trung.</span></li>
	<li>
		<span>Quần short được may từ chất liệu kaki mềm mại, thoáng mát, cho bạn gái thoải mái vận động.</span></li>
	<li>
		<span>Thiết kế tinh tế, phối túi đẹp mắt, cho bạn gái thêm phần tươi trẻ và cuốn hút.</span></li>
	<li>
		<span>Thật dễ dàng để bạn phối với áo thun, áo sơ mi, áo ba lỗ ...</span></li>
	<li>
		<span>Màu sắc: Cam - Trắng - Hồng cánh sen - Đỏ</span></li>
	<li>
		<span>Size: 27, 28, 29, 30</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(112000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (90, N'Quần short nữ phối hoa trẻ trung', 20, N'44521214216620141358160403.jpg', 17, N'<ul>
	<li>
		<span>Trẻ trung, cá tính cùng quần short nữ phối hoa mang phong cách năng động.</span></li>
	<li>
		<span>Với quần short phối hoa thật dễ dàng để bạn khoe đôi chân thon dài, một cách tự tin với phong cách mới mẻ.</span></li>
	<li>
		<span>Chất liệu kaki mềm mại, cho bạn gái một cảm giác thật thoải mái khi mặc.</span></li>
	<li>
		<span>Dễ dàng cho bạn gái Mix cùng các kiểu áo: Áo thun, áo sơ mi, áo ba lỗ ...</span></li>
	<li>
		<span>Màu sắc: Lưng đen phối hoa Và Lưng trắng phối hoa</span></li>
	<li>
		<span>Freesize</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(75000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (91, N'Quần short lửng thể thao nữ', 20, N'39951211541662014436811693.jpg', 17, N'<ul>
	<li>
		<span>Quần short lửng dây rút, phối màu cá tính. Kiểu dáng trẻ trung, năng động.</span></li>
	<li>
		<span>Thích hợp mặc ở nhà và hoạt động thể thao.</span></li>
	<li>
		<span>Vải nỉ thun co giãn tốt, thoáng mát và thoải mái khi mặc.</span></li>
	<li>
		<span>Kích thước: Dài 47cm, Lưng 60cm, Ống 40cm, Đáy 27cm, Mông 80cm, Rộng 46cm</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(59000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (92, N'Quần thun nữ thể thao thời trang', 20, N'5747-1098710282429720142789657355747-10987.jpg', 18, N'<ul>
	<li>
		<span>Quần thun dài thể thao cho nữ với thiết kế đơn giản, mang đến vẻ trẻ trung, khỏe khoắn và năng động cho bạn gái.</span></li>
	<li>
		<span>Thiết kế lưng thun dây rút, cho bạn dễ dàng điều chỉnh độ chật rộng của quần, tạo cảm giác thoải mái khi mặc.</span></li>
	<li>
		<span>Quần dài in logo cá tính tạo phong cách thời trang cho bạn.</span></li>
	<li>
		<span>Chất liệu: Thun nỉ </span></li>
	<li>
		<span>Kích thước:&nbsp;</span><span>&nbsp;Dài 95cm, Eo 33*2cm (dây rút), Mông 48*2cm</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(119000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (93, N'Quần short yếm phối túi Hàn Quốc', 20, N'6322-11550155725268201412787553826322-11550.jpg', 18, N'<ul>
	<li>
		<span>Thiết kế quần yếm dễ dàng phối cùng những trang phục và phụ kiện thời trang khác tạo sự trẻ trung, nhí nhảnh.</span></li>
	<li>
		<span>Chất liệu: Thun cotton , thấm hút mồ hôi, thoải mái cho người mặc.</span></li>
	<li>
		<span>Kích thước: Dài yếm 81cm, Dài quần 37cm, Mông 88 - 95cm</span></li>
	<li>
		<span>Freesize, phù hợp với bạn dưới 50kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(138000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (94, N'Quần thun lửng nữ thể thao', 20, N'40421212111662014443280526.jpg', 18, N'<ul>
	<li>
		<span>Thiết kế năng động với short lửng, lưng thun có 2 túi trước và 1 túi sau, quần lửng ôm chân, phối màu năng động.</span></li>
	<li>
		<span>Đường may chắc chắn, kiểu dáng trẻ trung, thích hợp cho bạn trẻ năng động.</span></li>
	<li>
		<span>Thích hợp mặc ở nhà, đi tập thể thao ....</span></li>
	<li>
		<span>Chất liệu thun cho bạn nữ thoải mái vận động. </span></li>
	<li>
		<span>Freesize, phù hợp với bạn dưới 65kg. </span></li>
	<li>
		<span>Kích thước: Dài 75cm</span></li>
</ul>', CAST(0xA3C40000 AS SmallDateTime), CAST(115000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (95, N'Đồ bộ thun nữ thể thao thời trang', 20, N'473312151216620141751549245.jpg', 19, N'<ul>
	<li>
		<span>Thiết kế form áo cánh dơi thời trang trẻ trung, dễ mặc, mang đến sự tự tin, và thoải mái cho người mặc.</span></li>
	<li>
		<span>Chất liệu: Thun nhung Hàn Quốc.</span></li>
	<li>
		<span>Kích thước: Dài áo 58cm, Dài quần 75cm, Vòng ngực 85 - 92cm, Vòng eo 61 - 70cm, Vòng mông 88 - 92cm.</span></li>
	<li>
		<span>Thích hợp với bạn nữ &lt;52kg.</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(145000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (96, N'Đồ bộ nữ thun lửng phối màu', 20, N'431312132316620141161312892.jpg', 19, N'<ul>
	<li>
		<span><span>Thiết kế đơn giản không kém phần trẻ trung, năng động với kiểu dáng quần lửng ôm chân thon + form áo rộng, tay ngắn, thân áo phối màu và sọc nơi túi áo.&nbsp;</span></span></li>
	<li>
		<span><span>Chất liệu thun thoáng mát, thấm hút mồ hôi cho bạn nữ thoải mái khi mặc.&nbsp;</span></span></li>
	<li>
		<span><span>Đồ bộ thun lửng tiện lợi và rất thoải mái cho các buổi đi dạo, du lịch, vui chơi,...&nbsp;</span></span></li>
	<li>
		<span><span>Phong cách thời trang sành điệu, trẻ trung nhưng không kém phần gợi cảm và quyến rũ.&nbsp;</span></span></li>
	<li>
		<span><span><strong>Freesize&nbsp;</strong>phù hợp cho bạn gái dưới 55kg (tùy chiều cao).</span></span></li>
	<li>
		<span><span>Có 2 màu để bạn chọn: Hồng - Xanh đen</span></span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(149000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (97, N'Đồ bộ nữ họa tiết chấm bi Pink cá tính', 19, N'5413-1046216405737201411519095985413-10462.jpg', 19, N'<ul>
	<li>
		<span>Kiểu dáng trẻ trung cho bạn tự tin khoe vẻ đẹp năng động và vóc dáng đầy sức sống, phong cách thời trang mặc nhà giúp bạn thêm xinh xắn, dễ thương.</span></li>
	<li>
		<span>Áo pull với họa tiết Pink và quần short chấm bi xinh xắn.</span></li>
	<li>
		<span>Chất liệu: Thun cotton co giãn thoải mái, tạo cảm giác thoáng mát.</span></li>
	<li>
		<span>Freesize, phù hợp với bạn dưới 55kg.</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(125000 AS Decimal(18, 0)), 1)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (98, N'Đồ bộ nữ thun phối hoa thời trang', 20, N'5576-10755122715720142393943225576-10755.jpg', 19, N'<ul>
	<li>
		<span>Đồ bộ gồm quần lửng kèm túi, form áo cánh dơi tay ngắn. Set đồ tạo điểm nhấn với phần vai phối họa tiết hoa phần vai và tay áo.&nbsp;</span></li>
	<li>
		<span>Kiểu dáng trẻ trung với họa tiết hoa.</span></li>
	<li>
		<span>Thích hợp mặc ở nhà, dạo phố.</span></li>
	<li>
		<span>Chất liệu: Thun</span></li>
	<li>
		<span>Phù hợp với bạn dưới 55kg (tùy chiều cao).</span></li>
	<li>
		<span>Kích thước: Áo: Dài 59cm, Ngực 51*2cm</span></li>
	<li>
		<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Quần: Dài 69m, Eo 31*2cm, Mông 45*2cm</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(149000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (99, N'Đồ bộ nữ thêu logo khỉ đáng yêu', 20, N'5708-10942110422572014782243395708-10942.jpg', 19, N'<ul>
	<li>
		<span>Thiết kế quần lửng bo thun ôm chân, kiểu áo hoodie năng động cho bạn cảm giác thoải mái, thoáng mát trong những ngày hè.</span></li>
	<li>
		<span>Có thể mặc ở nhà, dạo phố, tập thể thao.</span></li>
	<li>
		<span>Chất liệu: Thun cotton dày dặn, bền đẹp.</span></li>
	<li>
		<span>Phù hợp với bạn dưới 53kg (tùy chiều cao).</span></li>
	<li>
		<span>Kích thước: Áo: Dài 56cm, Ngực 80 - 88cm, Eo 60 - 75cm</span></li>
	<li>
		<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Quần: Dài 72cm, Mông 85 - 95cm.</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(139000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (100, N'Bộ jumpsuit ngắn đính nơ', 20, N'7264-1249416574471020142145336627264-12494.jpg', 19, N'<ul>
	<li>
		<span><span>Dạng áo liền quần short trẻ trung, năng động và rất gợi cảm.&nbsp;</span></span></li>
	<li>
		<span><span>Chất liệu tuyết mưa thoáng mát cho bạn thoải mái vận động.&nbsp;</span></span></li>
	<li>
		<span><span>Bộ đồ jumpsuit&nbsp;tiện lợi và rất thoải mái cho các buổi đi dạo, du lịch, vui chơi,...&nbsp;</span></span></li>
	<li>
		<span><span>Phong cách thời trang sành điệu, trẻ trung nhưng không kém phần gợi cảm và quyến rũ.&nbsp;</span></span></li>
	<li>
		<span><span><strong>Freesize,&nbsp;</strong>phù hợp cho bạn gái dưới 53kg.</span></span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(225000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (101, N'Đồ bộ nữ in hình phối màu dễ thương', 20, N'6779-12002145727129201413573758526779-12002.jpg', 19, N'<ul>
	<li>
		<span>Thiết kế đơn giản với kiểu quần dài áo tay dài in hình và phối màu sắc nổi bật.</span></li>
	<li>
		<span>Thích hợp mặc ở nhà.</span></li>
	<li>
		<span>Chất liệu: Thun mềm.</span></li>
	<li>
		<span>Kích thước: Áo: Dài 59cm, Vai 38cm, Tay 56cm&nbsp;</span></li>
	<li>
		<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Quần: Dài 92cm, Eo 25*2cm (lưng thun), Mông 54*2cm </span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(159000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (102, N'Đồ bộ nữ form lửng cá tính', 20, N'6665-119509302211920143307534456665-11950.jpg', 19, N'<ul>
	<li>
		<span>Set đồ đơn giản với tông màu pastel nhã nhặn gợi nét thanh lịch ở bạn nữ.</span></li>
	<li>
		<span>Thiết kế áo tay ngắn, cổ tròn; cùng quần âu form lửng cá tính với túi xéo bên hông, dây kéo chắc chắn.</span></li>
	<li>
		<span>Thích hợp diện tới công sở, đi chơi, dạo phố</span></li>
	<li>
		<span>Chất liệu: Cát giấy</span></li>
	<li>
		<span>Kích thước: Áo: Dài 57cm, Vai 37cm, Ngực 46*2cm</span></li>
	<li>
		<span>Quần: Dài 81cm, Eo 38*2cm, Mông 47*2cm</span></li>
	<li>
		<span><em>Sai số 1-2cm</em></span></li>
	<li>
		<span>Phù hợp với bạn dưới 53kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(215000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (105, N'Đồ bộ nữ City Boy phối màu cá tính', 20, N'6608-118081632359201414529483526608-11808.jpg', 19, N'<ul>
	<li>
		<span>Đồ bộ gồm quần short, kiểu áo tay dài, set đồ in hình và viền màu cá tính tôn nét trẻ trung, năng động ở bạn.</span></li>
	<li>
		<span>Kiểu dáng năng động, trẻ trung cho bạn thoải mái vận động.&nbsp;</span></li>
	<li>
		<span>Thích hợp mặc ở nhà, dạo phố, tập thể thao.</span></li>
	<li>
		<span>Chất liệu: Thun thoáng mát, thoải mái khi vận động.</span></li>
	<li>
		<span>Freesize, phù hợp với bạn dưới 53kg (tùy chiều cao).</span></li>
	<li>
		<span>Kích thước: Áo: Dài 65cm, Tay 59cm, Ngực 48*2cm</span></li>
	<li>
		<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Quần: Dài 34cm, Eo 34*2cm (thun)</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(138000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (106, N'Đồ bộ nữ mặc nhà in hình đáng yêu', 20, N'6223-1151010596258201421342627536223-11510.jpg', 19, N'<ul>
	<li>
		<p>
			<span>Thiết kế form áo rộng, tay ngắn, cổ tròn cùng quần lửng cho bạn sự thoải mái khi ngủ.</span></p>
	</li>
	<li>
		<p>
			<span>Màu sắc trẻ trung với họa tiết xinh xắn tôn lên nét đáng yêu, điệu đà cho bạn gái.</span></p>
	</li>
	<li>
		<p>
			<span>Chất liệu: thun co giãn, mềm mịn, mang đến cảm giác mát mẻ, dễ chịu cho người mặc</span></p>
	</li>
	<li>
		<p>
			<span>Freesize, phù hợp với bạn dưới 55kg.</span></p>
	</li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(115000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (108, N'Đầm ngủ sexy ren lụa kèm quần chữ T', 20, N'22841254716620141896896139.jpg', 20, N'<ul>
	<li>
		<p>
			<span><span>Thiết kế 2 dây, kết hợp giữa ren và các đường bèo nhún, viền chạy quanh phần bầu ngực, nơ thắt điểm giữa, chân váy chạy đường ren.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Được may từ chất liệu <strong>lụa mềm mại</strong>, rất thoáng mát.&nbsp;</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Được trang trí nhiều chi tiết nhỏ bằng ren rất nữ tính, tạo điểm nhấn <strong>quyến rũ.</strong></span></span></p>
	</li>
	<li>
		<p>
			<span><span>Đầm ngủ tôn vinh nét đẹp mềm mại, tạo phong cách nóng bỏng .</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Có 3 màu: <strong>Đen, trắng và tím</strong> cho bạn chọn.</span></span></p>
	</li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(99000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (109, N'Đầm ngủ cotton hoạt hình', 20, N'3421-12005153123129201420738058513421-12005.jpg', 20, N'<ul>
	<li>
		<p>
			<span>Đầm ngủ cotton thiết kế form suông rộng, tay ngắn, cổ tròn cho bạn sự thoải mái khi ngủ.</span></p>
	</li>
	<li>
		<p>
			<span>Màu sắc trẻ trung với 6 kiểu họa tiết xinh xắn tôn lên nét đáng yêu, điệu đà cho bạn gái.</span></p>
	</li>
	<li>
		<p>
			<span>Chất liệu: thun cotton mịn o giãn 4 chiều, mang đến cảm giác mát mẻ, dễ chịu cho người mặc</span></p>
	</li>
	<li>
		<p>
			<span>Kích cỡ freesize, form rộng rãi, vừa vặn với nhiều vóc dáng.</span></p>
	</li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(85000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (110, N'Đầm ngủ Zic siêu mỏng phối ren', 20, N'392812113516620141547332691.jpg', 20, N'<ul>
	<li>
		<span>Đầm ngủ đính nơ ngực giúp phái đẹp trở nên quyến rũ, gợi cảm.</span></li>
	<li>
		<span>Chất liệu ren lụa mịn màng, mềm mại đem đến cảm giác thoải mái khi mặc.</span></li>
	<li>
		<span>Đầm 2 dây phối ren ngực, thân váy siêu mỏng mang đến cho bạn một giấc ngủ sâu và ngon.</span></li>
	<li>
		<span>Thiết kế tinh tế, điệu đà tôn đường cong quyến rũ ở bạn gái.</span></li>
	<li>
		<span>Màu Tím.</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(92000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (111, N'Đầm ngủ in họa tiết hoạt hình đáng yêu', 20, N'6297-11504165255238201421367690716297-11504.jpg', 20, N'<ul>
	<li>
		<p>
			<span>Đầm ngủ cotton thiết kế form suông rộng, tay ngắn, cổ tròn cho bạn sự thoải mái khi ngủ.</span></p>
	</li>
	<li>
		<p>
			<span>Màu sắc trẻ trung với họa tiết xinh xắn tôn lên nét đáng yêu, điệu đà cho bạn gái.</span></p>
	</li>
	<li>
		<p>
			<span>Chất liệu: thun cotton mịn co giãn 4 chiều, mang đến cảm giác mát mẻ, dễ chịu cho người mặc</span></p>
	</li>
	<li>
		<p>
			<span>Kích cỡ freesize, form rộng rãi, vừa vặn với nhiều vóc dáng.</span></p>
	</li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(95000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (113, N'Đồ bộ nữ in họa tiết hoạt hình đáng yêu', 20, N'6222-1150910553325820141166118386222-11509.jpg', 20, N'<ul>
	<li>
		<p>
			<span>Đồ bộ thun thiết kế form áo rộng, tay ngắn, cổ tròn cho bạn sự thoải mái khi ngủ.</span></p>
	</li>
	<li>
		<p>
			<span>Màu sắc trẻ trung với 3 kiểu họa tiết xinh xắn tôn lên nét đáng yêu, điệu đà cho bạn gái.</span></p>
	</li>
	<li>
		<p>
			<span>Chất liệu: thun co giãn mang đến cảm giác mát mẻ, dễ chịu cho người mặc</span></p>
	</li>
	<li>
		<p>
			<span>Freesize, phù hợp với bạn dưới 55kg (tùy chiều cao).</span></p>
	</li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(115000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (114, N'Áo khoác ngủ họa tiết hoa anh đào', 20, N'5902-11166135528782014229770585902-11166.jpg', 20, N'<ul>
	<li>
		<p>
			<span>Thiết kế&nbsp;tinh tế, quyến rũ&nbsp;chất vải mịn màng, mềm mại, mặc mát và thoải mái. Kiểu dáng Nhật Bản cùng họa tiết hoa anh đào màu sắc dịu ngọt.</span></p>
	</li>
	<li>
		<p>
			<span><span>Áo choàng ngủ tôn vinh những&nbsp;đường cong&nbsp;đầy sức hút và gợi cảm cho chị em.</span></span></p>
	</li>
</ul><ul>
		<li>
			<p>
				<span><span>Bí quyết tạo nên sự&nbsp;quyến rũ và hấp dẫn&nbsp;của phái nữ.</span></span></p>
		</li>
		<li>
			<p>
				<span><span>Chất liệu: Phi lụa mềm mại, mặc mát và thoải mái trong mọi thời tiết.<br>
				Kích thước: Dài 83cm, Tay 32cm, Ngực 53*2cm<br>
				Kèm thắt lưng + quần lót chữ T</span></span></p>
		</li>
	</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(109000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (115, N'Đầm ngủ tiên nữ pha ren gợi cảm', 20, N'39331211361662014763264109.jpg', 20, N'<ul>
	<li>
		<span>Giúp bạn trở nên quyến rũ, gợi cảm và sexy hơn.</span></li>
	<li>
		<span>Chiếc váy ngủ chất liệu ren cho bạn dáng vẻ quyến rũ. Với đường cắt may khéo léo khoe những điểm gợi cảm trên cơ thể người phụ nữ: vòng 1 đầy đặn, vòng 2 thon gọn, đôi chân thon dài.</span></li>
	<li>
		<span>Freesize, phù hợp với bạn gái 45 - 55kg.</span></li>
	<li>
		<span>Màu: Xanh - Hồng</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(69000 AS Decimal(18, 0)), 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (116, N'Đầm ngủ cổ tim phối ren kèm áo choàng', 20, N'39321211361662014516685785.jpg', 20, N'<ul>
	<li>
		<span>Đầm ngủ đính nơ ngực giúp phái đẹp trở nên quyến rũ, gợi cảm.</span></li>
	<li>
		<span>Chất liệu ren lụa mịn màng, mềm mại đem đến cảm giác thoải mái khi mặc.</span></li>
	<li>
		Đầm 2 dây, viền ren ngực và eo tôn đường nét nóng bỏng ở cơ thể phái đẹp.</li>
	<li>
		<span>Áo choàng ngủ thiết kế quyến rũ và gợi cảm trong từng đường nét tôn thêm nét cuốn hút hình thể.</span></li>
	<li>
		<span>Thiết kế tinh tế, điệu đà tôn thêm dáng vẻ ngọt ngào, nữ tính cho bạn gái.</span></li>
	<li>
		<span>Màu Tím.</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(179000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (117, N'Đầm ngủ lụa pha ren quyến rũ', 20, N'392912113516620141145428956.jpg', 20, N'<ul>
	<li>
		<span>Đầm ngủ đính nơ ngực giúp phái đẹp trở nên quyến rũ, gợi cảm.</span></li>
	<li>
		<span>Chất liệu ren lụa mịn màng, mềm mại đem đến cảm giác thoải mái khi mặc.</span></li>
	<li>
		<span>Đầm 2 dây, phối ren ngực, đầm kín đáo nhưng không kém phần sexy.</span></li>
	<li>
		<span>Thiết kế tinh tế, điệu đà tôn đường nét quyến rũ ở bạn gái.</span></li>
	<li>
		<span>Màu Đen - Hồng - Tím.</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(109000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (119, N'Đầm ngủ sexy xẻ tà trước', 20, N'27841264016620141141500585.jpg', 20, N'<ul>
	<li>
		<p>
			<span><span>Kiểu dáng váy ngủ <strong>trẻ trung, quyến rũ.</strong></span></span></p>
	</li>
	<li>
		<p>
			<span><span>Thể hiện được sự tôn vinh cho phái đẹp bằng những nét độc đáo của riêng mình.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Tinh tế về kiểu dáng, sắc sảo về đường nét, màu sắc trẻ trung.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Chất liệu thun lụa tôn vinh vẻ đẹp <strong>quyến rũ sexy.</strong></span></span></p>
	</li>
	<li>
		<p>
			<span><span>Thiết kế kiểu áo <strong>2 dây</strong> nhẹ nhàng cho bạn khoe đôi vai thon ngọc ngà.</span></span></p>
	</li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(109000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (120, N'Áo sơ mi nam viền màu thời trang', 20, N'6062-1131515359148201414119314736062-11315.jpg', 1, N'<ul>
	<li>
		<span>Áo sơ mi nam phối màu với thiết kế cổ trụ, tay dài, mang phong cách lịch sự, trẻ trung.</span></li>
	<li>
		<span>Viền màu lạ mắt, mang đến phong cách mới mẻ, sang trọng. Tôn dáng người mặc mang đến sự tự tin khi mặc.</span></li>
	<li>
		<span>Chất liệu: Kate mềm mịn và thoáng mát, tạo cảm giác mạnh mẽ và thoải mái cho người mặc.</span></li>
	<li>
		<span>Dễ dàng phối với quần tây, jean, kaki ... để bạn diện tới chốn công sở.</span></li>
	<li>
		<span>Size M: &nbsp;Dài áo 74cm, Vai 43cm, Dài tay 61cm.</span></li>
	<li>
		<span>Size L: Dài áo 76cm, Vai 45cm, Dài tay 63cm</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(185000 AS Decimal(18, 0)), 1)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (121, N'Áo sơ mi nam đính logo thời trang', 20, N'6790-1202711475813920149669626966790-12027.jpg', 1, N'<ul>
	<li>
		<span><span>Áo sơ mi thiết kế với kiểu dáng trẻ trung thể hiện vẻ nam tính của bạn nam.</span></span></li>
	<li>
		<span><span>Áo dài tay, cổ bẻ, cài nút, nổi bật với phần ngực đính logo tạo điểm nhấn. Màu sắc hài hòa, dễ mặc, thích hợp với nhiều dáng người.</span></span></li>
	<li>
		<span><span>Thích hợp mặc cùng quần jeans, kaki, short ... tạo phong cách thời trang trẻ trung và ấn tượng.</span></span></li>
	<li>
		<span>Chất liệu: Vải cotton cao cấp, mềm mịn, thấm hút mồ hôi tốt, tạo cảm giác thoải mái khi mặc.</span></li>
	<li>
		<span>Size L: Dài 72cm, Vai 44cm, Tay 59cm, phù hợp với bạn từ 50 - 58kg</span></li>
	<li>
		<span>Size XL: Dài 75cm, Vai 45cm, Tay 60cm,&nbsp;</span><span>phù hợp với bạn từ 58 - 63kg</span></li>
	<li>
		<span><em>Sai số 1-2cm</em></span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(185000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (124, N'Áo sơ mi nam đính logo cá tính', 20, N'6391-11618154124288201421173749966391-11618.jpg', 1, N'<ul>
	<li>
		<span><span>Áo sơ mi thiết kế với kiểu dáng trẻ trung thể hiện vẻ nam tính của bạn nam.</span></span></li>
	<li>
		<span><span>Áo dài tay, cổ bẻ, cài nút bấm, nổi bật với phần ngực đính logo tạo điểm nhấn. Màu sắc hài hòa, dễ mặc, thích hợp với nhiều dáng người.</span></span></li>
	<li>
		<span><span>Thích hợp mặc cùng quần jeans, kaki, short ... tạo phong cách thời trang trẻ trung và ấn tượng.</span></span></li>
	<li>
		<span>Chất liệu:&nbsp;</span></li>
	<li>
		<span>Size L: Dài 72cm, Vai 44cm, Tay 59cm, phù hợp với bạn từ 50 - 58kg</span></li>
	<li>
		<span>Size XL: Dài 75cm, Vai 45cm, Tay 60cm,&nbsp;</span><span>phù hợp với bạn từ 58 - 63kg</span></li>
	<li>
		<span><em>Sai số 1-2cm</em></span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(175000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (125, N'Áo sơ mi nam thời trang', 20, N'7209-125151557468102014108531627209-12515.jpg', 1, N'<ul>
	<li>
		<p>
			<span><span>Kiểu dáng sơ mi tay dài tôn lên phong cách lịch lãm, sang trọng nơi công sở.</span></span></p>
	</li>
	<li>
		<p>
			<span>Giúp phái mạnh tạo một vẻ ngoài đầy nam tính, cũng như thật sang trọng, lịch lãm nơi công sở.</span></p>
	</li>
	<li>
		<span>Chất liệu: Kate thun mềm mịn, dày dặn, hút ẩm tốt.</span></li>
	<li>
		<span>Size L: Dài 72cm, Vai 44cm, Tay 64cm</span></li>
	<li>
		<span>Size XL: Dài 73cm, Vai 45cm, Tay 65cm</span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(175000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (126, N'Áo sơ mi nam viền sọc màu thời trang', 20, N'7214-1240616331131020146165542327214-12406.jpg', 1, N'<ul>
	<li>
		<span>Thiết kế tay dài, cổ bẻ, đường gài nút và tay áo viền màu ấn tượng, tôn vẻ phong cách thời trang ở bạn nam.</span></li>
	<li>
		<span>Dễ dàng phối cùng quần âu cho bạn phong cách thanh lịch, chỉnh chu nơi công sở.</span></li>
	<li>
		<span>Chất liệu: Kaki thun</span></li>
	<li>
		<span>Size M: Dài 73cm, Vai 39cm, Tay 61cm</span></li>
	<li>
		<span>Size L: Dài 74cm, Vai 40cm, Tay 62cm</span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(185000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (127, N'Áo sơ mi nam chấm bi viền denim', 20, N'7216-12404162637310201415809829527216-12404.jpg', 1, N'<ul>
	<li>
		<span>Sơ mi chấm bi viền denim phá cách. Kiểu dáng sang trọng đầy lịch lãm.</span></li>
	<li>
		<span>Dễ dàng phối cùng quần âu cho bạn phong cách thanh lịch, chỉnh chu nơi công sở.</span></li>
	<li>
		<span>Chất liệu: Kaki thun.</span></li>
	<li>
		<span>Size M: Dài 73cm, Vai 40cm</span></li>
	<li>
		<span>Size L: Dài 74cm, Vai 41cm</span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(189000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (129, N'Áo sơ mi nam tay lửng phá cách', 20, N'6908-1220813551223920145158379126908-12208.jpg', 1, N'<ul>
	<li>
		<span>Áo sơ mi nam thiết kế cá tính với kiểu tay lửng, tạo điểm nhấn với cổ đính kim loại màu vàng nổi bật, thân áo xếp ly dọc tạo nếp.</span></li>
	<li>
		<span>Kiểu áo đơn giản dễ dàng mix cùng quần âu/ jeans dài để bạn diện tới công sở.</span></li>
	<li>
		<span>Chất liệu: Kaki thun</span></li>
	<li>
		<span>Size M: Dài 72cm, Vai 39cm, Tay 33cm</span></li>
	<li>
		<span>Size L:&nbsp;Dài 73cm, Vai 40cm, Tay 34cm</span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(175000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (130, N'Áo sơ mi nam phối màu caro thời trang', 20, N'6906-122051348182392014874936956906-12205.jpg', 1, N'<ul>
	<li>
		<span>Kiểu áo sơ mi tay ngắn, nổi bật với chi tiết thân áo phối màu ở vai và túi áo, cùng họa tiết caro.&nbsp;</span></li>
	<li>
		<span>Đường may tinh tế, tạo form áo đẹp tôn nét cá tính và vẻ lịch thiệp ở bạn nam.</span></li>
	<li>
		<span>Dễ dàng mix cùng quần âu/ jeans dài mang đến phong cách thanh lịch, và cá tính ở bạn nam.</span></li>
	<li>
		<span>Chất liệu: Kaki thun.</span></li>
	<li>
		<span>Size M: Dài 72cm, Vai 39cm</span></li>
	<li>
		<span>Size L: Dài 73cm, Vai 40cm</span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(185000 AS Decimal(18, 0)), 1)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (132, N'Áo sơ mi nam kẻ sọc thanh lịch', 20, N'6869-1218411582922920141788558576869-12184.jpg', 1, N'<ul>
	<li>
		<span>Kiểu dáng form áo chuẩn với cổ bẻ, tay dài phù hợp cho các bạn mặc đi công sở ,picnic...</span></li>
	<li>
		<span>Chất liệu vải Kate thoáng mát, dễ thấm hút mồ hôi.</span></li>
	<li>
		<span>Thích hợp cho lịch hoạt động tất bật của nam giới, tôn lên đường nét cơ thể.</span></li>
	<li>
		<span>Kết hợp tuyệt vời cùng áo thun ba lỗ bên trong, hay short jean, kaki cho ngày cuối tuần.</span></li>
	<li>
		<span>Kiểu dáng lịch lãm thích hợp cho cả đi chơi, đi làm, đi học, du lịch, v.v….</span></li>
	<li>
		<span>Size L: Dài 71cm, Ngang vai 39cm, Tay 63cm.</span></li>
	<li>
		<span><span>Size XL: Dài 72cm, Ngang vai 40cm, Tay 64cm.</span>&nbsp;</span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(199000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (133, N'Áo sơ mi nam thời trang', 20, N'6686-1211614131179201410100133166686-12116.jpg', 1, N'<ul>
	<li>
		<p>
			<span><span>Kiểu dáng sơ mi tay dài tôn lên phong cách lịch lãm, sang trọng nơi công sở.</span></span></p>
	</li>
	<li>
		<p>
			<span>Giúp phái mạnh tạo một vẻ ngoài đầy nam tính, cũng như thật sang trọng, lịch lãm nơi công sở.</span></p>
	</li>
	<li>
		<span>Chất liệu: Kate thun mềm mịn, dày dặn, hút ẩm tốt.</span></li>
	<li>
		<span>Size M: Dài 70cm, Vai 44cm, Tay 63cm</span></li>
	<li>
		<span>Size L: Dài 71cm, Vai 45cm, Tay 64cm</span></li>
	<li>
		<span>Size XL: Dài 72cm, Vai 46cm, Tay 65cm</span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(185000 AS Decimal(18, 0)), 1)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (134, N'Áo thun nam in họa tiết cá tính', 20, N'5817-11065102944820149459300865817-11065.jpg', 2, N'<ul>
	<li>
		<span><span>Thiết kế&nbsp;</span></span><span>form áo chuẩn,&nbsp;</span><span>cổ tròn, in hình cá tính phần thân áo, tay và vạt áo cho bạn nam vẻ trẻ trung, mạnh mẽ</span><span>.</span></li>
	<li>
		<span><span>Tôn lên nét trẻ trung, năng động, cá tính của bạn trẻ.</span></span></li>
	<li>
		<span><span>Áo thun thoáng mát, dễ thấm hút mồ hôi, không phai màu không bị nhăn nhúm, áo được dệt thoáng, tạo sự mát mẻ.</span></span></li>
	<li>
		<span><span>Size M, phù hợp bạn nam &lt; 65kg.&nbsp;</span></span></li>
	<li>
		<span><span>Size L, phù hợp bạn nam &lt; 75kg.</span></span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(105000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (136, N'Áo thun nam Raglan vai phối da', 20, N'7095-126211424341310201416826668927095-12621.jpg', 2, N'<ul>
	<li>
		<span><span>Chất liệu<strong>&nbsp;</strong>thun cotton co giãn&nbsp;mang lại sự thoải mái, thoáng mát, thấm hút mồ hôi tốt, phù hợp với các bạn trẻ năng động.&nbsp;</span></span></li>
	<li>
		<span><span>Thiết kế trẻ trung và kiểu dáng năng động, sành điệu, cho các bạn nam tự tin khoe cá tính sôi nổi.&nbsp;</span></span></li>
	<li>
		<span><span>Kiểu dáng cổ tròn, tay dài, phần vai phối da phong cách. </span></span></li>
	<li>
		<span><span>Size M, phù hợp với bạn dưới 65kg</span></span></li>
	<li>
		Size L, phù hợp với bạn nam dưới 70kg.</li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(119000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (137, N'Áo thun nam Raglan phối màu', 20, N'6766-11985104554129201414525138266766-11985.jpg', 2, N'<ul>
	<li>
		<span><span>Chất liệu<strong>&nbsp;</strong>thun cotton co giãn&nbsp;mang lại sự thoải mái, thoáng mát, thấm hút mồ hôi tốt, phù hợp với các bạn trẻ năng động.&nbsp;</span></span></li>
	<li>
		<span><span>Thiết kế trẻ trung và kiểu dáng năng động, sành điệu, cho các bạn nam tự tin khoe cá tính sôi nổi.&nbsp;</span></span></li>
	<li>
		<span><span>Kiểu dáng cổ tròn, tay dài với thân áo phối màu phong cách.</span></span></li>
	<li>
		Phù hợp với bạn nam dưới 60kg.</li>
</ul>', CAST(0xA3C40000 AS SmallDateTime), CAST(129000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (139, N'Áo thun nam cổ trụ phối sọc thời trang', 20, N'5764-10997141210297201418486532515764-10997.jpg', 2, N'<ul>
	<li>
		<span>Với kiểu dáng trẻ trung, form chuẩn dáng, mang đến cho phái mạnh một phong cách thật mới mẻ, hiện đại.</span></li>
	<li>
		<span>Áo được tạo điểm nhấn với cổ bẻ, tay ngắn viền sọc màu lịch sự, mang đến cho phái mạnh một diện mạo mới.</span></li>
	<li>
		<span>Chất liệu thun cá sấu thoáng mát, thấm hút mồ hôi cực tốt, mang lại cảm giác thoải mái cho người mặc.</span></li>
	<li>
		<span>Màu sắc nhã nhặn giúp bạn dễ dàng phối với quần short, quần jeans, quần kaki ...</span></li>
	<li>
		<span>Size M phù hợp cho bạn nam dưới 65kg.</span></li>
	<li>
		<span>Size L phù hợp cho bạn nam dưới 75kg.</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(125000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (140, N'Áo thun nam Raglan in họa tiết', 20, N'6814-1208517144315920144821060836814-12085.jpg', 2, N'<ul>
	<li>
		<p>
			<span><span>Thiết kế trẻ trung với tay áo dài, màu sắc hài hòa cùng thân áo in họa tiết cùng màu sắc nổi bật. Kiểu dáng năng động, sành điệu, cho các bạn nam tự tin khoe cá tính sôi nổi.&nbsp;</span></span></p>
	</li>
	<li>
		<p>
			<span>Chất liệu</span><strong>&nbsp;</strong><span>thun co giãn mang lại sự thoải mái, thoáng mát, thấm hút mồ hôi tốt, phù hợp với các bạn trẻ yêu thích hoạt động.</span></p>
	</li>
	<li>
		Size M: phù hợp với bạn dưới 65kg.&nbsp;</li>
	<li>
		Size L<span>: phù hợp với bạn dưới 75kg</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(119000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (142, N'Áo thun nam Raglan HBA6 phối màu', 20, N'7227-1243914171761020149472361557227-12439.jpg', 2, N'<ul>
	<li>
		<p>
			<span><span>Thiết kế trẻ trung với tay áo dài, màu sắc phối hài hòa cùng thân áo in họa tiết chữ và phối màu nổi bật.<br>
			Kiểu dáng năng động, sành điệu, cho các bạn nam tự tin khoe cá tính sôi nổi.&nbsp;</span></span></p>
	</li>
	<li>
		<p>
			<span>Chất liệu</span><strong>&nbsp;</strong><span>thun co giãn mang lại sự thoải mái, thoáng mát, thấm hút mồ hôi tốt, phù hợp với các bạn trẻ yêu thích hoạt động.</span></p>
	</li>
	<li>
		Size M: phù hợp với bạn dưới 65kg.&nbsp;</li>
	<li>
		Size L<span>: phù hợp với bạn dưới 75kg</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(125000 AS Decimal(18, 0)), 1)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (143, N'Áo thun nam phối màu thời trang', 19, N'7302-1256195112101020144888782587302-12561.jpg', 2, N'<ul>
	<li>
		<p>
			<span><span>Thiết kế phong cách với tay và đường gài nút viền màu nổi bật, cùng cổ áo phối tông màu khác hẳn tạo điểm nhấn; kiểu áo thích hợp để mặc đi chơi.&nbsp;</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Thiết kế đơn giản nhưng vẫn cuốn hút bởi phong cách trẻ trung và năng động không kém phần nam tính.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Chất liệu thun cá sấu co giãn 4 chiều, thấm hút mồ hôi mang lại cảm giác dễ chịu thoải mái cho người mặc.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Freesize. Thích hợp bạn nam dưới 65kg.</span></span></p>
	</li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(135000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (144, N'Áo thun nam cá sấu 2 cổ cá tính', 20, N'7303-12562954231010201419344556747303-12562.jpg', 2, N'<ul>
	<li>
		<span>Áo thun nam với&nbsp;điểm nhấn cổ 2 lớp nổi bật với cổ và tay áo phối màu tạo điểm nhấn.&nbsp;</span></li>
	<li>
		<span>Thiết kế cổ bẻ,&nbsp;form áo body đơn giản cho bạn nam phong cách thời trang khác lạ.&nbsp;</span></li>
	<li>
		<span>Thích hợp mặc ở nhà, đi chơi cùng bạn bè..</span></li>
	<li>
		<span>Chất liệu: Thun cá sấu 4 chiều, thoáng mát, thấm hút mồ hôi tốt, tạo sự mát mẻ cho người mặc.</span></li>
	<li>
		<span>Freesize, phù hợp với bạn nam &lt;65kg.</span></li>
</ul>', CAST(0xA3C40000 AS SmallDateTime), CAST(135000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (146, N'Áo thun nam Raglan sọc phối màu', 20, N'7226-12436135238610201418611880027226-12436.jpg', 2, N'<ul>
	<li>
		<span>Thiết kế trẻ trung và kiểu dáng năng động, sành điệu, cho các bạn nam tự tin khoe cá tính sôi nổi.&nbsp;</span></li>
	<li>
		<span><span>Kiểu dáng cổ tròn, tay dài với thân áo kẻ sọc ngang phối màu phong cách.</span></span></li>
	<li>
		<span><span>Chất liệu<strong>&nbsp;</strong>thun cotton co giãn&nbsp;mang lại sự thoải mái, thoáng mát, thấm hút mồ hôi tốt, phù hợp với các bạn trẻ năng động.&nbsp;</span></span></li>
	<li>
		Size M, phù hợp với bạn dưới 65kg.</li>
	<li>
		Size L, phù hợp với bạn dưới 70kg (tùy chiều cao)&nbsp;</li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(125000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (147, N'Áo thun nam Raglan AND', 20, N'7190-1236914141121020149699366767190-12369.jpg', 2, N'<ul>
	<li>
		<p>
			<span><span>Thiết kế trẻ trung với tay áo dài, màu sắc hài hòa cùng thân áo in họa tiết cùng màu sắc nổi bật. Kiểu dáng năng động, sành điệu, cho các bạn nam tự tin khoe cá tính sôi nổi.&nbsp;</span></span></p>
	</li>
	<li>
		<p>
			<span>Chất liệu</span><strong>&nbsp;</strong><span>thun co giãn mang lại sự thoải mái, thoáng mát, thấm hút mồ hôi tốt, phù hợp với các bạn trẻ yêu thích hoạt động.</span></p>
	</li>
	<li>
		Size M: phù hợp với bạn dưới 65kg.&nbsp;</li>
	<li>
		Size L<span>: phù hợp với bạn dưới 70kg</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(125000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (148, N'Áo thun cặp Raglan in họa tiết cá tính', 20, N'6895-1219811124423920146982128246895-12198.jpg', 3, N'<ul>
	<li>
		<span>Áo được thiết kế tay dài, cổ tròn, in họa tiết lạ mắt cho chiếc áo thêm nổi bật.</span></li>
	<li>
		<span><span>Mang vẻ năng động, trẻ trung mà còn giúp bạn cùng người ấy thể hiện được gu cá tính của riêng mình.</span></span></li>
	<li>
		<span><span>Áo thun cặp in họa tiết cá tính tạo ấn tượng đặc biệt khi hai bạn sánh bước bên nhau.</span></span></li>
	<li>
		<span><span>Áo được may từ chất liệu thun cotton thoáng mát, thấm hút mồ hôi tốt cho bạn thoải mái vận động.</span></span></li>
	<li>
		<span><span>Bộ sản phẩm gồm: 1 áo Nam + 1 áo Nữ. &nbsp;</span></span></li>
	<li>
		<span>Thích hợp nam &lt;65kg. Nữ &lt; 52kg.</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(219000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (149, N'Áo thun cặp in họa tiết bàn tay màu sắc', 20, N'6777-12000142134129201411180046916777-12000.jpg', 3, N'<ul>
	<li>
		<p>
			<span><span>Kiểu dáng trẻ trung sành điệu dành tặng cho đôi bạn trẻ.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Sự khỏe khoắn thể hiện qua màu sắc và họa tiết ngộ nghĩnh.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Giúp các đôi tình nhân tạo ấn tượng thật nổi bật khi xuất hiện cùng nhau.</span></span></p>
	</li>
</ul><ul>
		<li>
			<p>
				<span><span>Style trang phục cũng sẽ khiến bạn và "người ấy" trở nên thật nổi bật và ấn tượng.</span></span></p>
		</li>
		<li>
			<p>
				<span><span>Món quà tặng vô cùng ý nghĩa cho những người đang yêu.</span></span></p>
		</li>
		<li>
			<p>
				<span><span>Phù hợp nam&nbsp;dưới 65kg - Phù hợp nữ&nbsp;dưới 52kg.</span></span></p>
		</li>
	</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(108000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (150, N'Áo thun cặp viền sọc màu thời trang', 20, N'6630-118691322268920143927750406630-11869.jpg', 3, N'<ul>
	<li>
		<span>Áo được thiết kế tay ngắn, cổ tròn, thân áo viền sọc màu nổi bật.</span></li>
	<li>
		<span><span>Mang vẻ năng động, trẻ trung mà còn giúp bạn cùng người ấy thể hiện được gu cá tính của riêng mình.</span></span></li>
	<li>
		<span><span>Áo thun cặp in họa tiết cá tính tạo ấn tượng đặc biệt khi hai bạn sánh bước bên nhau.</span></span></li>
	<li>
		<span><span>Áo được may từ chất liệu thun cotton thoáng mát, thấm hút mồ hôi tốt cho bạn thoải mái vận động.</span></span></li>
	<li>
		<span><span>Bộ sản phẩm gồm: 1 áo Nam + 1 áo Nữ. </span></span></li>
	<li>
		<span><span>Thích hợp nam &lt;65kg. Nữ &lt; 52kg.</span></span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(189000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (151, N'Áo thun cặp Samara 23 cá tính', 20, N'6631-118681256518920143985928006631-11868.jpg', 3, N'<ul>
	<li>
		<p>
			<span><span>Thiết kế tinh tế gắn kết cho tình yêu lứa đôi thêm bền chặt.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Mang vẻ năng động, trẻ trung mà còn giúp bạn cùng người ấy thể hiện được gu cá tính của riêng mình.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Áo được may từ chất liệu&nbsp;thun cotton&nbsp;co giãn 4 chiều thoáng mát.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Là quà tặng ý nghĩa dành tặng cho một nửa yêu thương.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Phù hợp nam&nbsp;dưới 65kg - nữ&nbsp;dưới 52kg.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Bộ sản phẩm gồm:&nbsp;1 áo cho nam + 1 áo cho nữ.</span></span></p>
	</li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(131000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (152, N'Áo thun cặp in họa tiết chữ cá tính', 20, N'6629-118621151458920148357740406629-11862.jpg', 3, N'<ul>
	<li>
		<p>
			<span><span>Thiết kế tay ngắn, cổ tròn, trơn màu in họa tiết cá tính tạo sự khác lạ.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Mang vẻ năng động, trẻ trung mà còn giúp bạn cùng người ấy thể hiện được gu cá tính của riêng mình.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Áo được may từ chất liệu thun cotton thoáng mát, thấm hút mồ hôi tốt cho bạn thoải mái vận động.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Bộ sản phẩm gồm: 1 áo nam + 1 áo nữ.<br>
			Thích hợp nam &lt;65kg. Nữ &lt; 52kg.</span></span></p>
	</li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(131000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (153, N'Áo thun cặp tay dài in họa tiết phá cách', 20, N'6359-11586135653278201413307582576359-11586.jpg', 3, N'<ul>
	<li>
		<span>Áo được thiết kế tay ngắn, cổ tròn cùng họa tiết lạ mắt , tay và thân áo sau phối màu độc đáo.</span></li>
	<li>
		<span><span>Mang vẻ năng động, trẻ trung mà còn giúp bạn cùng người ấy thể hiện được gu cá tính của riêng mình.</span></span></li>
	<li>
		<span><span>Áo thun cặp in họa tiết cá tính tạo ấn tượng đặc biệt khi hai bạn sánh bước bên nhau.</span></span></li>
	<li>
		<span><span>Chất liệu thun cotton thoáng mát, thấm hút mồ hôi tốt cho bạn thoải mái vận động.</span></span></li>
	<li>
		<span><span>Bộ sản phẩm gồm: 1 áo Nam + 1 áo Nữ. </span></span></li>
	<li>
		<span><span>Thích hợp nam &lt;65kg. Nữ &lt; 52kg.</span></span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(219000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (155, N'Áo thun cặp in hình gấu dễ thương', 20, N'6046-115611646492682014794884926046-11561.jpg', 3, N'<ul>
	<li>
		<span>Áo được thiết kế tay ngắn, cổ tròn cùng họa tiết ngộ nghĩnh.</span></li>
	<li>
		<span><span>Mang vẻ năng động, trẻ trung mà còn giúp bạn cùng người ấy thể hiện được gu cá tính của riêng mình.</span></span></li>
	<li>
		<span><span>Áo thun cặp in họa tiết gấu ngộ nghĩnh tạo ấn tượng đặc biệt khi hai bạn sánh bước bên nhau.</span></span></li>
	<li>
		<span><span>Áo được may từ chất liệu thun cotton thoáng mát, thấm hút mồ hôi tốt cho bạn thoải mái vận động.</span></span></li>
	<li>
		<span><span>Bộ sản phẩm gồm: 1 áo nam + 1 áo nữ.</span></span></li>
	<li>
		<span><span>Thích hợp nam &lt;65kg. Nữ &lt; 52kg.</span></span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(189000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (156, N'Áo thun cặp in họa tiết chữ cá tính', 20, N'6316-11543123841268201419059590256316-11543.jpg', 3, N'<ul>
	<li>
		<span>Áo được thiết kế tay ngắn, cổ tròn cùng họa tiết in trên áo với màu sắc nổi bật.</span></li>
	<li>
		<span><span>Mang vẻ năng động, trẻ trung mà còn giúp bạn cùng người ấy thể hiện được gu cá tính của riêng mình.</span></span></li>
	<li>
		<span><span>Áo thun cặp in họa tiết chữ cá tính tạo điểm nhấn.</span></span></li>
	<li>
		<span><span>Chất liệu thun thoáng mát, thấm hút mồ hôi tốt cho bạn thoải mái vận động.</span></span></li>
	<li>
		<span>Sản phẩm gồm áo nam + áo nữ</span></li>
	<li>
		<span>Thích hợp Nam &lt;65kg và Nữ &lt; 52kg.</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(189000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (157, N'Áo thun cặp Raglan họa tiết lính phá cách', 19, N'6315-115411226526820145202308476315-11541.jpg', 3, N'<ul>
	<li>
		<span>Mang vẻ năng động, trẻ trung mà còn giúp bạn cùng người ấy thể hiện được gu cá tính của riêng mình.</span></li>
	<li>
		<span><span>Áo thun cặp in họa tiết cá tính, tay áo dài phối họa tiết lính tạo điểm nhấn.</span></span></li>
	<li>
		<span><span>Chất liệu thun thoáng mát, thấm hút mồ hôi tốt cho bạn thoải mái vận động.</span></span></li>
	<li>
		<span>Sản phẩm gồm áo nam + áo nữ</span></li>
	<li>
		<span>Thích hợp Nam &lt;65kg và Nữ &lt; 52kg.</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(199000 AS Decimal(18, 0)), 1)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (158, N'Áo thun cặp 1993 cá tính', 20, N'5931-11185941108820144799426325931-11185.jpg', 3, N'<ul>
	<li>
		<span>Form áo rộng, mặc thoải mái, tạo cảm giác năng động, dễ thương và vô cùng cá tính cho couple.</span></li>
	<li>
		<span>Thiết kế đơn giản với áo dạng cổ tròn, tay ngắn, in họa tiết chữ cá tính.</span></li>
	<li>
		<span>Thích hợp cho bạn mặc đi chơi, dạo phố cùng người yêu.</span></li>
	<li>
		<span>Chất liệu: Thun 4 chiều, co giãn, thoáng mát tạo cảm giác thoải mái, năng động cho người mặc.</span></li>
	<li>
		<span>Sản phẩm gồm: áo nam + áo nữ.</span></li>
	<li>
		<span>Phù hợp với nam dưới 65kg, nữ dưới 54kg (tùy chiều cao).</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(189000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (159, N'Áo khoác nam kaki 2 lớp Riton', 20, N'3130-1188316112889201411208158863130-11883.jpg', 4, N'<ul>
	<li>
		<p>
			<span><span>Thiết kế năng động, khóa kéo, tay áo dài có bo, tạo nên phong cách thời trang cá tính, sành điệu.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Cho bạn nam phong cách thật ngầu cùng vẻ ngoài vô cùng năng động, khỏe khoắn.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Thiết kế năng động, phong cách với chất liệu vải Kaki 2 lớp bền đẹp.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Freesize. Thích hợp nam dưới 70kg.</span></span></p>
	</li>
	<li>
		<span><span>Kích thước: Dài 69cm, Vai 48cm, Tay 61cm</span></span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(285000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (160, N'Áo khoác nam 2 màu thời trang', 20, N'1972125281662014810689892.jpg', 4, N'<ul>
	<li>
		<p>
			<span>Áo khoác nam thời trang thể hiện phong cách trẻ trung, cá tính của phái mạnh.</span></p>
	</li>
	<li>
		<p>
			<span><span>Thiết kế tinh tế với cổ áo bo, 2 viền cách điệu, phá cách với 2 màu nâu và xanh.&nbsp;</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Chất liệu vải kaki dày dặn, thấm hút tốt, cho bạn cảm giác thoải mái khi mặc.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Giúp bảo vệ cơ thể khỏi nắng nóng, đồng thời giữ ấm cơ thể trong mùa lạnh.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Kích thước: dài 65, ngực 55, eo 51</span><br>
			<strong>Thích hợp cho bạn nam từ 65 kg trở xuống<br>
			<span>Xuất xứ : Hàng đặt may tại Việt Nam</span></strong></span><br>
			&nbsp;</p>
	</li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(189000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (162, N'Áo Jacket nút cài Hàn Quốc', 20, N'2112125371662014469867846.jpg', 4, N'<ul>
	<li>
		<p>
			<strong><span><span>Áo khoác nam thời trang thể hiện phong cách trẻ trung, cá tính của phái mạnh.</span></span></strong></p>
	</li>
	<li>
		<p>
			<strong><span><span>Thiết kế tinh tế với tay áo phối màu, phía ngực áo cách điệu một túi làm nhấn mạnh thêm phần áo.&nbsp;</span></span></strong></p>
	</li>
	<li>
		<p>
			<strong><span><span>Chất liệu kaki cao cấp, thấm hút tốt, cho bạn cảm giác thoải mái khi mặc.</span></span></strong></p>
	</li>
	<li>
		<p>
			<strong><span><span>Giúp bảo vệ cơ thể khỏi nắng nóng, đồng thời giữ ấm cơ thể trong mùa lạnh.</span></span></strong></p>
	</li>
	<li>
		<strong><span><span>Kích thước: Dài áo 72cm, Vai 44cm, Tay 66cm.</span></span></strong></li>
	<li>
		<span><strong><span>Xuất xứ: hàng đặt may tại Việt Nam.</span></strong></span></li>
	<li>
		<span><strong>Thích hợp cho bạn nam từ 65 kg trở xuống.</strong></span></li>
</ul>', CAST(0xA3C40000 AS SmallDateTime), CAST(199000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (163, N'Áo khoác nam thể thao thêu logo', 20, N'6966-12267155652259201414022133246966-12267.jpg', 4, N'<ul>
	<li>
		<span>Thiết kế năng động hợp thời trang với áo cổ đứng, tay dài khóa kéo trước kèm hai túi bên trong.</span></li>
	<li>
		<span>Màu sắc đen và trắng giúp bạn nam trẻ trung và nam tính hơn, và chống nắng hiệu quả.</span></li>
	<li>
		<span>Chất liệu: Vải cào dày dặn với lớp vải thun mềm bên trong. </span></li>
	<li>
		<span>Kích thước: Dài 73cm, Vai 50cm, Tay 64cm </span></li>
	<li>
		<span>Sai số 1-2cm. </span></li>
	<li>
		<span>Phù hợp với bạn dưới 65kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(159000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (164, N'Áo khoác Unisex thun dẻo phối màu', 17, N'6962-12456161439610201420869108176962-12456.jpg', 4, N'<ul>
	<li>
		<span><span>Thiết kế đơn giản với tay dài, dây kéo chắc chắn, thân áo viền sọc và phối màu phần tay, form áo khỏe khoắn giúp bạn khoe vẻ&nbsp;cá tính, mạnh mẽ.</span></span></li>
	<li>
		<span><span>Kiểu dáng&nbsp;năng động, trẻ trung,&nbsp;tôn lên vẻ khỏe khoắn.</span></span></li>
	<li>
		<span><span>Chất liệu: Thun dẻo, co giãn thể hiện sự khỏe khoắn cùng phong cách thời trang năng động.</span></span></li>
	<li>
		<span><span>Size XL: Dài áo 61cm, Tay 50cm</span></span></li>
	<li>
		<span><span>Size XXXL: Dài áo 66cm,</span></span><span>&nbsp;Tay 55cm</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(239000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (166, N'Áo khoác nam giả vest cá tính', 20, N'7240-124511613610201412060732267240-12451.jpg', 4, N'<ul>
	<li>
		<p>
			<span><span>Kiểu dáng đơn giản, hợp thời trang, tạo phong cách&nbsp;lịch lãm, sang trọng&nbsp;cho nam giới.&nbsp;</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Thiết kế tinh tế, tăng thêm vẻ lịch lãm cho phái mạnh.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Mang đến sự thoải mái, tự tin cho người mặc.&nbsp;</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Là sản phẩm mới nằm trong xu hướng thời trang năng động được thiết kế dành riêng cho phái mạnh.</span></span></p>
	</li>
	<li>
		<span>Chất liệu: Nỉ ngoại</span></li>
	<li>
		<span>Kích thước: Dài 66cm, Vai 45cm, Tay 62cm</span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
	<li>
		<span>Phù hợp với bạn dưới 70kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(189000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (167, N'Áo khoác nam phối họa tiết', 20, N'7159-12340155412309201413715486267159-12340.jpg', 4, N'<ul>
	<li>
		<span>Kiểu dáng thể thao tay dài, áo đứng có mũ thích hợp cho bạn nam với phong cách trẻ trung, năng động.</span></li>
	<li>
		<span>Thích hợp phối cùng các bộ trang phục khỏe khoắn thường ngày.</span></li>
	<li>
		<span>Chất liệu: Nỉ thông thoáng và co giãn tạo cảm giác thoải mái và tự tin cho người mặc.</span></li>
	<li>
		<span>Kích cỡ: Dài 64cm, Vai 44cm, Tay 59cm</span></li>
	<li>
		<span>Thích hợp với bạn nam &lt;68kg.</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(189000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (168, N'Áo khoác nam thể thao phối màu', 20, N'6982-1228316391526920141432881996982-12283.jpg', 4, N'<ul>
	<li>
		<p>
			<span>Áo khoác nam thời trang thể hiện phong cách trẻ trung, cá tính của phái mạnh.</span></p>
	</li>
	<li>
		<p>
			<span><span>Thiết kế tinh tế với cổ áo bo, 2 viền cách điệu, phá cách với thân áo phối m.&nbsp;</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Chất liệu: Nỉ ngoại dày dặn, thấm hút tốt, cho bạn cảm giác thoải mái khi mặc.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Giúp bảo vệ cơ thể khỏi nắng nóng, đồng thời giữ ấm cơ thể trong mùa lạnh.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Kích thước: Dài 64cm, Vai 46cm, Tay 61cm<br>
			Sai số 1-2cm.<br>
			Phù hợp với bạn dưới 65kg (tùy chiều cao)</span></span></p>
	</li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(189000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (169, N'Áo khoác nam dù phối túi phong cách', 20, N'6914-122841643452692014443017186914-12284.jpg', 4, N'<ul>
	<li>
		<span><span>Thiết kế tay dài, khóa kéo chắc chắn, cổ cao cho người mặc phong cách trẻ trung, năng động.&nbsp;</span></span></li>
	<li>
		<span>Chiếc áo giúp che chắn bụi bặm, nắng nóng, chiếc áo còn giữ ấm cơ thể lúc trở lạnh.</span></li>
	<li>
		<span>Chất liệu: Dù</span></li>
	<li>
		<span>Kích thước: Dài 69cm, Vai 47cm, Tay 62cm</span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
	<li>
		<span>Phù hợp với bạn dưới 70kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(235000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (170, N'Áo vest nam thời trang cao cấp', 20, N'6877-1217215323020920144787064446877-12172.jpg', 4, N'<ul>
	<li>
		<span>Kiểu dáng đơn giản, hợp&nbsp;thời trang, tạo phong cách&nbsp;lịch lãm,&nbsp;sang trọng&nbsp;cho nam giới.&nbsp;</span></li>
	<li>
		<span><span>Thiết kế vừa sang trọng, lịch lãm vừa trẻ trung, năng động.</span></span></li>
	<li>
		<span><span>Mang đến cho phái mạnh vẻ&nbsp;sang trọng, lịch lãm và vô cùng cá tính.&nbsp;</span></span></li>
	<li>
		<span><span>Phù hợp cho những sự kiện, cuộc hẹn hò lãng mạn, hay những buổi hẹn, party...</span></span></li>
	<li>
		<span><span>Chất liệu: Kaki Hàn Quốc cao cấp kèm lớp dù mềm mịn, thoáng mát.</span></span></li>
	<li>
		<span><span>Kích thước: Dài 64cm, Vai 38cm, Tay 64cm</span></span></li>
	<li>
		<span><span><em>Sai số 1-2cm</em></span></span></li>
</ul>', CAST(0xA2560000 AS SmallDateTime), CAST(335000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (171, N'Quần âu Kaki nam thời trang', 20, N'6975-125781614541010201414229482856975-12578.jpg', 5, N'<ul>
	<li>
		<span>Thiết kế đơn giản với 2 túi xéo cùng túi mổ đem đến vẻ cá tính và chuyên nghiệp khi đi làm.</span></li>
	<li>
		<span>Dễ dàng mix cùng các kiểu sơ mi tạo phong cách lịch lãm, sành điệu nơi công sở.</span></li>
	<li>
		<span>Chất liệu: Kaki cotton mịn, tạo form dáng đẹp.</span></li>
	<li>
		<span>Size: &nbsp;29 - 30 - 31- 32 - 33 - 34</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(199000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (174, N'Quần âu Kaki nam thời trang', 20, N'6913-12256114031259201412982486066913-12256.jpg', 5, N'<ul>
	<li>
		<span>Thiết kế form suông tôn dáng, đường may tinh tế, tỉ mỉ giúp các chàng trai thể hiện phong thái nam tính.</span></li>
	<li>
		<span>Chất liệu kaki thông thoáng, tạo cảm giác thoải mái khi vận động.</span></li>
	<li>
		<span>Dễ dàng kết hợp với các mẫu sơ mi, áo thun ...</span></li>
	<li>
		<span>Size: 27 - 28 - 29 - 30 - 31 - 32&nbsp;</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(169000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (175, N'Quần âu Kaki nam túi viền màu thời trang - Nâu', 20, N'6156-119701715011920142873030816156-11970.jpg', 5, N'<ul>
	<li>
		<span>Form dáng suông trẻ trung có 2 túi trước và túi sau, đường may sắc sảo, tỉ mỉ. Chiếc quần tạo điểm nhấn với phần túi viền màu.</span></li>
	<li>
		<span>Kết hợp dễ dàng với nhiều kiểu áo thun, sơ mi, giày lười hoặc giày thể thao thể hiện vẻ nam tính và sánh điệu.</span></li>
	<li>
		<span>Chất liệu: Kaki dày dặn, kiểu dáng luôn hợp mốt, dễ thấm hút mồ hôi, tạo cảm giác thoải mái khi mặc.</span></li>
	<li>
		<span>Size: 27 - 28 - 29 - 30 - 31 - 32</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(169000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (176, N'Quần âu Kaki nam thời trang', 20, N'6973-1257616751010201413403081576973-12576.jpg', 5, N'<ul>
	<li>
		<span>Thiết kế form suông tôn dáng, đường may tinh tế, tỉ mỉ giúp các chàng trai thể hiện phong thái nam tính.</span></li>
	<li>
		<span>Chất liệu kaki thông thoáng, tạo cảm giác thoải mái khi vận động.</span></li>
	<li>
		<span>Dễ dàng kết hợp với các mẫu sơ mi, áo thun ...</span></li>
	<li>
		<span>Size: 29 - 30 - 31 - 32 - 33</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(199000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (177, N'Quần âu Kaki nam viền màu thời trang', 20, N'6852-1230191730299201420987348886852-12301.jpg', 5, N'<ul>
	<li>
		<span>Form dáng suông trẻ trung có 2 túi trước và túi sau, đường may sắc sảo, tỉ mỉ. Chiếc quần tạo điểm nhấn với phần túi viền màu.</span></li>
	<li>
		<span>Kết hợp dễ dàng với nhiều kiểu áo thun, sơ mi, giày lười hoặc giày thể thao thể hiện vẻ nam tính và sánh điệu.</span></li>
	<li>
		<span>Chất liệu: Kaki dày dặn, kiểu dáng luôn hợp mốt, dễ thấm hút mồ hôi, tạo cảm giác thoải mái khi mặc.</span></li>
	<li>
		<span>Size: 27 - 28 - 29 - 30 - 31 - 32</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(169000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (178, N'Quần âu kaki nam Thái Lan cao cấp   - Nâu nhạt', 20, N'6561-119631692811920147109956916561-11963.jpg', 5, N'<ul>
	<li>
		<span>Quần âu công sở là loại trang phục đem đến dáng vẻ lịch lãm và chuyên nghiệp khi đi làm.</span></li>
	<li>
		<span>Kiểu dáng quần âu ống suông, lưng bản to, có 2 túi trước và túi sau.</span></li>
	<li>
		<span>Dễ kết hợp cùng sơ mi, thun ...</span></li>
	<li>
		<span>Chất liệu: Kaki cotton mềm mịn, form dáng đẹp, tạo cảm giác thoải mái khi vận động.</span></li>
	<li>
		<span>Size: 30 - 32 - 34 </span></li>
	<li>
		<span>Xuất xứ: Thailand</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(325000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (179, N'Quần âu kaki nam Thái Lan cao cấp', 20, N'6560-1195714561511920149150894806560-11957.jpg', 5, N'<ul>
	<li>
		<span>Form dáng suông trẻ trung có 2 túi xéo và túi sau nổi bật, đường may sắc sảo, tỉ mỉ.&nbsp;</span></li>
	<li>
		<span>Kết hợp dễ dàng với nhiều kiểu áo thun, sơ mi, giày lười hoặc giày thể thao thể hiện vẻ nam tính và sánh điệu.</span></li>
	<li>
		<span>Chất liệu: Cotton Thái cao cấp</span></li>
	<li>
		<span>Size: 30 - 32 - 34 </span></li>
	<li>
		<span>Xuất xứ: Thailand</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(325000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (180, N'Quần âu Kaki nam viền caro thời trang', 20, N'6351-117381455133920145829201656351-11738.jpg', 5, N'<ul>
	<li>
		<span>Form dáng suông trẻ trung có 2 túi trước và túi sau, đường may sắc sảo, tỉ mỉ. Chiếc quần tạo điểm nhấn với phần túi viền caro.</span></li>
	<li>
		<span>Kết hợp dễ dàng với nhiều kiểu áo thun, sơ mi, giày lười hoặc giày thể thao thể hiện vẻ nam tính và sánh điệu.</span></li>
	<li>
		<span>Chất liệu: Kaki dày dặn, kiểu dáng luôn hợp mốt, dễ thấm hút mồ hôi, tạo cảm giác thoải mái khi mặc.</span></li>
	<li>
		<span>Size: 27 - 28 - 29 - 30 - 31 - 32</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(169000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (181, N'Quần âu Kaki nam thời trang', 19, N'6155-1145414134421820145268060156155-11454.jpg', 5, N'<ul>
	<li>
		<span>Thiết kế form suông tôn dáng, đường may tinh tế, tỉ mỉ giúp các chàng trai thể hiện phong thái nam tính.</span></li>
	<li>
		<span>Chất liệu kaki thông thoáng, tạo cảm giác thoải mái khi vận động.</span></li>
	<li>
		<span>Dễ dàng kết hợp với các mẫu sơ mi, áo thun ...</span></li>
	<li>
		<span>Size: 27 - 28 - 29 - 30 - 31 - 32&nbsp;</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(169000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (182, N'Quần jeans nam classic Strauss thời trang', 19, N'6214-11458177342182014928992586214-11458.jpg', 5, N'<ul>
	<li>
		<span>Form dáng suông trẻ trung có 2 túi trước và túi sau, đường may sắc sảo, tỉ mỉ.</span></li>
	<li>
		<span>Kết hợp dễ dàng với nhiều kiểu áo thun, sơ mi, giày lười hoặc giày thể thao thể hiện vẻ nam tính và sánh điệu.</span></li>
	<li>
		<span>Chất liệu: Jeans bụi, kiểu dáng luôn hợp mốt, dễ thấm hút mồ hôi, tạo cảm giác thoải mái khi mặc.</span></li>
	<li>
		<span>Size: &nbsp;29 - 30 - 31 - 32</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(215000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (184, N'Quần thun nam thể thao phối màu cá tính', 20, N'5037-1047095494720143814184265037-10470.jpg', 6, N'<ul>
	<li>
		<span>Quần thun nam thể thao mang đến cho chàng trai vẻ ngoài năng động, khỏe khoắn và đầy cá tính.</span></li>
	<li>
		<span>Form dáng lửng bo thun ôm chân kết hợp với dây rút lưng co giãn giúp bạn thoải mái điều chỉnh sao cho phù hợp với vóc dáng.</span></li>
	<li>
		<span>Dễ dàng mix cùng các kiểu áo như: ba lỗ, sát cánh, t-shirt đơn giản để diện khi chơi thể thao hay dạo phố...</span></li>
	<li>
		<span>Chất liệu: Thun mềm mại, thoáng mát, co giãn và thấm hút mồ hôi tốt, tạo cảm giác thoải mái khi mặc. </span></li>
	<li>
		<span>Freesize phù hợp với bạn dưới 75kg. </span></li>
	<li>
		<span>Kích thước: Dài quần 75cm</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(145000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (185, N'Quần short nam kaki đen', 20, N'2692126281662014627992689.jpg', 6, N'<ul>
	<li>
		<strong><span>Quần Short Kaki nam năng động được may từ chất liệu kaki dễ thấm hút mồ hôi, cho bạn thoải mái vận động ở mọi tư thế.</span></strong></li>
	<li>
		<strong><span>Kiểu dáng: 2 túi xéo phía trước, 2 túi mổ phía sau.</span></strong></li>
	<li>
		<strong><span>Chất liệu vải kaki trẻ trung sẽ giúp bạn nam trở nên thật sành điệu và cá tính khi đi bất cứ nơi đâu.</span></strong></li>
	<li>
		<strong><span>Khi diện chiếc quần này, bạn chỉ cần kết hợp thêm 1 chiếc áo thun thời trang là đã trở nên thật khỏe khoắn và tự tin xuống phố.</span></strong></li>
	<li>
		<strong><span>Thích hợp mặc ở nhà, đi chơi, dạo phố, dã ngoại...</span></strong></li>
	<li>
		<strong><span>SIZE: 28 - 29 - 30 - 31 - 32</span></strong></li>
	<li>
		<strong><span>Sản xuất: Việt Nam.</span></strong></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(125000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (186, N'Quần short nam Stars thời trang', 20, N'5851-1109414383258201416597412085851-11094.jpg', 6, N'<ul>
	<li>
		<span>Thiết kế short lưng dây rút với túi 2 bên, form thể thao mang lại phong cách trẻ trung năng động cho bạn.</span></li>
	<li>
		<span>Đường may chắc chắn, chất liệu bền có độ co giãn tạo cho bạn cảm giác thoải mái khi vận động thích hợp cho các bạn trẻ năng động hay tham gia chơi thể thao.</span></li>
	<li>
		<span>Thích hợp mặc ở nhà, đi chơi, dạo phố, tập thể thao v.v....</span></li>
	<li>
		<span>Chất liệu: Thun da cá.</span></li>
	<li>
		<span>Phù hợp với bạn dưới 70kg (tùy chiều cao).</span></li>
	<li>
		<span>Kích thước: Dài 54cm, Eo 37*2cm (lưng thun)</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(109000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (187, N'Đồ bộ nam thể thao in logo 1620', 20, N'6294-11498142710238201419651098946294-11498.jpg', 6, N'<ul>
	<li>
		<span>Thiết kế kiểu đồ thể thao bóng chày, phá cách với tay và túi viền màu nổi bật, quần dáng lửng bo thun ôm chân &nbsp;tôn nét nam tính và thân hình vạm vỡ.</span></li>
	<li>
		<span>Thích hợp diện tập thể thao, đi dạo.</span></li>
	<li>
		<span>Chất liệu: Thun nỉ, dày dặn, hút ẩm tốt, thoải mái cho người mặc.</span></li>
	<li>
		<span>Phù hợp với bạn nam dưới 80kg (tùy chiều cao).</span></li>
	<li>
		<span>Kích thước: Áo: Dài 70cm, Vai 46cm</span></li>
	<li>
		<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Quần: Dài 75cm, Eo 36*2cm (lưng thun).</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(225000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (188, N'Quần short nam thời trang-TR68', 20, N'6822-12282155732269201418544739056822-12282.jpg', 6, N'<ul>
	<li>
		<span>Thiết kế đơn giản với short phong cách trẻ trung, thanh lịch dễ dàng phối cùng các kiểu áo: thun, sơ mi, ba lỗ.</span></li>
	<li>
		<span>Đường may sắc sảo, kiểu dáng trẻ trung, phù hợp với mọi bạn nam.</span></li>
	<li>
		<span>Thích hợp mặc ở nhà, đi chơi, dạo phố, tập thể thao ...</span></li>
	<li>
		<span>Chất liệu: Kaki</span></li>
	<li>
		<span>Size: 28-29-30-31-32-34</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(149000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (189, N'Quần short nam thời trang- ZS04', 20, N'7174-125451401991020146718892887174-12545.jpg', 6, N'<ul>
	<li>
		<span>Short đơn giản, kiểu dáng trẻ trung, thanh lịch tôn nét khỏe khoắn và nam tính ở bạn nam.</span></li>
	<li>
		<span>Dễ dàng phối cùng các kiểu áo: thun, sơ mi ...</span></li>
	<li>
		<span>Thích hợp mặc ở nhà, đi chơi, tập thể thao...</span></li>
	<li>
		<span>Chất liệu: Kaki</span></li>
	<li>
		<span>Size: 28-29-30-31-32</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(125000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (190, N'Quần short nam thời trang - ZS05', 20, N'7175-1254614122910201420934152117175-12546.jpg', 6, N'<ul>
	<li>
		<p>
			<span><span>Là trang phục thiết yếu nhất của phái nam bởi sự&nbsp;tiện dụng, năng động và khỏe khoắn.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Cho phái mạnh khẳng định&nbsp;phong cách thời trang&nbsp;của riêng mình.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Thiết kế đơn giản trên nền vải kaki mềm, thoáng mát.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Dễ dàng kết hợp với áo sơ mi hay áo thun phông rộng theo sở thích của bạn.<br>
			Chất liệu: Vải mềm mịn, thoáng mát, tạo cảm giác thoải mái cho người mặc.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Size:&nbsp;28 - 29 - 30 - 31 - 32</span></span></p>
	</li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(125000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (191, N'Quần short nam thời trang - CRK04', 20, N'6971-12286164752269201415426216096971-12286.jpg', 6, N'<ul>
	<li>
		<p>
			<span><span>Là trang phục thiết yếu nhất của phái nam bởi sự&nbsp;tiện dụng, năng động và khỏe khoắn.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Cho phái mạnh khẳng định&nbsp;phong cách thời trang&nbsp;của riêng mình.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Thiết kế đơn giản trên nền vải kaki mềm, thoáng mát.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Dễ dàng kết hợp với áo sơ mi hay áo thun phông rộng theo sở thích của bạn.<br>
			Chất liệu: Kaki</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Size: &nbsp;29 - 30 - 31 - 32 - 33</span></span></p>
	</li>
</ul>', CAST(0xA2550000 AS SmallDateTime), CAST(139000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (192, N'Quần short nam thời trang - CRK03', 20, N'6970-12285164619269201413107208316970-12285.jpg', 6, N'<ul>
	<li>
		<p>
			<span><span>Quần kaki nam thể hiện sự năng động, trẻ trung của phái mạnh.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Kiểu dáng form rộng sành điệu, gồm 2 túi trước và 2 túi hộp phía sau.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Chất liệu kaki dày dặn, thấm hút tốt, mang đến cảm giác thoải mái, thông thoáng trong mọi hoạt động.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Quần dễ phối cùng nhiều màu áo</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Thích hợp mặc mà, đi chơi, dạo phố…<br>
			Size: &nbsp;29 - 30 - 31 - 32 - 33</span></span></p>
	</li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(139000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (193, N'Quần short nam thời trang - CRK02', 20, N'6969-12272992726920142507649466969-12272.jpg', 6, N'<ul>
	<li>
		<strong><span>Quần Short Kaki nam năng động, kiểu dáng trẻ trung&nbsp;<strong><span>giúp bạn nam trở nên thật sành điệu và cá tính khi đi bất cứ nơi đâu.</span></strong></span></strong></li>
	<li>
		<strong><span>Kiểu dáng: 2 túi xéo phía trước, 2 túi mổ phía sau.</span></strong></li>
	<li>
		<strong><span>Chất liệu: Kaki</span></strong></li>
	<li>
		<strong><span>Khi diện chiếc quần này, bạn chỉ cần kết hợp thêm 1 chiếc áo thun thời trang là đã trở nên thật khỏe khoắn và tự tin xuống phố.</span></strong></li>
	<li>
		<strong><span>Thích hợp mặc ở nhà, đi chơi, dạo phố, dã ngoại...</span></strong></li>
	<li>
		<strong><span>SIZE: &nbsp;29 - 30 - 31 - 32 - 33</span></strong></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(139000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (194, N'Quần thun nam thể thao in họa tiết', 20, N'6964-122621520625920145967513626964-12262.jpg', 7, N'<ul>
	<li>
		<span>Thiết kế lưng thun, kèm với dây rút tạo cảm giác thoải mái khi mặc.</span></li>
	<li>
		<span>Eo thun và rút dây giúp bạn nam dễ dàng điều chỉnh.</span></li>
	<li>
		<span>Thích hợp mặc ở nhà hay đi tập thể thao, đi biển...</span></li>
	<li>
		<span>Dễ dàng kết hợp với các mẫu áo thun.</span></li>
	<li>
		<span>Chất liệu: thun cotton thoáng mát, thấm hút mồ hôi tốt, dễ dàng giặt ủi.</span></li>
	<li>
		<span>Kích thước: Dài 92cm, Mông 45*2cm</span></li>
	<li>
		<span>Sai số 1-2cm </span></li>
	<li>
		<span>Phù hợp với bạn dưới 65kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(135000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (195, N'Quần lửng nam thun thể thao phối caro', 20, N'375312104416620141702990491.jpg', 7, N'<ul>
	<li>
		<span>Thiết kế năng động với short lửng, lưng dây rút có 2 túi trước và 1 túi sau, quần lửng ôm chân, phối họa tiết caro năng động.</span></li>
	<li>
		<span>Kiểu dáng trẻ trung, thích hợp cho bạn trẻ năng động.</span></li>
	<li>
		<span>Thích hợp mặc ở nhà, đi chơi, chơi thể thao ...</span></li>
	<li>
		<span>Chất liệu thun cho bạn nam thoải mái vận động.</span></li>
	<li>
		<span>Freesize, phù hợp với bạn nam dưới 65kg.</span></li>
	<li>
		<span>Kích thước: Dài 70cm</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(135000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (196, N'Đồ bộ nam thể thao thời trang Hàn Quốc', 20, N'7312-1260210395131020144787652537312-12602.jpg', 7, N'<ul>
	<li>
		<span>Thiết kế kiểu đồ thể thao phá cách áo dây kéo thiết kế nổi bật, quần form dài lưng thun kèm dây rút tôn nét nam tính và thân hình vạm vỡ.</span></li>
	<li>
		<span>Thích hợp diện tập thể thao, đi dạo.</span></li>
	<li>
		<span>Chất liệu: Thun nỉ, dày dặn, hút ẩm tốt, thoải mái cho người mặc.</span></li>
	<li>
		<span>Kích thước: Áo: Dài 65cm, Vai 45cm, Tay 64cm</span></li>
	<li>
		<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Quần: Dài 98cm, Eo 37*2cm (lưng thun), Mông 49*2cm. </span></li>
	<li>
		<span>Sai số 1-2cm </span></li>
	<li>
		<span>Phù hợp với bạn dưới 68kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(399000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (197, N'Đồ bộ nam thể thao in logo', 20, N'7311-12601103812131020149684060127311-12601.jpg', 7, N'<ul>
	<li>
		<span>Đồ bộ thể thao nam thời trang với quần dài lưng thun kèm dây rút, dáng áo hoodie in logo cá tính.</span></li>
	<li>
		<span>Kiểu dáng trẻ trung, khỏe khoắn tôn nét nam tính ở bạn.</span></li>
	<li>
		<span>Thích hợp mặc ở nhà, dạo phố hoặc tập thể thao.</span></li>
	<li>
		<span>Chất liệu: Thun thoáng mát, thoải mái vận động. </span></li>
	<li>
		<span>Kích thước: Áo: Dài 63cm, Vai 43cm, Tay 59cm </span></li>
	<li>
		<span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Quần: Dài 97cm, Eo 34*2cm, Mông 49*2cm </span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
	<li>
		<span>Phù hợp với bạn dưới 68kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(359000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (198, N'Quần thun nam phối màu thời trang', 20, N'6960-1257516018101020145072224866960-12575.jpg', 7, N'<ul>
	<li>
		<span>Form quần lửng, phối màu nổi bật, thiết kế lưng dây rút giúp bạn dễ dàng điều chỉnh khi mặc.</span></li>
	<li>
		<span>Thích hợp mặc ở nhà, tập thể thao, dạo phố.</span></li>
	<li>
		<span>Chất liệu: Thun dày dặn, thấm hút mồ hôi tốt, tạo cảm giác thoải mái cho người mặc.</span></li>
	<li>
		<span>Kích thước: Dài 85cm, Mông 50*2cm&nbsp;</span></li>
	<li>
		<span>Sai số 1-2cm</span></li>
	<li>
		<span>Thích hợp với bạn dưới 65kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(125000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (199, N'Quần thun thể thao nam in logo nổi bật', 20, N'6718-120499572615920142166920746718-12049.jpg', 7, N'<ul>
	<li>
		<span>Kiểu dáng trẻ trung, nổi bật với logo cá tính</span></li>
	<li>
		<span>Hai túi hai bên và một túi phía sau thuận tiện để bạn bỏ đồ</span></li>
	<li>
		<span>Bo thun ở chân và lưng thun dây rút tiện lợi</span></li>
	<li>
		<span>Phom dáng dài, chất liệu thun nỉ tốt, dày, có độ co dãn bạn trai có thể thoải mái hoạt động</span></li>
	<li>
		<span>Kích cỡ: Dài: 90cm, eo: 37x2cm (lưng thun)</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(149000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (201, N'Quần thun nam in chữ cá tính', 20, N'6666-11907136599920141238271946666-11907.jpg', 7, N'<ul>
	<li>
		<span>Thiết kế đơn giản với 2 túi trước, thân quần in chữ phá cách. Quần lưng dây rút giúp bạn dễ dàng điều chỉnh kích thước.</span></li>
	<li>
		<span>Kiểu dáng thể thao, trẻ trung. Thích hợp mặc ở nhà, tập thể thao, đi chơi...</span></li>
	<li>
		<span>Chất liệu: Nỉ ngoại bền đẹp, thoáng mát, thấm hút mồ hôi tốt</span></li>
	<li>
		<span>Kích thước: Dài 103cm, Eo 38*2cm, Mông 50*2cm</span></li>
	<li>
		<span>Sai số 1- 2cm. Phù hợp với bạn dưới 70kg (tùy chiều cao)</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(159000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (202, N'Quần short nam in logo thời trang', 20, N'2243_315_315.jpg', 7, N'<ul>
	<li>
		<p>
			<span><span>Kiểu d&aacute;ng<strong>&nbsp;</strong>thời trang, trẻ trung,&nbsp;th&iacute;ch hợp cho c&aacute;c bạn trẻ năng động.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Thiết kế sang trọng tạo n&ecirc;n&nbsp;phong c&aacute;ch khỏe khoắn&nbsp;ng&agrave;y h&egrave;.&nbsp;</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Quần short nam &nbsp;tạo n&ecirc;n sự mạnh mẽ, hấp dẫn v&agrave; l&ocirc;i cuốn cho ph&aacute;i mạnh.</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Th&iacute;ch hợp cho những buổi dạo phố c&ugrave;ng bạn b&egrave;, những chuyến du lịch xa...</span></span></p>
	</li>
	<li>
		<p>
			<span><span>Size:&nbsp;<strong>&nbsp;M - L</strong></span></span></p>
	</li>
</ul>
', CAST(0xA3D7038E AS SmallDateTime), CAST(189000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (203, N'Quần thun nam thể thao Hàn Quốc', 20, N'6348-11578104723278201410493740496348-11578.jpg', 7, N'<ul>
	<li>
		<span>Thiết kế short thun lửng với 2 t&uacute;i trước v&agrave; 2 t&uacute;i sau viền m&agrave;u nổi bật. Quần lưng d&acirc;y r&uacute;t gi&uacute;p bạn dễ d&agrave;ng điều chỉnh k&iacute;ch thước.</span></li>
	<li>
		<span>Kiểu d&aacute;ng thể thao, trẻ trung. Th&iacute;ch hợp mặc ở nh&agrave;, tập thể thao, đi chơi...</span></li>
	<li>
		<span>Chất liệu: Thun vảy c&aacute;</span></li>
	<li>
		<span>K&iacute;ch thước: D&agrave;i 73cm, Eo 38*2cm, M&ocirc;ng 49*2cm (sai số 1-2cm)</span></li>
</ul>
', CAST(0xA3D80291 AS SmallDateTime), CAST(139000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (204, N'Quần thun nam thể thao phối màu', 14, N'47751215221662014778199824.jpg', 7, N'<ul>
	<li>
		<span>Trẻ trung, ấn tượng cùng quần thun thể thao nam, cho bạn nam một vóc dáng mạnh mẽ, khỏe khoắn.</span></li>
	<li>
		<span>Đường may chắc chắn, chất liệu bền đẹp, kiểu dáng trẻ trung, thiết kế bo gấu đẹp mắt, phối màu sắc tinh tế.</span></li>
	<li>
		<span>Với chất liệu vải thun cao cấp, thấm hút mồ hôi tốt mang lại cảm giác thoải mái tối đa cho người mặc.</span></li>
	<li>
		<span>Thích hợp cho những buổi tập thể thao, đi chơi ...&nbsp;</span></li>
	<li>
		<span>Màu như hình.</span></li>
	<li>
		<span>Thích hợp cho bạn nam từ 50 - 70kg</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(129000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (205, N'Quần jeans classic nam Huds thời trang', 17, N'6213-1145717635218201414640094076213-11457.jpg', 8, N'<ul>
	<li>
		<span>Form dáng suông trẻ trung có 2 túi trước và túi sau, đường may sắc sảo, tỉ mỉ.</span></li>
	<li>
		<span>Kết hợp dễ dàng với nhiều kiểu áo thun, sơ mi, giày lười hoặc giày thể thao thể hiện vẻ nam tính và sánh điệu.</span></li>
	<li>
		<span>Chất liệu: Jeans bụi, kiểu dáng luôn hợp mốt, dễ thấm hút mồ hôi, tạo cảm giác thoải mái khi mặc.</span></li>
	<li>
		<span>Size: 29 - 30 - 31 - 32</span></li>
</ul>', CAST(0xA3C30000 AS SmallDateTime), CAST(215000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (207, N'Quần jeans nam classic rách cá tính', 19, N'7308-12587145451111020146304637447308-12587.jpg', 8, N'<ul>
	<li>
		<span>Form d&aacute;ng trẻ trung c&oacute; 2 t&uacute;i trước v&agrave; t&uacute;i sau, đường may sắc sảo, tỉ mỉ.</span></li>
	<li>
		<span>Kết hợp dễ d&agrave;ng với nhiều kiểu &aacute;o thun, sơ mi, gi&agrave;y lười hoặc gi&agrave;y thể thao thể hiện vẻ nam t&iacute;nh v&agrave; s&aacute;nh điệu.</span></li>
	<li>
		<span>Chất liệu: Jeans bụi, kiểu d&aacute;ng lu&ocirc;n hợp mốt, dễ thấm h&uacute;t mồ h&ocirc;i, tạo cảm gi&aacute;c thoải m&aacute;i khi mặc.</span></li>
	<li>
		<span>Size: &nbsp;27 - 28 - 29 - 30 - 31</span></li>
</ul>
', CAST(0xA3D703CD AS SmallDateTime), CAST(299000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (208, N'Quần jeans nam classic fashion', 19, N'2014-11-2-16-15-13.jpg', 8, N'<ul>
	<li>
		<span>Form d&aacute;ng su&ocirc;ng trẻ trung, đường may sắc sảo, tỉ mỉ.</span></li>
	<li>
		<span>Kết hợp dễ d&agrave;ng với nhiều kiểu &aacute;o thun, sơ mi, gi&agrave;y lười hoặc gi&agrave;y thể thao thể hiện vẻ nam t&iacute;nh v&agrave; s&aacute;nh điệu.</span></li>
	<li>
		<span>Chất liệu jeans bụi phủi, kiểu d&aacute;ng lu&ocirc;n hợp mốt, dễ thấm h&uacute;t mồ h&ocirc;i, tạo cảm gi&aacute;c thoải m&aacute;i khi mặc.</span></li>
	<li>
		<span>Size: &nbsp;27 - 28 - 29 - 30 - 31&nbsp;</span></li>
</ul>
', CAST(0xA3D703CF AS SmallDateTime), CAST(285000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (209, N'Quần jeans nam classic Strauss thời trang', 20, N'6404-1164415355129820149417638766404-11644.jpg', 8, N'<ul>
	<li>
		<span>Form dáng suông trẻ trung có 2 túi trước và túi sau, đường may sắc sảo, tỉ mỉ.</span></li>
	<li>
		<span>Kết hợp dễ dàng với nhiều kiểu áo thun, sơ mi, giày lười hoặc giày thể thao thể hiện vẻ nam tính và sánh điệu.</span></li>
	<li>
		<span>Chất liệu: Jeans bụi, kiểu dáng luôn hợp mốt, dễ thấm hút mồ hôi, tạo cảm giác thoải mái khi mặc.</span></li>
	<li>
		<span>Size: &nbsp;28 - 29 - 30 - 31 - 32 - 34</span></li>
</ul>', CAST(0xA3C20000 AS SmallDateTime), CAST(215000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (230, N'Áo thun nam họa tiết phối màu thời trang', 23, N'2014-11-4-11-49-16.jpg', 2, N'<div class="pfixfull deal-des">
	Thiết kế trẻ trung v&agrave; kiểu d&aacute;ng năng động, s&agrave;nh điệu, cho c&aacute;c bạn nam tự tin khoe c&aacute; t&iacute;nh s&ocirc;i nổi.</div>
<div class="x-box-content x-box-noweight xList">
	<ul>
		<li>
			<p>
				<span><span>Mang lại sự thoải m&aacute;i, tho&aacute;ng m&aacute;t, thấm h&uacute;t mồ h&ocirc;i tốt, ph&ugrave; hợp với c&aacute;c bạn trẻ y&ecirc;u th&iacute;ch hoạt động.&nbsp;</span></span></p>
		</li>
		<li>
			<p>
				<span><span>Kiểu d&aacute;ng cổ tr&ograve;n, tay ngắn phối m&agrave;u phong c&aacute;ch.</span></span></p>
		</li>
		<li>
			<span>Chất liệu: Thun mềm mịn, tho&aacute;ng m&aacute;t.</span></li>
		<li>
			<span>Freesize, ph&ugrave; hợp với bạn dưới 65kg (t&ugrave;y chiều cao)</span></li>
	</ul>
</div>
<p>
	&nbsp;</p>
', CAST(0xA3D902C8 AS SmallDateTime), CAST(156000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (231, N'Đầm Voan Ruby 2 tầng thời trang', 45, N'2014-11-4-11-51-41.jpg', 1, N'<div class="pfixfull deal-des">
	Đầm Voan Ruby gi&uacute;p bạn g&aacute;i thể hiện gu ăn mặc dịu d&agrave;ng v&agrave; đầy cuốn h&uacute;t.</div>
<div class="x-box-content x-box-noweight xList">
	<ul>
		<li>
			<span>Đầm nổi bật với thiết kế cổ thuyền, tay s&aacute;t c&aacute;nh khoe vai trần gợi cảm, kết hợp chi tiết xếp tầng điệu đ&agrave;, duy&ecirc;n d&aacute;ng.</span></li>
		<li>
			<span>T&ocirc;ng m&agrave;u nền n&atilde;, chiếc đầm dễ phối c&ugrave;ng nhiều kiểu phụ kiện s&agrave;nh điệu.&nbsp;</span></li>
		<li>
			<span>Chất liệu: Voan với độ rũ uyển chuyển, tạo form d&aacute;ng mềm mại v&agrave; thanh tho&aacute;t.</span></li>
	</ul>
</div>
<table border="1" cellpadding="1" cellspacing="1" style="width: 100%;">
	<tbody>
		<tr>
			<td style="text-align: center;">
				<strong><span style="font-size:20px;">M&agrave;u sắc</span></strong></td>
			<td style="text-align: center;">
				<strong><span style="font-size:20px;">Chất liệu</span></strong></td>
			<td style="text-align: center;">
				<strong><span style="font-size:20px;">Chiều d&agrave;i</span></strong></td>
			<td style="text-align: center;">
				<strong><span style="font-size:20px;">Rộng vai</span></strong></td>
			<td style="text-align: center;">
				<strong><span style="font-size:20px;">V&ograve;ng ngực</span></strong></td>
			<td style="text-align: center;">
				<strong><span style="font-size:20px;">V&ograve;ng eo</span></strong></td>
			<td style="text-align: center;">
				<strong><span style="font-size:20px;">V&ograve;ng m&ocirc;ng</span></strong></td>
			<td style="text-align: center;">
				<strong><span style="font-size:20px;">Co gi&atilde;n</span></strong></td>
		</tr>
		<tr>
			<td style="text-align: center;">
				<strong><span style="font-size:20px;">Trắng<br />
				Hồng<br />
				V&agrave;ng</span></strong></td>
			<td style="text-align: center;">
				<strong><span style="font-size:20px;">Voan</span></strong></td>
			<td style="text-align: center;">
				<strong><span style="font-size:20px;">90</span></strong></td>
			<td style="text-align: center;">
				<strong><span style="font-size:20px;">35</span></strong></td>
			<td style="text-align: center;">
				<strong><span style="font-size:20px;">51*2</span></strong></td>
			<td style="text-align: center;">
				<strong><span style="font-size:20px;">59*2</span></strong></td>
			<td style="text-align: center;">
				<strong><span style="font-size:20px;">66*2</span></strong></td>
			<td style="text-align: center;">
				<strong><span style="font-size:20px;">Kh&ocirc;ng</span></strong></td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
', CAST(0xA3D902C8 AS SmallDateTime), CAST(310000 AS Decimal(18, 0)), 1)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (232, N'Áo khoác nam giả da Hàn Quốc', 13, N'2014-11-4-11-53-46.jpg', 1, N'<div class="pfixfull deal-des">
	Kiểu d&aacute;ng thể thao cho bạn phong c&aacute;ch lạ v&agrave; cực chất, form &aacute;o chuẩn cho bạn nam vẻ hiện đại v&agrave; c&aacute; t&iacute;nh.</div>
<div class="x-box-content x-box-noweight xList">
	<ul>
		<li>
			<span>Thiết kế đơn giản, phong c&aacute;ch trẻ trung nam t&iacute;nh, mang đến n&eacute;t s&agrave;nh điệu cho bạn nam khi diện ra ngo&agrave;i d&ugrave; thời tiết nắng n&oacute;ng hay se lạnh.</span></li>
		<li>
			<span>Chất liệu: Giả da</span></li>
		<li>
			<span>Ph&ugrave; hợp với bạn dưới 70kg (t&ugrave;y chiều cao).</span></li>
		<li>
			<span>K&iacute;ch thước: D&agrave;i 70cm, Vai 44cm, Tay 64cm</span></li>
	</ul>
</div>
<p>
	&nbsp;</p>
', CAST(0xA3D902CA AS SmallDateTime), CAST(265000 AS Decimal(18, 0)), 1)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (233, N'Áo thun nữ Raglan Hello Panda', 30, N'2014-11-4-11-55-33.jpg', 1, N'<div class="pfixfull deal-des">
	&Aacute;o được thiết kế đơn giản với cổ tr&ograve;n c&ugrave;ng tay d&agrave;i, th&acirc;n &aacute;o in h&igrave;nh Panda lười dễ thương tạo sự năng động cho bạn g&aacute;i.</div>
<div class="x-box-content x-box-noweight xList">
	<ul>
		<li>
			<span>Form &aacute;o rộng khỏe khoắn tạo n&eacute;t năng động, tinh nghịch cho bạn g&aacute;i.</span></li>
		<li>
			<span>Dễ d&agrave;ng kết hợp c&ugrave;ng jeans, kaki, short, legging ... khi dạo phố.</span></li>
		<li>
			<span>Chất liệu: thun cotton mịn, đẹp, tho&aacute;ng m&aacute;t tạo cảm gi&aacute;c thoải m&aacute;i cho người mặc.</span></li>
		<li>
			<span>Ph&ugrave; hợp với bạn dưới 52kg (t&ugrave;y chiều cao)</span></li>
	</ul>
</div>
<p>
	&nbsp;</p>
', CAST(0xA3D902CC AS SmallDateTime), CAST(115000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (234, N'Áo đôi Raglan in họa tiết', 23, N'2014-11-4-11-57-54.jpg', 1, N'<div class="pfixfull deal-des">
	Thiết kế trẻ trung với tay &aacute;o d&agrave;i, m&agrave;u sắc phối h&agrave;i h&ograve;a kiểu d&aacute;ng năng động, s&agrave;nh điệu, cho c&aacute;c bạn nam tự tin khoe c&aacute; t&iacute;nh s&ocirc;i nổi</div>
<div class="x-box-content x-box-noweight xList">
	<ul>
		<li>
			<p>
				<span><span>Thiết kế trẻ trung với tay &aacute;o d&agrave;i, m&agrave;u sắc phối h&agrave;i h&ograve;a kiểu d&aacute;ng năng động, s&agrave;nh điệu, cho c&aacute;c bạn nam tự tin khoe c&aacute; t&iacute;nh s&ocirc;i nổi.&nbsp;</span></span></p>
		</li>
		<li>
			<p>
				<span>Chất liệu</span><strong>&nbsp;</strong><span>thun co gi&atilde;n mang lại sự thoải m&aacute;i, tho&aacute;ng m&aacute;t, thấm h&uacute;t mồ h&ocirc;i tốt, ph&ugrave; hợp với c&aacute;c bạn trẻ y&ecirc;u th&iacute;ch hoạt động.</span></p>
		</li>
		<li>
			Size M: ph&ugrave; hợp với bạn dưới 65kg.&nbsp;</li>
		<li>
			Size L<span>: ph&ugrave; hợp với bạn dưới 75kg</span></li>
	</ul>
</div>
<p>
	&nbsp;</p>
', CAST(0xA3D902CE AS SmallDateTime), CAST(125000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (235, N'Áo phối ren cao cấp tay dài cổ trụ', 16, N'2014-11-4-12-02-31.jpg', 1, N'<div class="pfixfull deal-des">
	Kiểu d&aacute;ng năng động với cổ tr&ograve;n, tay d&agrave;i, th&acirc;n &aacute;o tạo điểm nhấn với chi tiết đ&iacute;nh nơ xinh xắn.</div>
<div class="x-box-content x-box-noweight xList">
	<ul>
		<li>
			<p>
				<span>Chất liệu thun, thấm h&uacute;t mồ h&ocirc;i cho người mặc cảm gi&aacute;c thoải m&aacute;i. Th&iacute;ch hợp diện khi đi học, đi chơi c&ugrave;ng bạn b&egrave;..</span></p>
		</li>
		<li>
			<p>
				<span><span>C&oacute; thể kết hợp với nhiều loại quần như quần t&acirc;y, quần jeans, quần kaki...</span></span></p>
		</li>
		<li>
			<p>
				<span><span><strong>Free size,</strong>&nbsp;th&iacute;ch hợp với bạn từ 53 kg trở xuống.</span></span></p>
		</li>
	</ul>
</div>
<p>
	&nbsp;</p>
', CAST(0xA3D902D3 AS SmallDateTime), CAST(160000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (236, N'Áo sơ mi nam body thời trang Hàn Quốc hàng VNXK', 42, N'2014-11-4-12-05-31.jpg', 1, N'<div class="pfixfull deal-des">
	&Aacute;o sơ mi nam phối m&agrave;u với thiết kế cổ trụ, tay d&agrave;i, mang phong c&aacute;ch lịch sự, trẻ trung</div>
<div class="x-box-content x-box-noweight xList">
	<ul>
		<li>
			<span>&Aacute;o sơ mi nam phối m&agrave;u với thiết kế cổ trụ, tay d&agrave;i, mang phong c&aacute;ch lịch sự, trẻ trung.</span></li>
		<li>
			<span>Viền m&agrave;u lạ mắt, mang đến phong c&aacute;ch mới mẻ, sang trọng. T&ocirc;n d&aacute;ng người mặc mang đến sự tự tin khi mặc.</span></li>
		<li>
			<span>Chất liệu: Kate mềm mịn v&agrave; tho&aacute;ng m&aacute;t, tạo cảm gi&aacute;c mạnh mẽ v&agrave; thoải m&aacute;i cho người mặc.</span></li>
		<li>
			<span>Dễ d&agrave;ng phối với quần t&acirc;y, jean, kaki ... để bạn diện tới chốn c&ocirc;ng sở.</span></li>
		<li>
			<span>Size M: &nbsp;D&agrave;i &aacute;o 74cm, Vai 43cm, D&agrave;i tay 61cm.</span></li>
		<li>
			<span>Size L: D&agrave;i &aacute;o 76cm, Vai 45cm, D&agrave;i tay 63cm.</span></li>
	</ul>
</div>
<p>
	&nbsp;</p>
', CAST(0xA3D902D6 AS SmallDateTime), CAST(280000 AS Decimal(18, 0)), 1)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (238, N'Áo sơ mi nam phối thun màu thời trang', 20, N'2014-11-4-12-09-32.jpg', 1, N'<div class="pfixfull deal-des">
	Thiết kế đơn giản với &aacute;o sơ mi tay ngắn phối thun m&agrave;u phần vai, tay v&agrave; t&uacute;i &aacute;o; form &aacute;o đẹp t&ocirc;n v&oacute;c d&aacute;ng khỏe khoắn của bạn nam</div>
<div class="x-box-content x-box-noweight xList">
	<ul>
		<li>
			<span>Thiết kế đơn giản với &aacute;o sơ mi tay ngắn phối thun m&agrave;u phần vai, tay v&agrave; t&uacute;i &aacute;o. </span></li>
		<li>
			<span>M&agrave;u sắc nổi bật t&ocirc;n v&oacute;c d&aacute;ng cũng như l&agrave;n da của ph&aacute;i mạnh.</span></li>
		<li>
			<span>Dễ d&agrave;ng mix c&ugrave;ng quần &acirc;u, jeans, kaki cho bạn phong c&aacute;ch lịch thiệp nơi c&ocirc;ng sở hay c&aacute;c buổi tiệc, v&agrave; kh&ocirc;ng k&eacute;m phần c&aacute; t&iacute;nh với short.</span></li>
		<li>
			<span>Chất liệu: Kaki phối thun</span></li>
		<li>
			<span>Size M: D&agrave;i 72cm, Vai 38*2cm</span></li>
		<li>
			<span>Size L: D&agrave;i 73cm, Vai 39*2cm</span></li>
		<li>
			<span>Sai số 1-2cm.</span></li>
	</ul>
</div>
<p>
	&nbsp;</p>
', CAST(0xA3D902DA AS SmallDateTime), CAST(197000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (239, N'Áo Sơ Mi Nữ Form Dài Vạt Xẻ', 33, N'2014-11-4-12-21-42.jpg', 1, N'<p style="margin: 0px 0px 10px; color: rgb(102, 102, 102); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; line-height: 20px; text-align: left;">
	<span style="font-size: 12pt;">&Aacute;o sơ mi form d&agrave;i vạt xẻ mang mẫu thiết kế tinh tế, s&agrave;nh điệu tạo phong c&aacute;ch thật ấn tượng v&agrave; lạ mắt.</span></p>
<p style="margin: 0px 0px 10px; color: rgb(102, 102, 102); font-family: Tahoma, Geneva, sans-serif; font-size: 15px; line-height: 20px; text-align: left;">
	<span style="font-size: 12pt;">Với chất liệu vải voan lụa &aacute;o sơ mi&nbsp;<span style="font-family: Arial, Helvetica, sans-serif; line-height: 1.3em;">form d&agrave;i xẻ vạt n&agrave;y sẽ t&ocirc;n l&ecirc;n v&oacute;c d&aacute;ng y&ecirc;u kiều c&ugrave;ng phong c&aacute;ch thanh lịch, trang nh&atilde; của ph&aacute;i đẹp. Khi kết hợp với chiếc quần legging, skiny,...th&igrave; bạn c&oacute; thể th&ecirc;m bước tự tin cho đ&ocirc;i ch&acirc;n để nhanh nhanh bước ra dạo phố c&ugrave;ng bạn b&egrave;.&nbsp;</span></span></p>
', CAST(0xA3D902E6 AS SmallDateTime), CAST(145000 AS Decimal(18, 0)), 0)
INSERT [dbo].[san_pham] ([id_sanpham], [ten_sanpham], [soluong], [hinhanh], [id_danhmuc], [tt_chitiet], [ngaydang], [gia], [khuyenmai]) VALUES (240, N'Áo sơ mi nữ cổ trụ túi xếp ly', 14, N'2014-11-4-12-24-52.jpg', 1, N'<div class="pfixfull deal-des">
	Thiết kế &aacute;o sơ mi tay d&agrave;i, tạo điểm nhấn với cầu vai v&agrave; t&uacute;i xếp ly, kiểu &aacute;o đơn giản kh&ocirc;ng k&eacute;m phần c&aacute; t&iacute;nh</div>
<div class="x-box-content x-box-noweight xList">
	<ul>
		<li>
			<span>Thiết kế &aacute;o sơ mi tay d&agrave;i, tạo điểm nhấn với&nbsp;<span>cầu vai v&agrave;</span>&nbsp;t&uacute;i xếp ly, kiểu &aacute;o đơn giản kh&ocirc;ng k&eacute;m phần c&aacute; t&iacute;nh.</span></li>
		<li>
			<span>&Aacute;o sơ mi dễ d&agrave;ng mix c&ugrave;ng c&aacute;c kiểu quần &acirc;u/ jeans d&agrave;i/ short/ ch&acirc;n v&aacute;y...</span></li>
		<li>
			<span>Chất liệu: Tơ nhung</span></li>
		<li>
			<span>K&iacute;ch thước: D&agrave;i 63cm, Vai 36cm, Tay 58cm, Ngực 48*2cm</span></li>
		<li>
			<span>Sai số 1-2cm</span></li>
		<li>
			<span>Ph&ugrave; hợp với bạn dưới 53kg (t&ugrave;y chiều cao).</span></li>
	</ul>
</div>
<p>
	&nbsp;</p>
', CAST(0xA3D902E9 AS SmallDateTime), CAST(144000 AS Decimal(18, 0)), 0)
SET IDENTITY_INSERT [dbo].[san_pham] OFF
/****** Object:  Table [dbo].[view_lienhe]    Script Date: 09/13/2017 18:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[view_lienhe](
	[id_view_lienhe] [int] IDENTITY(1,1) NOT NULL,
	[id_lienhe] [int] NULL,
	[id_user] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_view_lienhe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[view_lienhe] ON
INSERT [dbo].[view_lienhe] ([id_view_lienhe], [id_lienhe], [id_user]) VALUES (18, 19, 2)
INSERT [dbo].[view_lienhe] ([id_view_lienhe], [id_lienhe], [id_user]) VALUES (19, 20, 2)
INSERT [dbo].[view_lienhe] ([id_view_lienhe], [id_lienhe], [id_user]) VALUES (20, 21, 2)
INSERT [dbo].[view_lienhe] ([id_view_lienhe], [id_lienhe], [id_user]) VALUES (21, 22, 2)
INSERT [dbo].[view_lienhe] ([id_view_lienhe], [id_lienhe], [id_user]) VALUES (22, 23, 2)
INSERT [dbo].[view_lienhe] ([id_view_lienhe], [id_lienhe], [id_user]) VALUES (23, 24, 2)
INSERT [dbo].[view_lienhe] ([id_view_lienhe], [id_lienhe], [id_user]) VALUES (24, 25, 2)
INSERT [dbo].[view_lienhe] ([id_view_lienhe], [id_lienhe], [id_user]) VALUES (25, 26, 2)
INSERT [dbo].[view_lienhe] ([id_view_lienhe], [id_lienhe], [id_user]) VALUES (26, 27, 2)
SET IDENTITY_INSERT [dbo].[view_lienhe] OFF
/****** Object:  Table [dbo].[dat_hang]    Script Date: 09/13/2017 18:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dat_hang](
	[id_dathang] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [int] NULL,
	[id_pt] [int] NULL,
	[trang_thai] [bit] NULL,
	[ngaydathang] [smalldatetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_dathang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[dat_hang] ON
INSERT [dbo].[dat_hang] ([id_dathang], [id_user], [id_pt], [trang_thai], [ngaydathang]) VALUES (2, 5, 1, 1, CAST(0xA3D004CD AS SmallDateTime))
INSERT [dbo].[dat_hang] ([id_dathang], [id_user], [id_pt], [trang_thai], [ngaydathang]) VALUES (3, 6, 2, 1, CAST(0xA3D004DD AS SmallDateTime))
INSERT [dbo].[dat_hang] ([id_dathang], [id_user], [id_pt], [trang_thai], [ngaydathang]) VALUES (4, 14, 2, 1, CAST(0xA3D004E4 AS SmallDateTime))
INSERT [dbo].[dat_hang] ([id_dathang], [id_user], [id_pt], [trang_thai], [ngaydathang]) VALUES (5, 8, 2, 1, CAST(0xA3D100AF AS SmallDateTime))
INSERT [dbo].[dat_hang] ([id_dathang], [id_user], [id_pt], [trang_thai], [ngaydathang]) VALUES (19, 8, 1, 1, CAST(0xA3D204D7 AS SmallDateTime))
INSERT [dbo].[dat_hang] ([id_dathang], [id_user], [id_pt], [trang_thai], [ngaydathang]) VALUES (38, 4, 2, 0, CAST(0xA3D902EA AS SmallDateTime))
INSERT [dbo].[dat_hang] ([id_dathang], [id_user], [id_pt], [trang_thai], [ngaydathang]) VALUES (39, 13, 1, 0, CAST(0xA3D902ED AS SmallDateTime))
INSERT [dbo].[dat_hang] ([id_dathang], [id_user], [id_pt], [trang_thai], [ngaydathang]) VALUES (40, 10, 1, 0, CAST(0xA3D902EF AS SmallDateTime))
INSERT [dbo].[dat_hang] ([id_dathang], [id_user], [id_pt], [trang_thai], [ngaydathang]) VALUES (41, 12, 2, 0, CAST(0xA3D90313 AS SmallDateTime))
INSERT [dbo].[dat_hang] ([id_dathang], [id_user], [id_pt], [trang_thai], [ngaydathang]) VALUES (42, 3, 2, 1, CAST(0xA3D90417 AS SmallDateTime))
INSERT [dbo].[dat_hang] ([id_dathang], [id_user], [id_pt], [trang_thai], [ngaydathang]) VALUES (43, 3, 1, 0, CAST(0xA3D90417 AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[dat_hang] OFF
/****** Object:  Table [dbo].[dat_hang_detail]    Script Date: 09/13/2017 18:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dat_hang_detail](
	[id_dathang_detail] [int] IDENTITY(1,1) NOT NULL,
	[id_sanpham] [int] NULL,
	[id_dathang] [int] NULL,
	[soluong] [int] NOT NULL,
	[size] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_dathang_detail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[dat_hang_detail] ON
INSERT [dbo].[dat_hang_detail] ([id_dathang_detail], [id_sanpham], [id_dathang], [soluong], [size]) VALUES (2, 5, 2, 2, N'M')
INSERT [dbo].[dat_hang_detail] ([id_dathang_detail], [id_sanpham], [id_dathang], [soluong], [size]) VALUES (3, 97, 2, 3, N'L')
INSERT [dbo].[dat_hang_detail] ([id_dathang_detail], [id_sanpham], [id_dathang], [soluong], [size]) VALUES (5, 34, 3, 7, N'XL')
INSERT [dbo].[dat_hang_detail] ([id_dathang_detail], [id_sanpham], [id_dathang], [soluong], [size]) VALUES (7, 7, 4, 4, N'L')
INSERT [dbo].[dat_hang_detail] ([id_dathang_detail], [id_sanpham], [id_dathang], [soluong], [size]) VALUES (8, 1, 5, 2, N'L')
INSERT [dbo].[dat_hang_detail] ([id_dathang_detail], [id_sanpham], [id_dathang], [soluong], [size]) VALUES (9, 63, 5, 4, N'M')
INSERT [dbo].[dat_hang_detail] ([id_dathang_detail], [id_sanpham], [id_dathang], [soluong], [size]) VALUES (17, 5, 19, 3, N'M')
INSERT [dbo].[dat_hang_detail] ([id_dathang_detail], [id_sanpham], [id_dathang], [soluong], [size]) VALUES (18, 1, 19, 5, N'S')
INSERT [dbo].[dat_hang_detail] ([id_dathang_detail], [id_sanpham], [id_dathang], [soluong], [size]) VALUES (45, 233, 38, 12, N'S')
INSERT [dbo].[dat_hang_detail] ([id_dathang_detail], [id_sanpham], [id_dathang], [soluong], [size]) VALUES (46, 235, 39, 5, N'S')
INSERT [dbo].[dat_hang_detail] ([id_dathang_detail], [id_sanpham], [id_dathang], [soluong], [size]) VALUES (47, 232, 40, 7, N'S')
INSERT [dbo].[dat_hang_detail] ([id_dathang_detail], [id_sanpham], [id_dathang], [soluong], [size]) VALUES (48, 236, 40, 1, N'S')
INSERT [dbo].[dat_hang_detail] ([id_dathang_detail], [id_sanpham], [id_dathang], [soluong], [size]) VALUES (49, 238, 41, 1, N'S')
INSERT [dbo].[dat_hang_detail] ([id_dathang_detail], [id_sanpham], [id_dathang], [soluong], [size]) VALUES (50, 22, 41, 3, N'S')
INSERT [dbo].[dat_hang_detail] ([id_dathang_detail], [id_sanpham], [id_dathang], [soluong], [size]) VALUES (51, 236, 42, 2, N'S')
INSERT [dbo].[dat_hang_detail] ([id_dathang_detail], [id_sanpham], [id_dathang], [soluong], [size]) VALUES (52, 182, 42, 1, N'S')
INSERT [dbo].[dat_hang_detail] ([id_dathang_detail], [id_sanpham], [id_dathang], [soluong], [size]) VALUES (53, 164, 42, 3, N'S')
INSERT [dbo].[dat_hang_detail] ([id_dathang_detail], [id_sanpham], [id_dathang], [soluong], [size]) VALUES (54, 181, 43, 1, N'S')
SET IDENTITY_INSERT [dbo].[dat_hang_detail] OFF
/****** Object:  Default [DF_san_pham_khuyenmai]    Script Date: 09/13/2017 18:15:57 ******/
ALTER TABLE [dbo].[san_pham] ADD  CONSTRAINT [DF_san_pham_khuyenmai]  DEFAULT ((0)) FOR [khuyenmai]
GO
/****** Object:  ForeignKey [FK__nguoidung__role__1DE57479]    Script Date: 09/13/2017 18:15:57 ******/
ALTER TABLE [dbo].[nguoidung]  WITH CHECK ADD FOREIGN KEY([role])
REFERENCES [dbo].[role] ([id_role])
GO
/****** Object:  ForeignKey [FK__san_pham__id_dan__0DAF0CB0]    Script Date: 09/13/2017 18:15:57 ******/
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD FOREIGN KEY([id_danhmuc])
REFERENCES [dbo].[danhmuc] ([id_danhmuc])
GO
/****** Object:  ForeignKey [FK__view_lien__id_li__31EC6D26]    Script Date: 09/13/2017 18:15:57 ******/
ALTER TABLE [dbo].[view_lienhe]  WITH CHECK ADD FOREIGN KEY([id_lienhe])
REFERENCES [dbo].[lien_he] ([id_lienhe])
GO
/****** Object:  ForeignKey [FK__view_lien__id_us__32E0915F]    Script Date: 09/13/2017 18:15:57 ******/
ALTER TABLE [dbo].[view_lienhe]  WITH CHECK ADD FOREIGN KEY([id_user])
REFERENCES [dbo].[nguoidung] ([id_user])
GO
/****** Object:  ForeignKey [FK__dat_hang__id_pt__239E4DCF]    Script Date: 09/13/2017 18:15:57 ******/
ALTER TABLE [dbo].[dat_hang]  WITH CHECK ADD FOREIGN KEY([id_pt])
REFERENCES [dbo].[phuong_thuc_thanh_toan] ([id_pt])
GO
/****** Object:  ForeignKey [FK__dat_hang__id_use__22AA2996]    Script Date: 09/13/2017 18:15:57 ******/
ALTER TABLE [dbo].[dat_hang]  WITH CHECK ADD FOREIGN KEY([id_user])
REFERENCES [dbo].[nguoidung] ([id_user])
GO
/****** Object:  ForeignKey [FK__dat_hang___id_da__29572725]    Script Date: 09/13/2017 18:15:57 ******/
ALTER TABLE [dbo].[dat_hang_detail]  WITH CHECK ADD FOREIGN KEY([id_dathang])
REFERENCES [dbo].[dat_hang] ([id_dathang])
GO
/****** Object:  ForeignKey [FK__dat_hang___id_sa__286302EC]    Script Date: 09/13/2017 18:15:57 ******/
ALTER TABLE [dbo].[dat_hang_detail]  WITH CHECK ADD FOREIGN KEY([id_sanpham])
REFERENCES [dbo].[san_pham] ([id_sanpham])
GO
