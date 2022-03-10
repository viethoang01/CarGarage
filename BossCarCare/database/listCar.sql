insert into Cars(name,info,img,price,[current],color,categoryid) values
('Morning','4 cho','https://cdn.baogiaothong.vn/upload/images/2021-3/article_img/2021-09-03/img-bgt-2021-morning-1630635125-width1280height720.jpeg',
300000,'0','white',8),
('I10','4 cho','https://image-us.24h.com.vn/upload/4-2020/images/2020-12-30/Kia-Rio-2021-ra-mat-gia-quy-doi-chi-tu-370-trieu-dong-1-1609312019-657-width660height440.jpg',
400000,'0','white',6),
('City','4 cho sendan','http://icdn.dantri.com.vn/zoom/1200_630/2020/12/10/hondacity-2020-dauxe-1607553580639.jpg',
500000,'0','red',1),
('Rio','4 cho sendan','https://katavina.com/uploaded/tin-tuc/kia-rio-2021-1.jpg',
500000,'0','blue',8),
('K3','4 cho sendan','https://www.carscoops.com/wp-content/uploads/2019/04/c55861e4-2020-kia-k3-phev-china-0.jpg',
400000,'0','red',8),
('Mazda 3','4 cho sendan','https://mazdamiennam.com/wp-content/uploads/2019/11/dau-mazda-3-2020-600x450.jpg',
400000,'0','red',9),
('Mazda 6','4 cho sendan','https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2021-mazda-mazda6-carbon-edition-394-edit-1611709080.jpg?crop=0.569xw:0.638xh;0.377xw,0.362xh&resize=640:*',
800000,'0','black',9),
('Civic','4 cho sendan','http://cms-i.autodaily.vn/du-lieu/2018/10/18/rg-geneva-2017-honda-civic-type-r-1-1600.jpg',
900000,'0','red',1),
('Rondo AT','7 cho','https://img1.oto.com.vn/2021/08/23/OpzfnMD2/rondo-2821.jpg',
600000,'0','white',8),
('Rondo AT','7 cho','https://tuvanmuaxe.vn/upload/upload_img/images/chi-tiet-toyota-innova-2018-MT-tuvanmuaxe-13.jpg',
800000,'0','gray',2),

insert into Categories values
('Mazda')
select * from Categories

create table CarRentalInvoice(
	id int identity(1,1) primary key,
	carid int not null,
	Accid int,
	songaythue int,
	
	donvi varchar(50),
	namecustomer nvarchar(150) not null,
	CMND varchar(150) not null,
	phone varchar(50) not null,
	email varchar(150) not null,
	code_gioithieu varchar(150),
	date_of_hire Date default GETDATE() not null,
	start_date_of_hire Date not null,
	end_date_of_hire Date not null,
	totalmoney money,
	CONSTRAINT fk_car_Invoice
  FOREIGN KEY (carid)
  REFERENCES Cars (id),
  CONSTRAINT fk_id_Acc_Invoice
  FOREIGN KEY (Accid)
  REFERENCES Account (id)
	
)


create table BookingInvoice(
	id int identity(1,1) primary key,
	Accid int,
	donvi varchar(50),
	namecustomer nvarchar(150) not null,
	CMND varchar(150) not null,
	phone varchar(50) not null,
	email varchar(150) not null,
	code_gioithieu varchar(150),
	CONSTRAINT fk_id_Acc_Booking
	FOREIGN KEY (Accid)
	REFERENCES Account (id),
	date_of_booking Date default GETDATE() not null,
	date_maintenance Date,
	
)

insert into Account values
('hoangnvliu@gmail.com','cubi9xld123')

insert into CarRentalInvoice values
(19,1,2,'ca nhan','Nguyễn Việt Hoàng','HE151236','0988903540','hoangnvliu@gmail.com',null,GETDATE(),'03/01/2022','03/03/2022',1000000*2)
insert into CarRentalInvoice (Carid,Accid,songaythue,donvi, namecustomer, CMND, phone, email, code_gioithieu,start_date_of_hire,end_date_of_hire,totalmoney) values
(12,1,2,'ca nhan','Tran Hoai An','HE151236','0988903540','hoangnvliu@gmail.com',null,'03/10/2022','03/12/2022',1000000*2),
(19,1,2,'ca nhan','Hoang Viet','HE151236','0988903540','hoangnvliu@gmail.com',null,'03/18/2022','03/20/2022',400000*2),
(12,1,2,'ca nhan','Trang Tran Trinh','SE123456','0988903540','hoangnvliu@gmail.com',null,'3/23/2022','03/25/2022',400000*2),


