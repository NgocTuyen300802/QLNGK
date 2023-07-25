USE WEBNUOCGIAIKHAT
GO
CREATE TABLE [dbo].[Product] (
    [Id]              INT             IDENTITY (1, 1) NOT NULL,
    [Name]            NVARCHAR (250)  NULL,
    [CategoryID]      INT             NULL,
    [FullDescription] NVARCHAR (4000) NULL,
    [Image]           NVARCHAR (500)  NULL,
    [Price]           INT             NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([Id] ASC)
);
CREATE TABLE [dbo].[Category] (
    [Id]      INT         IDENTITY (1, 1) NOT NULL,
    [Name]    NCHAR (10)  NULL,
    [Avartar] NCHAR (100) NULL,
    CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED ([Id] ASC)
);
CREATE TABLE [dbo].[Contact] (
    [Name]    NVARCHAR (150) NULL,
    [Address] NVARCHAR (150) NULL,
    [Phone]   NCHAR (10)     NULL,
    [Email]   NCHAR (100)    NULL
);
CREATE TABLE [dbo].[User] (
    [IdUser]    INT            NOT NULL,
    [UserName]  NVARCHAR (150) NULL,
    [FirstName] VARCHAR (100)  NULL,
    [LastName]  VARCHAR (100)  NULL,
    [Email]     VARCHAR (50)   NULL,
    [Password]  VARCHAR (50)   NULL,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([IdUser] ASC)
);
CREATE TABLE [dbo].[Cart1] (
    [CategoryID]      INT            NOT NULL,
    [Name]            NVARCHAR (250) NULL,
    [Price]           INT            NULL,
    [FullDescription] NVARCHAR (MAX) NULL,
    [NgayCapNhat]     DATETIME       NULL,
    [Image]           NVARCHAR (50)  NULL,
    [SoLuong]         INT            NULL,
    CONSTRAINT [PK_Cart1] PRIMARY KEY CLUSTERED ([CategoryID] ASC)
);










