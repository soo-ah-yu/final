create database quanlicauthu

use quanlicauthu

create table cauthu(
macauthu char(2) primary key,
tencauthu varchar(50),
ngaysinh date,
phai boolean,
noisinh varchar(50))

create table thidau(
madoi char(2),
ngaythidau date,
hieuso int,
ketqua int)

create table penelty(
maphat char(5) primary key,
mact char(2), -- fk
ngayphat date,
solanphat int,
tienphat int,
loaithe enum('V','D'))

alter table penelty add constraint fk_penelty_mact foreign key (mact) references cauthu(macauthu)

INSERT INTO cauthu (macauthu, tencauthu, ngaysinh, phai, noisinh) VALUES
('01', 'Huynh Duc', '1974-09-12', 1,  'TP.HCM'),
('02', 'Hong Son', '1973-05-10', 1,  'Ha Noi'),
('03', 'Thanh Nam', '1978-12-25', 1,  'Nam Dinh'),
('04', 'Bao Khanh', '1980-12-01', 1,  'Ha Noi'),
('05', 'Duc Thang', '1976-11-15', 1,  'Ha Noi')

INSERT INTO ThiDau (MaDoi, NgayThiDau, HieuSo, KetQua) VALUES
('A1', '2004-12-22', 2, 1),
('A1', '2005-10-26', 1, 0),
('A3', '2005-10-25', 0, null),
('A5', '2005-10-10', 3, 1),
('B2', '2004-03-08', 3, 1),
('B2', '2005-08-19', 3, 0),
('C1', '2005-05-19', 1, 1),
('C2', '2004-10-30', 2, 0);

INSERT INTO Penelty (MaPhat, MaCT, NgayPhat, SoLanPhat, TienPhat, LoaiThe) VALUES
('P1', '01', '2004-12-22', 2, 250000, 'V'),
('P2', '01', '2005-08-19', 1, 450000, 'D'),
('P3', '02', '2005-10-10', 2, 250000, 'V'),
('P4', '02', '2005-10-26', 1, 100000, 'V'),
('P5', '03', '2005-10-25', 1, 450000, 'D');









