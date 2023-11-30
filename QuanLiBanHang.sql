create database QuanLyBanHang

use QuanLyBanHang

create table KHACHHANG
(
MAKH CHAR(4) PRIMARY KEY,
HOTEN VARCHAR(40),
DCHI VARCHAR(50),
SODT VARCHAR(20),
NGSINH SMALLDATETIME,
NGDK SMALLDATETIME,
DOANHSO MONEY
)

CREATE TABLE NHANVIEN
(
MANV CHAR(4) PRIMARY KEY,
HOTEN VARCHAR(40),
SODT VARCHAR(20),
NGVL SMALLDATETIME
)

CREATE TABLE SANPHAM
(
MASP CHAR(4) PRIMARY KEY,
TENSP VARCHAR(40),
DVT VARCHAR(20),
NUOCSX VARCHAR(40),
GIA MONEY
)

CREATE TABLE HOADON
(
SOHD INT PRIMARY KEY,
NGHD SMALLDATETIME,
MAKH CHAR(4),
MANV CHAR(4),
TRIGIA MONEY
)

Create table CTHD
(
	SOHD	int foreign key	references HOADON(SOHD),
	MASP	char(4) foreign key references SANPHAM(MASP),
	SL		int,
	constraint PK_CTHD  primary key (SOHD,MASP)
)

ALTER TABLE HOADON ADD CONSTRAINT FK_MAKH FOREIGN KEY(MAKH)
REFERENCES KHACHHANG(MAKH)
ALTER TABLE HOADON ADD CONSTRAINT FK_MANV FOREIGN KEY(MANV)
REFERENCES NHANVIEN(MANV)

SET DATEFORMAT dmy
/*INSERT DU LIEU*/

INSERT INTO NHANVIEN VALUES ('NV01', 'Nguyen Nhu Nhut', '0927345678', '2006-04-13')
INSERT INTO NHANVIEN VALUES ('NV02', 'Le Thi Phi Yen', '0987567390', '2006-04-21')
INSERT INTO NHANVIEN VALUES ('NV03', 'Nguyen Van B', '0997047382', '2006-04-27')
INSERT INTO NHANVIEN VALUES ('NV04', 'Ngo Thanh Tuan', '0913758498','2006-06-24')
INSERT INTO NHANVIEN VALUES ('NV05', 'Nguyen Thi Truc Thanh','0918590387','2006-07-20')
 
