CREATE DATABASE datxedulich
go

CREATE TABLE IF NOT EXISTS users (
  idusers int NOT NULL auto_increment,
  username varchar(30) NOT NULL,
  password varchar(30) NOT NULL,
  email varchar(30) NOT NULL,
  phone int,
  status int,
  PRIMARY KEY  (idusers) 
) 
go
CREATE TABLE thongtinxe (
ma_xe int,
ten_xe varchar (50),
mo_ta_xe varchar (500),
hinhanh varchar (100),
so_cho int,
primary key(ma_xe)
)

go 

CREATE TABLE gia (
ma_xe int,
don_gia_ngay float,
don_gia_theo_km float,
primary key(ma_xe)
)

go

CREATE TABLE datxe(
ma_dat_xe varchar(30),
ma_xe int,
idusers int,
so_cho int,
so_luong int,
ngay_muon date,
ngay_tra date,
quangduong float,
primary key(ma_dat_xe)
)

go

CREATE TABLE hoadon(
ma_hoa_don int,
idusers int,
thanh_tien float,
primary key (ma_hoa_don)
)
go

ALTER TABLE `gia` ADD FOREIGN KEY (`ma_xe`) REFERENCES `thongtinxe`(`ma_xe`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `datxe` ADD FOREIGN KEY (`ma_xe`) REFERENCES `thongtinxe`(`ma_xe`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `hoadon` ADD FOREIGN KEY (`idusers`) REFERENCES `uers`(`idusers`) ON DELETE RESTRICT ON UPDATE RESTRICT;



INSERT INTO `thongtinxe` ( `ten_xe`, `mo_ta_xe`, `hinhanh`, `so_cho`) VALUES
( 'Mazda CX5', 'số ghế: 4 chỗ,đời xe: 2014 - 2017, ngoại thất: chủ đạo là màu đen, kính được dán phim cách nhiệt cao cấp.', 'xe_4_cho_mazda_cx5.jpg', 4);
INSERT INTO `thongtinxe` ( `ten_xe`, `mo_ta_xe`, `hinhanh`, `so_cho`) VALUES
( 'Toyota vios 2017', 'số ghế: 4 chỗ,thuộc dòng xe sedan hạng B cỡ nhỏ được sản xuất và lắp ráp tại Việt Nam', 'xe-5-cho-toyota-vios-2017.jpg', 4);
INSERT INTO `thongtinxe` ( `ten_xe`, `mo_ta_xe`, `hinhanh`, `so_cho`) VALUES
( 'Toyota vios 2017', 'số ghế: 4 chỗ,Thế hệ mới Toyota Vios 2018 vừa chính thức ra mắt người tiêu dùng trong nước, với thiết kế đầy cảm xúc cùng những 
trang bị tiện nghi và an toàn tiên tiến hàng đầu phân khúc, đạt tiêu chuẩn An toàn 5* sao ASEAN NCAP với 07 túi khí, hệ thống cân bằng điện tử được
 tiêu chuẩn hóa trên tất cả các phiên bản.', 'xe-5-cho-toyota-vios-2018.jpg', 4);
INSERT INTO `thongtinxe` ( `ten_xe`, `mo_ta_xe`, `hinhanh`, `so_cho`) VALUES
('Inova', 'số ghế: 8 chỗ Toyota innova 2018 được sinh ra để phục vụ những nhu cầu tối ưu của khách hàng với khoảng không gian bên trong rất rộng rãi.
Cốp sau của xe Toyota Innova 2018 với dung tích khá lớn giúp chứa nhiều đồ dùng, vật dụng, tiện lợi cho những chuyến đi dã ngoại của gia đình', 'xe-8-cho-inova.jpg', 8);
INSERT INTO `thongtinxe` ( `ten_xe`, `mo_ta_xe`, `hinhanh`, `so_cho`) VALUES
( 'Fortuner 2017', 'số ghế: 8 chỗ Toyota Fortuner 2017, chiếc SUV 8 chỗ gầm cao, máy thoáng này không chỉ chở thoái mái gia đình 8 người 
mà nó còn rất mạnh mẽ và chắc chắn để có thể thoải mái off-road trên những cung đường khó khăn','xe-8-cho-fortuner.jpg', 8);
INSERT INTO `thongtinxe` ( `ten_xe`, `mo_ta_xe`, `hinhanh`, `so_cho`) VALUES
('Fortuner 2018', 'số ghế: 8 chỗ nội thất tiện nghi mang phong cách hiện đại, đáp ứng nhu cầu của những gia đình thành đạt hay những người khó tính nhất.
 Động cơ  theo tiêu chí thông minh, mạnh mẽ và tiết kiệm nhiên liệu', 'xe-8-cho-fortunerrr.jpg', 8);
 INSERT INTO `thongtinxe` ( `ten_xe`, `mo_ta_xe`, `hinhanh`, `so_cho`) VALUES
('toyota fortransit', 'Kích thước khá rộng rải giúp mang lại cho xe một không gian nội thất vừa đủ rộng và thoải mái cho các hành khách ở những hành trình xa.', 'xxe-16-cho-toyota-fortransit.jpg', 16);
INSERT INTO `THONGTINXE` ( `ten_xe`, `mo_ta_xe`, `hinhanh`, `so_cho`) VALUES
( 'Mercedes Benz Sprinter', 'Mercedes Benz Sprinter dòng xe 16 chỗ sang trọng, lịch lãm trong phân khúc với khả năng vận hành êm ái, cách âm tốt', 'xe-16-Mercrdes.jpg', 16);
INSERT INTO `thongtinxe` ( `ten_xe`, `mo_ta_xe`, `hinhanh`, `so_cho`) VALUES
( 'Huyndai Solati', 'Người tiêu dùng và chuyên gia đều đánh giá Hyundai Solati cao ở động cơ mạnh mẽ, hơn hẳn các đối thủ trong phân khúc xe thương mại 35 chỗ. ', 'Huyndai Solati.jpg', 16);
INSERT INTO `thongtinxe` ( `ten_xe`, `mo_ta_xe`, `hinhanh`, `so_cho`) VALUES
( 'Hyundai Aero', 'kiểu dáng sang trọng, thiết kế hiện đại, linh kiên nhập khẩu chính hãng từ Hyundai Hàn Quốc, dòng xe này đảm bảo tính an toàn rất cao.hệ thống ghế ngồi êm, đẹp có khả năng bật ra sau tối đa giúp cho hành khách thoải mái ngả lưng trong những chuyến đi xa', 'xe-35-cho-hyundai Aero.jpg', 35);
INSERT INTO `thongtinxe` ( `ten_xe`, `mo_ta_xe`, `hinhanh`, `so_cho`) VALUES
('Iusuzu saco', 'Ưu điểm khác của dòng xe SAMCO do SAMCO sản xuất so với các dòng xe cùng loại, là xe có 5 hầm hàng lớn để cho
 khách hàng có thể để tư trang, hành lý, đặc biệt là quà lưu niệm sau chuyến đi.', 'xe-35-cho-Iusuzu-saco.jpg', 35);
INSERT INTO `thongtinxe` ( `ten_xe`, `mo_ta_xe`, `hinhanh`, `so_cho`) VALUES 
('Samco Felix', 'Samco Felix có nghĩa là may mắn, hạnh phúc, Samco mong muốn dòng xe khách cao cấp này sẽ đem đến cho khách hàng những điều tốt đẹp như tên gọi. Samco Felix được trang bị động cơ
 Isuzu đem lại cho xe sức bền, khả năng vận hành và khả năng tăng tốc mạnh mẽ.', 'xe-35-cho-samco-felix.jpg', 35);
 
 INSERT INTO `thongtinxe` (`ten_xe`, `mo_ta_xe`, `hinhanh`, `so_cho`) VALUES
( 'HUYNDAI UNIVERSE', 'Universe - Sang trọng vượt ngoài trí tưởng tượng. NGOẠI THẤT. Đèn hậu; Đèn pha độ sáng cao/Đèn sương mù tinh tế', 'Xe--45-Cho-HUYNDAI-UNIVERSE-va-HUYNDAI-SPACE---sohatravel-2.jpg', 45);
INSERT INTO `thongtinxe` ( `ten_xe`, `mo_ta_xe`, `hinhanh`, `so_cho`) VALUES
('Hyundai Aero Space', 'Dòng xe của xe Hyundai Aero Space 45 chỗ có đặc điểm là khá đa dạng về màu sắc và mẫu mã rất thanh lịch, quan trọng là động cơ có thông số kỹ thuật mạnh chịu được các yếu tố về địa hình,
 tiết kiệm nhiên liệu.', 'xe-45-cho-Hyundai-aero-space.jpg', 45);
INSERT INTO `thongtinxe` ( `ten_xe`, `mo_ta_xe`, `hinhanh`, `so_cho`) VALUES 
('Hyundai Hiclass', 'Xe HUYNDAI HI-CLASS  là loại xe được thiết kế với những chuyến du lịch đi dài , cùng với không  gian thoải mái có sức chứa từ 38- 45 người , nếu bạn muốn tổ chức một chuyến hành trình với số lượng lớn người
 tham gia thì HI-CLASS sẽ là một lựa chọn tuyện vời!!!! ', 'xe-hyundai-hiclass-45-cho-276x193.jpg', 45);
 














