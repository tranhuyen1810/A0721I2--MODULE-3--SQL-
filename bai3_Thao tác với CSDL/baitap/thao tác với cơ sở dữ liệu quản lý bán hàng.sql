CREATE DATABASE [QUANLYBANHANG]
GO

-- bang customer
CREATE TABLE CUSTOMER(
cID int primary key, 
[Name] varchar(25),
cAge tinyint
)

-- bang order
CREATE TABLE [ORDER](
oID int primary key,
cID int, 
oDate datetime,
oTotalPrice int
foreign key (cID) references CUSTOMER (cID)
)

--bang product
CREATE TABLE PRODUCT(
pID int primary key,
pName varchar(25),
pPrice int
)

--bang orderDetail
CREATE TABLE OrderDetail(
oID int,
pID int,
odQTY int,
foreign key (oID) references [ORDER](oID),
foreign key (pID) references PRODUCT(pID)
)

-- nhap lieu Customer
INSERT INTO CUSTOMER (cID, [Name], cAge) ValueS
(1,'Minh Quan', 10),
(2,'Ngoc Oanh', 20),
(3,'Hong Ha', 50)

-- nhap lieu Order 
INSERT INTO [ORDER] (oID, cID, oDate, oTotalPrice) ValueS
(1,1,21/3/2006),
(2,2,23/3/2006),
(3,1,16/3/2006)

INSERT INTO PRODUCT(pID, pName, pPrice) valueS
(1, 'May Giat', 3),
(2, 'Tu Lanh', 5),
(3, 'Dieu Hoa', 7),
(4, 'Quat', 1),
(5,'Bep Dien', 2)

INSERT INTO OrderDetail(oID, pID, odQTY) ValueS
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3)
go


-- HIEN THI THONG tin của order
select pID from PRODUCT
go
-- hiển thị danh sách các khách hàng đã ua hàng và danh sách sản phẩm được mua bởi khách hàng 
-- hiển thị khách hàng không mua được bất kỳ sản phẩm nào 
-- hiện thị mã hóa đơn, ngày bán và giá tiền ủa từng loại hóa đơn (giá một hóa đơn được tính bằng tổng giá bán từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán từng loại đc tính odQTY* pPrice 