/*NHAP DU LIEU KHACHHANG*/
insert into KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO,NGDK)values('KH01','Nguyen Van A','731 Tran Hung Dao, Q5, TpHCH','08823451','1960-10-22' ,13060000, '2006-07-22')
insert into KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO,NGDK) values('KH02','Tran Ngoc Han','23/5 Nguyen Trai, Q5, TpHCM',0908256478,'1974-03-04',280000,'2006-07-30')
insert into KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO,NGDK) values('KH03','Tran Ngoc Linh','45 Nguyen Canh Chan, Q1, TpHCM',0938776266,'1980-12-06',3860000,'2006-05-08')
insert into KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO,NGDK) values('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q10, TpHCM',0917325476, '1965-09-03',250000,'2006-02-10')
insert into KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO,NGDK)values('KH05','Le Nhat Minh','34 Truong Dinh, Q3, TpHCM',08246108,'1950-10-03',21000,'2006-10-28')
insert into KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO,NGDK)values('KH06','Le Hoai Thuong','227 Nguyen Van Cu, Q5, TpHCM',08631738,'1981-12-31',915000,'2006-11-24')
insert into KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO,NGDK)values('KH07','Nguyen Van Tam','32/3 Tran Binh Trong, Q5, TpHCM',0916783565,'1971-04-06',12500,'2006-12-01')
insert into KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO,NGDK)values('KH08','Phan Thi Thanh','45/2 An Duong Vuong, Q5, TpHCM',0938435756,'1971-01-10',365000,'2006-12-13')
insert into KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO,NGDK)values('KH09','Le Ha Vinh','873 Le Hong Phong, Q5, TpHCM',08654763,'1979-09-03',70000,'2007-01-14')
insert into KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, DOANHSO,NGDK)values('KH10','Ha Duy Lap','34/34B Nguyen Trai, Q1, TpHCM',08768904,'1983-05-02',67500,'2007-01-16')
select*from KHACHHANG
/*NHAP DU LIEU SANPHAM*/
insert into SANPHAM values('BC01','But chi','cay','Singapore',3000) 
insert into SANPHAM values('BC02','But chi','cay','Singapore',5000) 
insert into SANPHAM values('BC03','But chi','cay','Viet Nam',3500)
insert into SANPHAM values('BC04','But chi','hop','Viet Nam',30000) 
insert into SANPHAM values('BB01','But bi','cay','Viet Nam',5000) 
insert into SANPHAM values('BB02','But bi','cay','Trung Quoc',7000) 
insert into SANPHAM values('BB03','But bi','hop','Thai Lan',100000) 
insert into SANPHAM values('TV01','Tap 100 giay mong','quyen','Trung Quoc',2500) 
insert into SANPHAM values('TV02','Tap 200 giay mong','quyen','Trung Quoc',4500) 
insert into SANPHAM values('TV03','Tap 100 giay tot','quyen','Viet Nam',3000) 
insert into SANPHAM values('TV04','Tap 200 giay tot','quyen','Viet Nam',5500) 
insert into SANPHAM values('TV05','Tap 100 trang','chuc','Viet Nam',23000) 
insert into SANPHAM values('TV06','Tap 200 trang','chuc','Viet Nam',53000) 
insert into SANPHAM values('TV07','Tap 100 trang','chuc','Trung Quoc',34000) 
insert into SANPHAM values('ST01','So tay 500 trang','quyen','Trung Quoc',40000) 
insert into SANPHAM values('ST02','So tay loai 1','quyen','Viet Nam',55000) 
insert into SANPHAM values('ST03','So tay loai 2','quyen','Viet Nam',51000) 
insert into SANPHAM values('ST04','So tay','quyen','Thai Lan',55000) 
insert into SANPHAM values('ST05','So tay mong','quyen','Thai Lan',20000) 
insert into SANPHAM values('ST06','Phan viet bang','hop','Viet Nam',5000) 
insert into SANPHAM values('ST07','Phan khong bui','hop','Viet Nam',7000) 
insert into SANPHAM values('ST08','Bong bang','cai','Viet Nam',1000) 
insert into SANPHAM values('ST09','But long','cay','Viet Nam',5000) 
insert into SANPHAM values('ST10','But long','cay','Trung Quoc',7000)

/*nhap du lieu SO HOA DON */
INSERT INTO HOADON VALUES ('1001','2006-07-23','KH01','NV01',320000)
INSERT INTO HOADON VALUES ('1002','2006-08-12','KH01','NV02',840000)
INSERT INTO HOADON VALUES ('1003','2006-08-23','KH02','NV01',100000)
INSERT INTO HOADON VALUES ('1004','2006-09-01','KH02','NV01',180000)
INSERT INTO HOADON VALUES ('1005','2006-10-20','KH01','NV02',3800000)
INSERT INTO HOADON VALUES ('1006','2006-10-16','KH01','NV03',2430000)
INSERT INTO HOADON VALUES ('1007','2006-10-28','KH03','NV03',510000)
INSERT INTO HOADON VALUES ('1008','2006-10-28','KH01','NV03',440000)
INSERT INTO HOADON VALUES ('1009','2006-10-28','KH03','NV04',200000)
INSERT INTO HOADON VALUES ('1010','2006-11-01','KH01','NV01',5200000)
INSERT INTO HOADON VALUES ('1011','2006-11-04','KH04','NV03',250000)
INSERT INTO HOADON VALUES ('1012','2006-11-30','KH05','NV03',21000)
INSERT INTO HOADON VALUES ('1013','2006-12-12','KH06','NV01',5000)
INSERT INTO HOADON VALUES ('1014','2006-12-31','KH03','NV02',3150000)
INSERT INTO HOADON VALUES ('1015','2007-01-01','KH06','NV01',910000)
INSERT INTO HOADON VALUES ('1016','2007-01-01','KH07','NV02',12500)
INSERT INTO HOADON VALUES ('1017','2007-01-02','KH08','NV03',35000)
INSERT INTO HOADON VALUES ('1018','2007-01-13','KH08','NV03',330000)
INSERT INTO HOADON VALUES ('1019','2007-01-13','KH01','NV03',30000)
INSERT INTO HOADON VALUES ('1020','2007-01-14','KH09','NV04',70000)
INSERT INTO HOADON VALUES ('1021','2007-01-16','KH10','NV03',67500)
INSERT INTO HOADON VALUES ('1022','2007-01-16',Null,'NV03',7000)
INSERT INTO HOADON VALUES ('1023','2007-01-17',Null,'NV01',330000)
select*from HOADON

