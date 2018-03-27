create database QuanLyNhanSu
go
use QuanLyNhanSu
go
create table ChucVu(
MaChucVu VARCHAR(10) primary key,
TenChucVu nvarchar(50))
go
create table Luong(
BacLuong int primary key,
LuongCoBan money,
HeSoLuong int,
HeSoPhuCap int)
go
create table PhongBan(
MaPB VARCHAR(10) primary key,
TenPB nvarchar(50),
MaTruongPhong VARCHAR(10),
DiaChi nvarchar(50),
SDT char(15))
go
create table TrinhDoHocVan(
MaTDHV VARCHAR(10) primary key,
TenTrinhDo nvarchar(50),
ChuyenNganh nvarchar(50))
go
create table NhanVien(
MaNV varchar(10) primary key,
HoTen nvarchar(50),
DanToc nvarchar(50),
GioiTinh NVARCHAR(5) CHECK(GioiTinh IN (N'Nam',N'Nữ')),
SDT CHAR(15),
QueQuan nvarchar(50),
NgaySinh date,
MaTDHV VARCHAR(10) REFERENCES TrinhDoHocVan(MaTDHV),
MaPB VARCHAR(10) references PhongBan(MaPB),
BacLuong int references Luong(BacLuong)
)
go
create table ThoiGianCongTac(
MaNV VARCHAR(10) references NhanVien(MaNV),
MaCV varchar(10) references ChucVu(MaChucVu),
NgayNhanChuc date,
primary key (MaNV,MaCV))
GO

CREATE TABLE NguoiDung
(
	TaiKhoan NVARCHAR(30),
	MatKhau NVARCHAR(30)
)
GO


INSERT dbo.NguoiDung
        ( TaiKhoan, MatKhau )
VALUES  ( N'admin', -- TaiKhoan - nvarchar(30)
          N'admin'  -- MatKhau - nvarchar(30)
          )
INSERT dbo.NguoiDung
        ( TaiKhoan, MatKhau )
VALUES  ( N'user1', -- TaiKhoan - nvarchar(30)
          N'1'  -- MatKhau - nvarchar(30)
          )
go
insert into dbo.NhanVien(MaNV,HoTen,DanToc,GioiTinh,SDT,QueQuan,NgaySinh)
values ('NV07',N'Nguyễn Thanh Hằng',N'kinh',N'Nữ','0976986542',N'Hà Nội','11-23-1987'),
('NV02',N'Nguyễn Quang Huy',N'kinh',N'Nam','0973686583',N'Vĩnh Phúc','10-19-1990'),
('NV03',N'Ngô Hữu Huy',N'kinh',N'Nam','0976639201',N'Hà Nam','03-20-1993'),
('NV04',N'Bùi Trung Kiên',N'kinh',N'Nam','0976863496',N'Hà Nội','12-08-1992'),
('NV05',N'Nguyễn Thị Ngọc',N'kinh',N'Nữ','01647386289',N'Phú Thọ','02-08-1991'),
('NV06',N'Lê Bá Lộc',N'kinh',N'Nam','0976963984',N'Hà Nội','01-08-1995')
GO

CREATE PROC SP__DangKi(@taikhoan NVARCHAR(30),@matkhau NVARCHAR(30))

AS
BEGIN
INSERT dbo.NguoiDung
        ( TaiKhoan, MatKhau )
VALUES  ( @taikhoan, -- TaiKhoan - nvarchar(30)
          @matkhau  -- MatKhau - nvarchar(30)
          )
END