SET IDENTITY_INSERT [dbo].[Product] ON
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (1, N'BIA 333 330ML', 1, N'- Bia lon 333 330ml là sự hòa quyện tuyệt hảo giữa nước, malt, đại mạch, ngũ cốc, hoa bia,.... mang một hương vị đậm đà mạnh mẽ, khẳng định đẳng cấp phái mạnh.

- Là thương hiệu lâu đời và nổi tiếng tại Việt Nam, giá cả phải chăng phù hợp với mọi nhà, cho bữa tiệc của bạn thêm niềm vui và ý nghĩa.', N'bia 333.png', 13000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (2, N'BIA BECK ICE 11.2 330ML', 1, NULL, N'bia becks.png', 14000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (3, N'BIA BUDWEISER 330ML', 1, N'- Budweiser là một trong những loại bia được rất nhiều người ưa dùng với độ cồn nhẹ 5% và hương thơm tự nhiên mang đến những trải nghiệm thú vị cho người thưởng thức

- Đặc biệt, hương vị đậm đà của bia sẽ không bị giảm khi dùng với đá lạnh. Thiết kế kiểu dáng lon nhỏ gọn, dùng một lần rất tiện lợi.

- Những lon bia thơm ngon thích hợp dùng cho các dịp lễ Tết, làm quà tặng hay dùng trong các bữa tiệc, tụ họp bạn bè.', N'bia bubwiser.png', 20000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (4, N'BIA LON HALIDA', 1, N'- Bia Halida được biết đến là loại bia có thương hiệu từ lâu đời và được nhiều người ưa chuộng.

- Với hương vị êm dịu, thơm của lúa mạch, sản phẩm chính là tùy chọn tin cậy của nhiều người tiêu dùng. Bia Halida được lên men tự nhiên từ nước, malt, gạo và houblon và không sử dụng chất bảo quản, sản phẩm hoàn toàn an toàn với người sử dụng.

- Bia Halida được đóng lon tiện lợi khi sử dụng và bảo quản. ', N'bia halida.png', 11000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (5, N'BIA HƠI HÀ NỘI 500ML', 1, NULL, N'bia hơi hà nội.png', 17000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (6, N'BIA LON SÀI GÒN LAGER 330ML', 1, N'- Bia Sài Gòn Lager được sản xuất từ những nguyên liệu tự nhiên như: nước, malt đại mạch, hoa bia trên dây chuyền công nghệ hiện đại và lên men theo công nghệ truyền thống dài ngày.

- Bia Sài Gòn Lager đã tạo nên một hương vị ngon và độc đáo khác biệt. Bia có màu vàng óng, mùi thơm đặc trưng, hương vị đậm đà. Thiết kế dạng lon nhỏ gọn, tiện lợi khi sử dụng và dễ dàng bảo quản.', N'bia sg.png', 12000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (7, N'BIA LON TIGER BẠC', 1, NULL, N'bia tiger bạc.png', 18000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (8, N'BIA HENIKEN LON CAO 330ML', 1, N'- Bia Heineken được sản xuất từ những nguyên liệu tinh khiết nhất để luôn bảo đảm một hương vị hoàn hảo không đổi và chinh phục hơn 192 quốc gia trên toàn thế giới.

- Như Alfred Heineken từng nói: “Heineken không chỉ là bia, Heineken còn là thế giới của niềm đam mê và sự sảng khoái”.

- Vì khách hàng và cho khách hàng, thương hiệu bia đẳng cấp thế giới Heineken sẽ luôn nỗ lực hết mình để mở ra thế giới của những nguồn đam mê bất tận.', N'heniken.png', 20000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (9, N'CÀ PHÊ COFFEE HOUSE HOÀ TAN 3 IN 1 288G
', 2, NULL, N'3 in 1.png', 40000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (10, N'CÀ PHÊ HIGHLAND 235ML', 2, NULL, N'cf sữa đá 2land.png', 15000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (11, N'CÀ PHÊ TRUNG NGUYÊN CHẾ PHIN 3 - 500GR', 2, NULL, N'cf trung nguyen phin.png', 126000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (12, N'CÀ PHÊ SỮA ĐÁ HIGHLANDS COFFEE 185ML', 2, N'- Cà Phê Sữa Đá Highlands Coffee 235ML sản phẩm được đóng lon tiện dụng, đảm bảo không bị ảnh hưởng đến chất lượng cũng như hương vị, tiện lợi khi mang theo bên mình để có thể sử dụng bất kỳ khi nào.
- Là sự hòa quyện của hương vị sữa ngọt ngào, cà phê rang đặc trưng, sữa và đá, cùng lớp kem béo ngậy.', N'highland.png', 10000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (13, N'CÀ PHÊ GOLD DECAFF NESCAFE ANH 100G', 2, NULL, N'nescf.png', 199000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (14, N'CÀ PHÊ VINACAFE HỘP VÀNG 400G', 2, N'- Cà phê sữa hòa tan VinaCafe Gold Original hộp 20 gói với chắt lọc từ những hạt cà phê ngon nhất cùng bí quyết và công nghệ sản xuất hiện đại, Vinacafe mang đến cho người dùng những trải nghiệm cà phê đầy tinh tế.

- Sản phẩm với hương vị cà phê đậm đà hài hòa giữa vị cà phê và vị sữa, cho bạn thưởng thức mỗi ngày.

- Cà phê sữa giúp giảm bớt stress, giảm triệu chứng bệnh Parkinson.', N'vina cf.png', 42000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (15, N'NƯỚC NGỌT 7 UP CHAI 1.5L', 5, N'- Nước Ngọt 7up Chai 1.5L chứa nhiều vitamin C cho cơ thể khỏe khoắn và tinh thần luôn tươi vui mỗi ngày, là nước giải khát có gas với hương chanh tự nhiên mát lạnh, mang đến cho bạn cảm giác sảng khoái.

- Với vị ngọt vừa phải và hương vị gas the mát, Nước giải khát có gas 7Up giúp bạn xua tan nhanh chóng cơn khát hay giảm cảm giác ngấy nếu ăn nhiều đồ đạm trong các bữa tiệc.

- Nước giải khát có gas 7Up được đóng chai tiện dụng, dễ dàng mang theo trong các chuyến', N'7 up.png', 14000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (16, N'NƯỚC TRÀ XANH C2 360ML', 5, N'- Với thiết kế chai nhựa nắp vặn tiện dụng, bạn có thể dễ dàng thưởng thức sản phẩm mọi lúc mọi nơi, tại trường lớp, cơ quan làm việc, phòng tập thể thao hay trong những chuyến du lịch, dã ngoại.

- Với hương vị thanh thoát và thơm ngon nhờ được chắt lọc kỹ từ những lá trà tươi non, thanh khiết, giúp mang lại cho bạn cảm giác thật đã khát và sảng khoái dài lâu. Sản phẩm là món giải khát cực tốt cho bạn và mọi người. Trà ngon hơn khi dùng lạnh hoặc với đá.', N'c2 táo.png', 7000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (17, N'CÀ PHÊ NƯỚC WAKE-UP 24/7 CHAI 330ML', 5, NULL, N'cà phê wake up.png', 8000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (18, N'COCA NHẬP KHẨU 500ML', 5, N'- Coca nhập khẩu 500m là sản phẩm của hãng nước giải khát COCA-COLA lừng danh hàng đầu thế giới và có danh số bán chạy nhất lịch sử.

- CocaCola Nhật là sản phẩm được sản xuất dành riêng cho thị trường nội địa Nhật Bản khó tính, với hương vị thơm ngon mùi hương coca thuần khiết hài hòa cùng vị dịu ngọt đậm đà tinh túy khó cưỡng, hứa hẹn sẽ mang đến cho bạn những trải nghiệm tuyệt vời khi thưởng thức.', N'coca cola.png', 37000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (19, N'NƯỚC GIẢI KHÁT SỮA ĐẬU NÀNH TRIBECO LON 240ML', 5, NULL, N'đậu nành lon trisoy.png', 6000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (20, N'NƯỚC GIẢI KHÁT LATTE KIRIN VỊ DÂU 350ML', 5, N'- Nước Giải Khát Latte Kirin Vị Dâu 350ML có chút chua ngọt nhẹ nhàng của nước ép dâu tươi pha sữa, Latte mang đến bạn vị ngon thanh khiết cùng dư vị nhẹ nhàng.

- Đồng thời còn là thức uống giải khát giúp bổ sung vitamin và khoáng chất tốt cho cơ thể. Sử dụng sản phẩm là cách nhanh chóng để bù nước cho cơ thể khi vận động nhiều hoặc chơi thể thao. , với trẻ em thì giúp tăng khả năng tiêu hóa.

- Sản phẩm thích hợp cho những lúc giải lao và phù hợp với người lo ngại sự thừa cân.', N'latte vị dâu.png', 8000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (21, N'NƯỚC GIẢI KHÁT NHA ĐAM HÀN QUỐC 1.5L', 5, N'Hương vị nha đam thanh mát, tươi ngon, đã qua chọn lọc kỹ càng.
Sản phẩm được sản xuất từ trái cây nguyên chất, không phẩm màu, không chứa chất bảo quản, đạt tiêu chuẩn an toàn vệ sinh thực phẩm.
Nước nha đam nguyên chất dành cho mọi gia đình vô cùng bổ dưỡng và thuận tiện, có tác dụng giảm nhiệt cơ thể.
Sản phẩm được đóng chai tiện lợi cho việc bảo quản cũng như dễ dàng mang theo bên người khi cần di chuyển.
Chai 1.5 L giúp tiết kiệm thời gian mua sắm và chi phí.', N'nha đam hàn quốc.png', 53000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (22, N'NƯỚC CAM FANTA LON 330ML', 5, N'Thông tin sản phẩm:

Là sản phẩm nước ngọt có gas của thương hiệu Fanta nổi tiếng giúp giải khát sau khi hoạt động ngoài trời, giải tỏa căng thẳng, mệt mỏi khi học tập, làm việc. Nước ngọt Fanta hương cam lon 330ml thơm ngon kích thích vị giác, chứa nhiều vitamin C sẽ cung cấp năng lượng cho cơ thể khỏe mạnh', N'nước cam fanta.png', 8000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (23, N'NƯỚC DỪA TƯƠI NGUYÊN CHẤT JOI LON 325ML', 5, N'Nước dừa tươi là loại nước uống tự nhiên rất tốt cho sức khỏe. Nhiều nghiên cứu đã chỉ ra rằng hoạt tính kháng virus, kháng khuẩn, chống viêm và chống oxy hóa của nước dừa có thể đem lại nhiều lợi ích trong việc phòng và hỗ trợ điều trị nhiều bệnh khác nhau.', N'nước dừa tươi.png', 8000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (24, N'TRÀ CHANH Ô LONG PLUS 355ML', 5, NULL, N'ôlong.png', 6000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (25, N'NƯỚC PEPSI LON XANH DÀI 330ML', 5, N'Lon Nước Ngọt Có Gas Pepsi (330ml / Lon) với hương cola hấp dẫn, mang lại cảm giác sảng khoái, giải nhiệt tức thì. Sản phẩm không chứa các chất bảo quản độc hại ảnh hưởng đến sức khỏe người tiêu dùng, nên bạn hoàn toàn yên tâm khi sử dụng.

Nước giải khát có gas Pepsi với lượng gas lớn sẽ giúp bạn xua tan mọi cảm giác mệt mỏi, căng thẳng, đặc biệt thích hợp sử dụng khi hoạt động nhiều ngoài trời.

Với thiết kế dạng lon tiện dụng, bạn có thể dễ dàng bảo quản cũng như mang theo sản phẩm trong các chuyến dã ngoại hay các buổi thi đấu, luyện tập thể thao.

Đặc biệt, với sản phẩm được ướp lạnh mang lại cho bạn cảm giác luôn sảng khoái với những ngày hè nóng bức.', N'pespi.png', 8000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (26, N'NƯỚC TĂNG LỰC RELLBUL THÁI LAN 250ML', 5, N'- Có thành phần tự nhiên, mùi vị thơm ngon, sảng khoái. Sản phẩm giúp cơ thể bù đắp nước, bổ sung năng lượng, vitamin C và E, giúp xua tan cơn khát và cảm giác mệt mỏi.

- Nước tăng lực RedBull được sản xuất trên quy trình công nghệ hiện đại, thông qua quy trình kiểm duyệt chặt chẽ.

- Sản phẩm không có đường hóa học, không chứa hóa chất độc hại, đảm bảo an toàn cho người sử dụng.', N'rellbull thái lan.png', 11000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (27, N'NƯỚC TĂNG LỰC STING CHỨA HỒNG SÂM 320ML', 5, N'Nước tăng lực có ga

Giải khát, cung cấp năng lượng ', N'sting lon.png', 9000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (28, N'NƯỚC AVINA 350ML 24CHAI/1THÙNG', 10, NULL, N'3A.png', 69000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (29, N'NƯỚC KHOÁNG TINH KHIẾT AQUAFINA 355ML CHAI NHỰA', 10, N'* MÔ TẢ SẢN PHẨM:
Nước Tinh Khiết Aquafina Chai 355ml là nước uống tinh khiết được xử lý qua hệ thống thẩm thấu ngược và Ozon, thanh trùng bằng tia cực tím. Sản phẩm đảm bảo chất lượng và an toàn cho người sử dụng.
Thành phần tự nhiên, không chứa hợp chất hóa học. Sản xuất trên dây chuyền công nghệ hiện đại, đảm bảo chất lượng và an toàn cho người sử dụng. Phù hợp với tiêu chuẩn nước uống của Tổ Chức Sức Khỏe Thế Giới.
Kiểu dáng đóng chai tiện dụng, bền chắc. Thích hợp mang theo khi ra ngoài. Nước tinh khiết Aquafina chai 355ml được lấy từ nguồn nước ngầm đảm bảo, sau đó trải qua quy trình khử trùng, lọc sạch các tạp chất.
Sản phẩm đã đạt tới trình độ nước tinh khiết thường chỉ có tác dụng dịu cơn khát, khi uống sẽ có cảm giác hơi ngọt ở miệng, rất dễ uống. Nước tinh khiết Aquafina là nước suối thuộc thương hiệu Pepsi nổi tiếng, đáng tin cậy.
+ Hướng dẫn sử dụng: Dùng trực tiếp, ngon hơn khi uống lạnh.', N'aquafina.png', 4000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (30, N'NƯỚC TINH KHIẾT DASANI 500ML', 10, NULL, N'dasani.png', 4000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (31, N'NƯỚC KHOÁNG LAVIE 350ML', 10, N'- Nước Khoáng Thiên Nhiên Lavie Chai 350ml được sản xuất từ nguồn nước khoáng sâu trong lòng đất, được lọc qua nhiều tầng địa chất giàu khoáng chất, hấp thu muối, các yếu tố vi lượng như canxi, magiê, potassium, sodium, bicarbonate.

- Nước khoáng thiên nhiên Lavie không những cung cấp nước cho cơ thể của bạn, nó còn cung cấp cho bạn khoáng chất cần thiết để duy trì sinh lực và mang đến cho bạn một cảm giác sảng khoái.', N'lavie.png', 3000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (32, N'NƯỚC BỔ SUNG ION POCARI 500ML', 10, NULL, N'pocari.png', 15000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (33, N'NƯỚC TH-TRUE WATER 1500ML', 10, NULL, N'th true water.png', 8000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (34, N'NƯỚC KHÓANG THẠCH BÍCH CHAI 1.5L', 10, NULL, N'thạch bích.png', 8000)
INSERT INTO [dbo].[Product] ([Id], [Name], [CategoryID], [FullDescription], [Image], [Price]) VALUES (35, N'NƯỚC KHOÁNG THIÊN NHIÊN VIVANT 500ML', 10, NULL, N'vivan.png', 4000)
SET IDENTITY_INSERT [dbo].[Product] OFF
SELECT * FROM dbo.Category
SELECT * FROM dbo.Product
SELECT * FROM dbo.Contact
SELECT * FROM dbo.User