/*nhap du lieu CHI TIET HOA DON */
 
INSERT INTO CTHD VALUES ('1001','TV02','10')
INSERT INTO CTHD VALUES ('1001','ST01','5')
INSERT INTO CTHD VALUES ('1001','BC01','5')
INSERT INTO CTHD VALUES ('1001','BC02','10')
INSERT INTO CTHD VALUES ('1001','ST08','10')
INSERT INTO CTHD VALUES ('1002','BC04','20')
INSERT INTO CTHD VALUES ('1002','BB01','20')
INSERT INTO CTHD VALUES ('1002','BB02','20')
INSERT INTO CTHD VALUES ('1003','BB03','10')
INSERT INTO CTHD VALUES ('1004','TV01','20')
INSERT INTO CTHD VALUES ('1004','TV02','10')
INSERT INTO CTHD VALUES ('1004','TV03','10')
INSERT INTO CTHD VALUES ('1004','TV04','10')
INSERT INTO CTHD VALUES ('1005','TV05','50')
INSERT INTO CTHD VALUES ('1005','TV06','50')
INSERT INTO CTHD VALUES ('1006','TV07','20')
INSERT INTO CTHD VALUES ('1006','ST01','30')
INSERT INTO CTHD VALUES ('1006','ST02','10')
INSERT INTO CTHD VALUES ('1007','ST03','10')
INSERT INTO CTHD VALUES ('1008','ST04','8')
INSERT INTO CTHD VALUES ('1009','ST05','10')
INSERT INTO CTHD VALUES ('1010','TV07','50')
INSERT INTO CTHD VALUES ('1010','ST07','50')
INSERT INTO CTHD VALUES ('1010','ST08','100')
INSERT INTO CTHD VALUES ('1010','ST04','50')
INSERT INTO CTHD VALUES ('1010','TV03','100')
INSERT INTO CTHD VALUES ('1011','ST06','50')
INSERT INTO CTHD VALUES ('1012','ST07','3')
INSERT INTO CTHD VALUES ('1013','ST08','5')
INSERT INTO CTHD VALUES ('1014','BC02','80')
INSERT INTO CTHD VALUES ('1014','BB02','100')
INSERT INTO CTHD VALUES ('1014','BC04','60')
INSERT INTO CTHD VALUES ('1014','BB01','50')
INSERT INTO CTHD VALUES ('1015','BB02','30')
INSERT INTO CTHD VALUES ('1015','BB03','7')
INSERT INTO CTHD VALUES ('1016','TV01','5')
INSERT INTO CTHD VALUES ('1017','TV02','1')
INSERT INTO CTHD VALUES ('1017','TV03','1')
INSERT INTO CTHD VALUES ('1017','TV04','5')
INSERT INTO CTHD VALUES ('1018','ST04','6')
INSERT INTO CTHD VALUES ('1019','ST05','1')
INSERT INTO CTHD VALUES ('1019','ST06','2')
INSERT INTO CTHD VALUES ('1020','ST07','10')
INSERT INTO CTHD VALUES ('1021','ST08','5')
INSERT INTO CTHD VALUES ('1021','TV01','7')
INSERT INTO CTHD VALUES ('1021','TV02','10')
INSERT INTO CTHD VALUES ('1022','ST07','1')
INSERT INTO CTHD VALUES ('1023','ST04','6')

select  * from CTHD


SET DATEFORMAT dmy 

----------------------------- PHAN 1 ---------------------------------

--Tạo quan hệ KHACHHANG1 chứa toàn bộ dữ liệu của quan hệ KHACHHANG.
SELECT * INTO KHACHHANG1 
FROM KHACHHANG

-- 3.Thêm vào thuộc tính LOAIKH có kiểu dữ liệu là tinyint cho quan hệ KHACHHANG1.
ALTER TABLE KHACHHANG1
ADD LOAIKH TINYINT 
 
-- 6.Làm thế nào để thuộc tính LOAIKH trong quan hệ KHACHHANG1 có thể lưu các giá trị là: “Vang lai”, “Thuong xuyen”, “Vip”
ALTER TABLE KHACHHANG1
ALTER COLUMN LOAIKH VARCHAR(20) 

ALTER TABLE KHACHHANG1
ADD CONSTRAINT check_loai 
CHECK (LOAIKH IN ('Vang lai', 'Thuong xuyen', 'Vip'))

-- Bai tap II: 

-- 2.Tạo quan hệ SANPHAM1 chứa toàn bộ dữ liệu của quan hệ SANPHAM. 