insert into BookingInvoice values
(1,'ca nhan','Nguyễn Việt Hoàng','HE151236','0988903540','hoangnvliu@gmail.com',null,GETDATE(),'03/05/2022')





select hoadonid,accid,rs2.carid,cate.name+' '+rs2.carname as carname,donvi,namecustomer,CMND,email,phone,code_gioithieu,date_of_hire,start_date_of_hire,end_date_of_hire,songaythue,price, totalmoney
from Categories cate inner join 
(select hoadonid,accid,categoryid,rs.carid,car.name as carname,donvi,namecustomer,CMND,email,phone,code_gioithieu,date_of_hire,start_date_of_hire,end_date_of_hire,songaythue,price, CAST( totalmoney AS int)as totalmoney
 from Cars car inner join 
 (select acc.id as accid, carid,donvi,namecustomer,CMND,email,phone,code_gioithieu,date_of_hire,start_date_of_hire,end_date_of_hire,songaythue,totalmoney,CRI.id as hoadonid from Account acc inner join CarRentalInvoice CRI on acc.id =  CRI.Accid and acc.id = 1) as rs 
on rs.carid = car.id)as rs2
on rs2.categoryid = cate.id 


select * from BookingInvoice where Accid = 1

alter table BookingInvoice
add carname varchar(50) null,km int, bienso varchar(15), dichvu varchar(150),gio varchar(50)

insert into BookingInvoice (Accid,namecustomer,phone,email,carname,km,bienso,dichvu,date_maintenance,gio) values
('1','Hoang Viet','0988903540','hoangnvliu@gmail.com','CR-V','123','18D101234','baoduong','03/10/2022','4:30')

select hoadonid,rs1.carname,rs1.price, rs1.carid,c.Accid,c.donvi,c.namecustomer,c.CMND,c.phone,c.email,c.code_gioithieu,c.date_of_hire,c.start_date_of_hire,c.end_date_of_hire,c.songaythue,c.totalmoney  from CarRentalInvoice c inner join 
(select ROW_NUMBER() over(order by cri.id asc) as rownum,cri.id,cri.carid,c.name as carname,c.price,cri.id as hoadonid  from CarRentalInvoice cri inner join Cars c on c.id = cri.carid) as rs1
on rs1.id = c.id
WHERE rownum >= ((1-1) * 10) + 1 AND rownum <=  10* 1

select c.Accid,c.carid,c.donvi,c.namecustomer,c.CMND,c.phone,c.email,c.code_gioithieu,c.date_of_hire,c.start_date_of_hire,c.end_date_of_hire,c.songaythue,c.totalmoney  from CarRentalInvoice c inner join 
(select ROW_NUMBER() over(order by id asc) as rownum,id from CarRentalInvoice ) as rs1
on rs1.id = c.id
WHERE rownum >= ((1-1) * 10) + 1 AND rownum <=  10* 1

select * from
(select * from BookingInvoice ) as rs1 inner join
(select row_number() over(order by id asc) as rownum,id from BookingInvoice
) as rs2 on rs1.id = rs2.id WHERE rownum >= ((1-1) * 10) + 1 AND rownum <=  10* 1

select * from CarRentalInvoice
select * from BookingInvoice

update CarRentalInvoice set carid = ?,Accid = ?,songaythue= ?,donvi = ?,namecustomer = ?,CMND = ?,phone = ?,email = ?,code_gioithieu = ?,date_of_hire = ?,start_date_of_hire = ?, end_date_of_hire = ?,totalmoney = ? where id = ?

UPDATE BookingInvoice set Accid = ?,namecustomer = ?,phone = ?,email = ?,date_of_booking = ?,date_maintenance = ?,carname = ?,km = ?,bienso = ?,dichvu = ?,gio = ? where id = ?