SELECT * INTO SANPHAM1 
FROM SANPHAM

SELECT * FROM SANPHAM1
--3.Cập nhật giá tăng 5% đối với những sản phẩm do “Thai Lan” sản xuất (cho quan hệ SANPHAM1)

UPDATE SANPHAM1
SET Gia = Gia*1.05 
WHERE NUOCSX = 'Thai Lan' 

SELECT * FROM SANPHAM1
--4.	Cập nhật giá giảm 5% đối với những sản phẩm do “Trung Quoc” sản xuất có giá từ 10.000 trở xuống (cho quan hệ SANPHAM1).

UPDATE SANPHAM1
SET Gia = Gia*0.95 
WHERE NUOCSX = 'Trung Quoc' AND GIA <= 10000 



--5.Cập nhật giá trị LOAIKH là “Vip” đối với những khách hàng đăng ký thành viên trước ngày 1/1/2007 có doanh số từ 10.000.000 trở lên hoặc 
-- khách hàng đăng ký thành viên từ 1/1/2007 trở về sau có doanh số từ 2.000.000 trở lên (cho quan hệ KHACHHANG1).

UPDATE KHACHHANG1
SET LOAIKH = 'Vip'  
WHERE (NGDK < '1/1/2007' AND DOANHSO >= 10000000 ) 
OR ( NGDK >= '1/1/2007' AND DOANHSO >= 2000000) 


SELECT * FROM KHACHHANG1

---------------------------------PHAN 3 -----------------------------------

--1.In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất.

SELECT MASP , TENSP 
FROM SANPHAM 
WHERE NUOCSX = 'Trung Quoc'

-- 2. In ra danh sách các sản phẩm (MASP, TENSP) có đơn vị tính là “cay”, ”quyen”.

SELECT MASP , TENSP 
FROM SANPHAM 
WHERE DVT IN ('cay' , 'quyen') 


-- 3.In ra danh sách các sản phẩm (MASP,TENSP) có mã sản phẩm bắt đầu là “B” và kết thúc là “01”.

SELECT MASP , TENSP 
FROM SANPHAM 
WHERE MASP LIKE 'B%01' 

-- 4.In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quốc” sản xuất có giá từ 30.000 đến 40.000.

SELECT MASP, TENSP
FROM SANPHAM 
WHERE NUOCSX = 'Trung Quoc' and GIA between 30000 AND 40000 

-- 5.In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” hoặc “Thai Lan” sản xuất có giá từ 30.000 đến 40.000.

SELECT MASP, TENSP 
FROM SANPHAM 
WHERE NUOCSX IN (  'Trung Quoc' , 'Thai Lan' ) AND GIA BETWEEN 30000 AND 40000


-- 6.In ra các số hóa đơn, trị giá hóa đơn bán ra trong ngày 1/1/2007 và ngày 2/1/2007.

SELECT SOHD , TRIGIA 
FROM HOADON 
WHERE NGHD IN ( '1/1/2007' , '1/2/2007') 





-- 7.In ra các số hóa đơn, trị giá hóa đơn trong tháng 1/2007, sắp xếp theo ngày (tăng dần) và trị giá của hóa đơn (giảm dần).

SELECT SOHD , TRIGIA
FROM HOADON 
WHERE MONTH(NGHD) = 1 AND YEAR(NGHD) = 2007 
ORDER BY NGHD , TRIGIA DESC 

-- 8.In ra danh sách các khách hàng (MAKH, HOTEN) đã mua hàng trong ngày 1/1/2007. *

SELECT DISTINCT KH.MAKH, HOTEN 
FROM KHACHHANG KH INNER JOIN  HOADON HD
ON KH.MAKH = HD.MAKH 
WHERE NGHD = '1/1/2007'


-- 9.In ra số hóa đơn, trị giá các hóa đơn do nhân viên có tên “Nguyen Van B” lập trong ngày 28/10/2006.

SELECT SOHD , TRIGIA 
FROM HOADON HD
INNER JOIN NHANVIEN NV ON HD.MANV = NV.MANV 
WHERE HOTEN = 'Nguyen Van B' 
	AND NGHD = '28/10/2006'  

-- 10.In ra danh sách các sản phẩm (MASP,TENSP) được khách hàng có tên “Nguyen Van A” mua trong tháng 10/2006.

SELECT SP.MASP , TENSP
FROM (KHACHHANG KH INNER JOIN HOADON HD 
ON KH.makh = HD.makh ) 
INNER JOIN CTHD ON CTHD.SOHD = HD.SOHD 
INNER JOIN SANPHAM SP ON SP.MASP = CTHD.MASP 
WHERE 
	HOTEN = 'Nguyen Van A' 
	AND YEAR(NGHD) = 2006 AND MONTH(NGHD) = 10 

-- 11. Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”.

SELECT DISTINCT SOHD 
FROM CTHD 
WHERE MASP IN ('BB01' , 'BB02') 

----------------------======-----=========----------------------------

 
 -- 12.	Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”, mỗi sản phẩm mua với số lượng từ 10 đến 20.

SELECT DISTINCT SOHD 
FROM CTHD 
WHERE MASP IN ('BB02' , 'BB01') AND SL BETWEEN 10 AND 20 


-- 13.	Tìm các số hóa đơn mua cùng lúc 2 sản phẩm có mã số “BB01” và “BB02”, mỗi sản phẩm mua với số lượng từ 10 đến 20.

SELECT DISTINCT SOHD 
FROM CTHD 
WHERE Masp = 'BB01'  AND SL BETWEEN 10 AND 20
INTERSECT 
SELECT DISTINCT SOHD 
FROM CTHD 
WHERE Masp = 'BB02' AND SL BETWEEN 10 AND 20

-- 14.	In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất hoặc các sản phẩm được bán ra trong ngày 1/1/2007.
 
SELECT MASP , tensp 
FROM SANPHAM 
WHERE NUOCSX = 'Trung Quoc' 
UNION 
SELECT DISTINCT  SP.MASP , TENSP 
FROM SANPHAM SP 
INNER JOIN CTHD ON CTHD.MASP = SP.MASP 
INNER JOIN HOADON HD ON HD.SOHD = CTHD.SOHD 
WHERE NGHD = '1/1/2007'

-- 15.	In ra danh sách các sản phẩm (MASP,TENSP) không bán được.

SELECT DISTINCT SP.MASP , TENSP 
FROM SANPHAM SP 
LEFT OUTER JOIN CTHD 
ON SP.MASP = CTHD.MASP 
WHERE SOHD IS NULL  


-- 16.	In ra danh sách các sản phẩm (MASP,TENSP) không bán được trong năm 2006.

SELECT MASP , TENSP 
FROM SANPHAM 
EXCEPT 
SELECT distinct SP.MASP , TENSP 
FROM SANPHAM SP INNER JOIN CTHD ON CTHD.MASP = SP.MASP 
INNER JOIN HOADON HD ON HD.SOHD = CTHD.SOHD 
WHERE YEAR(NGHD)= 2006 

-- 17.	In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất không bán được trong năm 2006.

SELECT MASP , TENSP 
FROM SANPHAM 
WHERE NUOCSX = 'Trung Quoc' 
EXCEPT 
SELECT distinct SP.MASP , TENSP 
FROM SANPHAM SP INNER JOIN CTHD ON CTHD.MASP = SP.MASP 
INNER JOIN HOADON HD ON HD.SOHD = CTHD.SOHD 
WHERE NUOCSX = 'Trung Quoc' and YEAR(NGHD)= 2006 


-- 18.	Tìm số hóa đơn đã mua tất cả các sản phẩm do Singapore sản xuất.
-- lỗi nhập data có thêm dấu cách chổ singapore 
UPDATE SANPHAM 
SET NUOCSX ='Singapore' 
WHERE MASP = 'BC02'
-- Cách 1:
SELECT DISTINCT C1.SOHD 
FROM CTHD C1 
WHERE NOT EXISTS (
select masp from SANPHAM 
WHERE NUOCSX = 'Singapore'
EXCEPT        
SELECT MASP 
FROM CTHD C2 
WHERE C2.SOHD = C1.SOHD )

-- Cách 2: 
SELECT SOHD 
FROM CTHD INNER JOIN SANPHAM SP 
ON SP.MASP = CTHD.MASP 
WHERE  SP.NUOCSX = 'Singapore'  
group by sohd 
HAVING count(distinct SP.masp) = (SELECT COUNT( distinct MASP) FROM SANPHAM SP1 WHERE SP1.NUOCSX= 'Singapore' ) 

-- CÁCH 3: NOT EXIST - NOT EXIST 
SELECT SOHD 
FROM HOADON HD   
WHERE NOT EXISTS (SELECT * FROM SANPHAM SP WHERE SP.NUOCSX = 'Singapore' 
				AND NOT EXISTS ( SELECT * FROM CTHD C 
								WHERE HD.SOHD = C.SOHD 
								AND SP.MASP = C.MASP ) )
-- 19.	Tìm số hóa đơn trong năm 2006 đã mua ít nhất tất cả các sản phẩm do Singapore sản xuất.

-- Cách 1: 
SELECT HD.SOHD 
FROM  HOADON HD 
WHERE YEAR(NGHD) = 2006 AND 
	NOT EXISTS ( SELECT masp FROM SANPHAM WHERE NUOCSX = 'Singapore' 
	EXCEPT SELECT masp FROM CTHD C2 WHERE HD.SOHD = C2.SOHD ) 

--Cách 2: Having - Group by 
SELECT HD.SOHD 
FROM HOADON HD 
INNER JOIN CTHD C ON C.SOHD = HD.SOHD 
INNER JOIN SANPHAM SP ON SP.MASP = C.MASP 
WHERE YEAR(NGHD) = 2006  AND NUOCSX = 'Singapore' 
GROUP BY (HD.SOHD) 
HAVING COUNT(C.MASP) = (
SELECT COUNT(MASP) 
FROM sanpham 
WHERE NUOCSX = 'Singapore' ) 

-- Cách 3: 
SELECT HD.SOHD 
FROM HOADON HD 
WHERE YEAR(NGHD) = 2006 AND NOT EXISTS (SELECT * FROM SANPHAM SP 
		WHERE NUOCSX = 'SINGAPORE' 
		AND NOT EXISTS ( SELECT * FROM CTHD WHERE CTHD.SOHD = HD.SOHD AND CTHD.MASP = SP.MASP )) 

-- 20.	Có bao nhiêu hóa đơn không phải của khách hàng đăng ký thành viên mua?
SELECT count(SOHD) AS 'SO LUONG HOA DON' 
FROM HOADON
WHERE MAKH is null
-- 21.	Có bao nhiêu sản phẩm khác nhau được bán ra trong năm 2006.

SELECT COUNT(DISTINCT MASP) AS 'SỐ LƯỢNG' 
FROM CTHD INNER JOIN HOADON HD 
ON HD.SOHD = CTHD.SOHD 
WHERE YEAR(NGHD) = 2006 

-- 22.	Cho biết trị giá hóa đơn cao nhất, thấp nhất là bao nhiêu ?
SELECT MAX(TRIGIA) AS 'Trị giá hóa đơn cao nhất' , MIN (TRIGIA) AS 'Trị giá hóa đơn thấp nhất'
FROM HOADON 

-- 23.	Trị giá trung bình của tất cả các hóa đơn được bán ra trong năm 2006 là bao nhiêu?
SELECT AVG(TRIGIA) AS 'Trung Bình' 
FROM HOADON 
WHERE YEAR(nghd) =2006 
-- 24.	Tính doanh thu bán hàng trong năm 2006.
SELECT SUM(TRIGIA) AS 'Doanh Thu' 
FROM HOADON 
WHERE YEAR(nghd) =2006 


----------------------------------------------------------------------------


-- 25.	Tìm số hóa đơn có trị giá cao nhất trong năm 2006.
SELECT TOP 1 WITH TIES SOHD , TRIGIA
FROM HOADON HD 
WHERE YEAR(NGHD) = 2006 
GROUP BY SOHD , trigia 
ORDER BY TRIGIA DESC 

-- 26.	Tìm họ tên khách hàng đã mua hóa đơn có trị giá cao nhất trong năm 2006.

SELECT KH.HOTEN 
FROM KHACHHANG KH 
INNER JOIN HOADON HD ON HD.MAKH = KH.MAKH 
WHERE HD.SOHD IN 
(SELECT TOP 1 WITH TIES SOHD FROM HOADON HD 
WHERE  YEAR(hd.NGHD) = 2006 
ORDER BY TRIGIA DESC )

SELECT HOTEN 
FROM KHACHHANG K
INNER JOIN HOADON H 
ON K.MAKH = H.MAKH 
WHERE SOHD IN (
SELECT SOHD 
FROM HOADON 
WHERE YEAR(nghd) = 2006 AND TRIGIA = (
SELECT MAX(TRIGIA) 
FROM HOADON ))

-- 27.	In ra danh sách 3 khách hàng đầu tiên (MAKH, HOTEN) sắp xếp theo doanh số giảm dần.

SELECT TOP 3 KH.HOTEN 
FROM KHACHHANG KH 
ORDER BY DOANHSO DESC 
-- 28.	In ra danh sách các sản phẩm (MASP, TENSP) có giá bán bằng 1 trong 3 mức giá cao nhất.

SELECT MASP , TENSP 
FROM SANPHAM 
WHERE GIA IN ( SELECT DISTINCT TOP(3) GIA 
FROM SANPHAM 
ORDER BY GIA DESC ) 
SELECT * FROM SANPHAM 
-- 29.	In ra danh sách các sản phẩm (MASP, TENSP) do “Thai Lan” sản xuất 
-- có giá bằng 1 trong 3 mức giá cao nhất (của tất cả các sản phẩm).

SELECT MASP , TENSP 
FROM SANPHAM 
WHERE NUOCSX = 'Thai Lan' and GIA IN ( SELECT DISTINCT TOP(3) GIA 
FROM SANPHAM 
ORDER BY GIA DESC ) 

-- 30.	In ra danh sách các sản phẩm (MASP, TENSP) do “Trung Quoc” 
-- sản xuất có giá bằng 1 trong 3 mức giá cao nhất (của sản phẩm do “Trung Quoc” sản xuất).

SELECT MASP, TENSP 
FROM SANPHAM 
WHERE NUOCSX = 'Trung Quoc' AND GIA IN ( SELECT DISTINCT TOP 3 GIA 
FROM SANPHAM WHERE NUOCSX = 'Trung Quoc'
ORDER BY GIA DESC ) 

-- 31.	* In ra danh sách khách hàng nằm trong 3 hạng cao nhất (xếp hạng theo doanh số).
SELECT TOP 3 MAKH, HOTEN  
FROM KHACHHANG 
ORDER BY DOANHSO DESC 
-- 32.	Tính tổng số sản phẩm do “Trung Quoc” sản xuất.
SELECT COUNT(MASP) AS 'SL sp của Trung Quốc' 
FROM SANPHAM 
WHERE NUOCSX = 'Trung Quoc' 

-- 33.	Tính tổng số sản phẩm của từng nước sản xuất.

SELECT NUOCSX , COUNT(MASP) AS 'SL SẢN PHẨM' 
FROM SANPHAM 
GROUP BY NUOCSX 

-- 34.	Với từng nước sản xuất, tìm giá bán cao nhất, thấp nhất, trung bình của các sản phẩm.
SELECT NUOCSX , MAX(GIA) AS 'GB Cao Nhất' , min(gia) as 'GB Thấp Nhất' , AVG(GIA) AS 'GBTB' 
FROM SANPHAM 
GROUP BY NUOCSX 

-- 35.	Tính doanh thu bán hàng mỗi ngày.
SELECT NGHD , SUM(TRIGIA) AS 'Doanh Thu' 
FROM HOADON 
GROUP BY NGHD 

-- 36.	Tính tổng số lượng của từng sản phẩm bán ra trong tháng 10/2006.

SELECT MASP ,  SUM(SL) AS 'SL' 
FROM CTHD INNER JOIN HOADON HD 
ON HD.SOHD = CTHD.SOHD 
WHERE YEAR(NGHD) = 2006 AND MONTH(NGHD) = 10 
GROUP BY MASP

-- 37.	Tính doanh thu bán hàng của từng tháng trong năm 2006.
SELECT MONTH(NGHD) AS 'MONTH'  , SUM(TRIGIA) AS 'doanh thu'  
FROM HOADON 
WHERE YEAR(NGHD) = 2006 
GROUP BY MONTH(NGHD) 


-- 38.	Tìm hóa đơn có mua ít nhất 4 sản phẩm khác nhau.

SELECT SOHD 
FROM CTHD  
GROUP BY SOHD 
HAVING COUNT(DISTINCT MASP) >= 4 

-- 39.	Tìm hóa đơn có mua 3 sản phẩm do “Viet Nam” sản xuất (3 sản phẩm khác nhau).
SELECT CTHD.SOHD 
FROM CTHD INNER JOIN SANPHAM SP 
ON SP.MASP = CTHD.MASP 
WHERE nuocsx = 'Viet Nam' 
GROUP BY SOHD 
HAVING COUNT(DISTINCT SP.MASP) = 3  

-- 40.	Tìm khách hàng (MAKH, HOTEN) có số lần mua hàng nhiều nhất. 
SELECT top 1 with ties KH.MAKH , KH.HOTEN 
FROM KHACHHANG KH INNER JOIN HOADON HD 
ON KH.MAKH = HD.MAKH 
group by KH.MAKH , KH.HOTEN 
ORDER BY COUNT(SOHD) DESC 

-- 41.	Tháng mấy trong năm 2006, doanh số bán hàng cao nhất ?
SELECT TOP 1 WITH TIES MONTH(NGHD) 'THÁNG CÓ DOANH SỐ MAX IN 2006' , SUM(TRIGIA) 
FROM HOADON 
WHERE YEAR(NGHD) = 2006 
GROUP BY MONTH(NGHD) 
ORDER BY SUM(TRIGIA) DESC 

-- 42.	Tìm sản phẩm (MASP, TENSP) có tổng số lượng bán ra thấp nhất trong năm 2006.

SELECT TOP 1 WITH TIES SP.MASP , SP.TENSP 
FROM SANPHAM SP 
INNER JOIN CTHD C ON C.MASP = SP.MASP  
INNER JOIN HOADON HD ON HD.SOHD = C.SOHD 
WHERE YEAR(NGHD) = 2006 
GROUP BY SP.MASP , SP.TENSP 
ORDER BY SUM(SL) 

-- 43.	*Mỗi nước sản xuất, tìm sản phẩm (MASP,TENSP) có giá bán caonhất.

SELECT SP1.NUOCSX ,SP1.MASP , SP1.TENSP , MAX_GIA 
FROM SANPHAM SP1 
INNER JOIN (
	SELECT NUOCSX , MAX(GIA) AS MAX_GIA 
	FROM SANPHAM 
	GROUP BY NUOCSX 
	) 
SP2 ON SP1.NUOCSX = SP2.NUOCSX  AND SP1.GIA = SP2.MAX_GIA 

-- 44.	Tìm nước sản xuất sản xuất ít nhất 3 sản phẩm có giá bán khác nhau.

SELECT NUOCSX 
FROM SANPHAM 
GROUP BY NUOCSX 
HAVING COUNT( DISTINCT GIA ) >= 3 

-- 45.	*Trong 10 khách hàng có doanh số cao nhất, tìm khách hàng có số lần mua hàng nhiều nhất.

SELECT TOP 1 WITH TIES HD.MAKH AS 'Mã Khách Hàng' , KH.HOTEN AS 'Họ và tên' 
FROM HOADON HD 
INNER JOIN 
(
SELECT TOP 10 MAKH ,HOTEN 
FROM KHACHHANG 
ORDER BY DOANHSO DESC 
) KH 
ON HD.MAKH = KH.MAKH 
GROUP BY HD.MAKH ,  KH.HOTEN 
ORDER BY COUNT(SOHD)DESC 


---------------------------------------------------------------------------------------------------------------

SELECT TOP 1 WITH TIES KH.MAKH AS 'Mã Khách Hàng', KH.HOTEN AS 'Họ và Tên', COUNT(HD.SOHD) AS 'Số Lần Mua Hàng'
FROM HOADON HD
INNER JOIN (
    SELECT TOP 10 MAKH, HOTEN 
    FROM KHACHHANG
    ORDER BY DOANHSO DESC
) KH ON HD.MAKH = KH.MAKH
GROUP BY KH.MAKH, KH.HOTEN
HAVING COUNT(HD.SOHD) >= ALL (
    SELECT COUNT(SOHD)
    FROM HOADON
    WHERE MAKH IN (SELECT TOP 10 MAKH FROM KHACHHANG ORDER BY DOANHSO DESC)
    GROUP BY MAKH
)

-- 45.	*Trong 10 khách hàng có doanh số cao nhất, tìm khách hàng có số lần mua hàng nhiều nhất.
SELECT HD1.MAKH 
FROM HOADON HD1 
INNER JOIN ( SELECT TOP 10 MAKH FROM KHACHHANG KH ORDER BY DOANHSO DESC ) KH
ON KH.MAKH = HD1.MAKH
GROUP BY HD1.MAKH 
HAVING COUNT(SOHD) >= ALL 
(
SELECT COUNT(SOHD) 
FROM HOADON 
WHERE MAKH IN 
(SELECT TOP 10 MAKH FROM KHACHHANG KH ORDER BY DOANHSO DESC )
GROUP BY MAKH )

--SỐ HÓA ĐƠN CỦA KH MÀ CÓ SỐ LƯƠNG lỚN HƠN BẰNG TẤT HÓA ĐƠN CỦA KHÁCH HÀNG NẰM TRONG TOP 10 DOANH THU 