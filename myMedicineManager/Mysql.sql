drop database mcmdb;

create database mcmdb;

use mcmdb;

//管理员表1
create table user(
	id int(11) primary key auto_increment not null,
	username varchar(20) not null,
	password varchar(20) not null,
	role int not null,
	createTime timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
1超级管理员 0管理员
insert into user values(1,'admin','111',1,now());
insert into user values(2,'aaa','111',0,now());

/药品剂型表
剂型代码：药品剂型在系统中代号为剂型代码。
剂型名称：药品剂型的名称.
create table Pharmaceutical(
	pid int(11) primary key auto_increment not null,
	pname varchar(50) not null
);

insert into Pharmaceutical values(1,'液体剂');
insert into Pharmaceutical values(2,'注射剂');
insert into Pharmaceutical values(3,'输液剂');
insert into Pharmaceutical values(4,'眼用剂');
insert into Pharmaceutical values(5,'散剂');
insert into Pharmaceutical values(6,'浸出剂');
insert into Pharmaceutical values(7,'胶囊剂');
insert into Pharmaceutical values(8,'浸出剂');
insert into Pharmaceutical values(9,'丸剂');
insert into Pharmaceutical values(10,'软膏剂');
insert into Pharmaceutical values(11,'硬膏剂');
insert into Pharmaceutical values(12,'栓剂');
insert into Pharmaceutical values(13,'气雾剂');
insert into Pharmaceutical values(14,'长效制剂');
insert into Pharmaceutical values(15,'膜剂');
insert into Pharmaceutical values(16,'海绵剂');
insert into Pharmaceutical values(17,'片剂');
insert into Pharmaceutical values(18,'其它剂型');


//药品分类表1
分类代码：药品分类在系统中代号为分类代码。
分类名称：药品分类的名称。
create table Drugclass(
	cid int(11) primary key auto_increment not null,
	cname varchar(50) not null,
	description varchar(50)
);

insert into Drugclass values(1,'抗感冒类','主治感冒、发烧、头痛。');
insert into Drugclass values(2,'抗菌消炎类','主治感冒、发烧、头痛。');
insert into Drugclass values(3,'清热解毒类','主治感冒、发烧、头痛。');
insert into Drugclass values(4,'止咳平喘类','主治感冒、发烧、头痛。');
insert into Drugclass values(5,'胃肠道类','主治感冒、发烧、头痛。');
insert into Drugclass values(6,'维生素类','主治感冒、发烧、头痛。');
insert into Drugclass values(7,'心脑血管类','主治感冒、发烧、头痛。');
insert into Drugclass values(8,'妇科内服类','主治感冒、发烧、头痛。');
insert into Drugclass values(9,'妇科外用类','主治感冒、发烧、头痛。');
insert into Drugclass values(10,'抗糖料病类','主治感冒、发烧、头痛。');
insert into Drugclass values(11,'泌尿排石类','主治感冒、发烧、头痛。');
insert into Drugclass values(12,'五官内服类','主治感冒、发烧、头痛。');
insert into Drugclass values(13,'五官外用类','主治感冒、发烧、头痛。');
insert into Drugclass values(14,'消炎镇痛抗炎','主治感冒、发烧、头痛。');
insert into Drugclass values(15,'抗风湿类','主治感冒、发烧、头痛。');
insert into Drugclass values(16,'滋补类','主治感冒、发烧、头痛。');
insert into Drugclass values(17,'肝胆类','主治感冒、发烧、头痛。');
insert into Drugclass values(18,'激素类','主治感冒、发烧、头痛。');

//供货单位表
供货单位编码：供货单位在系统中代号为编码。（主键）
供货单位名称：供货单位的名称
供货单位地址: 供货单位的地址。
供货单位电话：供货单位的电话。
供货单位联系人：供货单位的联系人姓名
供货单位备注：供货单位的备注信息。

create table Supplymanager(
	sid int(15) primary key auto_increment not null,
	sname varchar(30) not null,
	saddress varchar(30) not null,
	sphone varchar(30) not null,
	contacts varchar(30) not null,
	remark varchar(60)
);

insert into Supplymanager values(1,'长春宝华医药有限公司','吉林省长春市宽城区285号','15304437723','王经理','并已全面通过国家GSP认证');
insert into Supplymanager values(2,'哈尔滨制药','哈尔滨','15304437723','王连安','并已全面通过国家GSP认证');
insert into Supplymanager values(3,'南京海辰药业有限公司','吉林省长春市宽城区285号','025-83242000','曹于平','并已全面通过国家GSP认证');
insert into Supplymanager values(4,'宝利化(南京)制药有限公司','吉林省长春市宽城区285号','15304437723','肖国锋','并已全面通过国家GSP认证');
insert into Supplymanager values(5,'长春医药有限公司','吉林省长春市宽城区285号','15304437723','王经理','并已全面通过国家GSP认证');
insert into Supplymanager values(6,'哈哈集团','哈尔滨','15304437723','王连安','并已全面通过国家GSP认证');
insert into Supplymanager values(7,'海辰药业有限公司','吉林省长春市宽城区285号','025-83242000','曹于平','并已全面通过国家GSP认证');
insert into Supplymanager values(8,'宝天天制药有限公司','吉林省长春市宽城区285号','15304437723','肖国锋','并已全面通过国家GSP认证');

//药品信息表
药品编号(主键)
药品名称：药品的名称 通 用 名
剂型名称：药品的剂型名称。
分类名称：药品的种类名称。
药品代码：药品在系统中代号为药品代码。
用法用量：
药品成分：
规格：药品包装的规格。
单位：单个单位.
库存下限：一种药品的库存下限。
库存上限：一种药品的库存上限。
进货价：药品的进货价格。
零售价：药品的零售价格。
药品图片
备注

create table Druginfo(
	id int(11) primary key auto_increment not null,
	name varchar(30) not null,
	pid int(11) not null,
	cid int(11) not null,
	isbn varchar(30) not null,
	usager varchar(60) not null,
	component varchar(60) not null,
	specifications varchar(50) not null,
	company varchar(50) not null,
	lowerinventory int(11) not null,
	stockupperlimit int(11) not null,	
	buyingprice double not null,
	retailprice double not null,
	image varchar(60),
	remark varchar(50),
	
	constraint fk_pid foreign key(pid) references Pharmaceutical(pid),
	constraint fk_cid foreign key(cid) references Drugclass(cid)
);

insert into Druginfo values(1,'盐酸氨溴索片',17,1,'ysacsp','口服：成人一次1-2片，一日3次，饭后服','本品每片含盐酸氨溴索30毫克','30mg*20s','盒',100,1000,65.00,85.00,'ysacsp.jpg','适用于痰液粘稠而不易咳出者');
insert into Druginfo values(2,'四季感冒片',17,1,'sjgmp','口服。一次3～5片，一日3次。','桔梗、紫苏叶、陈皮、荆芥、大青叶、连翘、甘草(炙)、香附(炒)、防风','0.5克*18片/板*3板','盒',100,1000,15.00,20.00,'sjgmp.jpg','四季风寒感冒引起的发热头痛，鼻流清涕，咳嗽口干，咽喉疼痛，恶心厌食。');
insert into Druginfo values(3,'藿香正气胶囊',17,1,'hxzqjr','开水冲服。一次10克，一日2次。','广藿香、紫苏叶、白芷、白术(炒)、陈皮、姜半夏、厚朴(姜制)、茯苓、桔梗、甘草、大腹皮、大枣、生姜、','0.3g*12粒*2板','盒',100,1000,98.00,125.00,'hxzqjr.jpg','解表，化湿，理气，和中。用于外感风寒，内伤湿滞，头痛昏重，胸膈痞闷，脘腹胀痛，呕吐泄泻。');
insert into Druginfo values(4,'济公开胃丸',9,5,'jgkww','详见说明书。','山楂、陈皮、麦芽、肉桂、甜菊糖、薄荷脑等','9克*2板','盒',100,1000,54.00,98.00,'jgkww.jpg','改善胃肠道功能，促进消化');
insert into Druginfo values(5,'丙酸氟替卡松鼻喷雾剂',13,13,'bsftksbpwj','鼻腔喷入：左手喷右侧鼻孔，右手喷左侧鼻孔，避免直接 喷向鼻中隔。','药液浓度为0.05%，相当于每喷含丙酸氟替卡松50微克。','50ug*120喷','瓶',100,1000,45.00,66.00,'bsftksbpwj.jpg','本品用于预防和治疗季节性过敏性鼻炎(包括枯草热)和常年性过敏性鼻炎。');
insert into Druginfo values(6,'阿司匹林肠溶片',17,7,'asplcrp','口服。（详情见说明书）','阿司匹林','无','瓶',100,1500,52.00,80.00,'asplcrp.jpg','预防心肌梗死复发，详见说明书');


//药品入库表
入库编号：药品入库自动生成的编号。(主键)
药品名称：
药品规格：药品的封装规格。
药品批号：药品的生产批号。
供货单位编码：供货单位在系统中代号为编码。(生产厂地)
入库数量：入库药品数量。
进货价：药品的进货价格。
零售价：药品的零售价格。
批发价：药品的批发价格。
入库日期：药品的入库日期。
失效日期：药品的失效日期，用来预警药品过期。
经手人：药品入库的经手人。

create table Drugstorage(
	id int(11) primary key auto_increment not null,
	mid int(11) not null,
	Specifications varchar(20) not null,
	Drugnumber varchar(20) not null,
	sid int(11) not null,
	storagenum int(11) not null,
	buyingprice double not null,
	retailprice double not null,
	Wholesaleprice double not null,
	startdate date not null,
	enddate date not null,
	brokerage varchar(20) not null,
	constraint fk_mid foreign key(mid) references Druginfo(id),
	constraint fk_sid foreign key(sid) references Supplymanager(sid)
);

insert into Drugstorage values(1,1,'30mg*20s','国药准字Z10920053',1,500,65.00,85.00,66.00,'2013-01-02','2016-02-28','张三');
insert into Drugstorage values(2,2,'0.5克*18片/板*3板','国药准字Z10920052',1,500,15.00,20.00,16.00,'2013-01-02','2016-02-28','张三');
insert into Drugstorage values(3,3,'0.3g*12粒*2板','国药准字Z10920051',1,800,98.00,125.00,99.00,'2013-01-02','2016-02-28','张三');
insert into Drugstorage values(4,4,'9克*2板','国药准字Z10920042',1,600,54.00,98.00,60.00,'2013-01-02','2016-02-28','张三');
insert into Drugstorage values(5,5,'50ug*120喷','国药准字Z10920054',1,300,45.00,66.00,50.00,'2013-01-02','2016-02-28','张三');
insert into Drugstorage values(6,6,'无','国药准字Z10920011',1,900,52.00,80.00,65.00,'2013-01-02','2016-02-28','张三');

//药品出库表
出库编号：药品出库时的编号。(主键)
出库药品名称:
出库数量：出库药品数量。
出库单价：单个药品的出库价格。
出库金额：出库时药品的总价格。
出库日期：药品的出库日期。
出库利润：出库时药品的总利润。
经手人：药品出库的经手人。
create table Drugdelivery(
	id int(11) primary key auto_increment not null,
	mid int(11) not null,
	eliverynum int(11) not null,
	price double not null,
	Outgoingamount double not null,
	eliverydate timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	Outprofit double not null,
	brokerage varchar(20) not null,
	constraint fk_emid foreign key(mid) references Druginfo(id)
);
insert into Drugdelivery values(1,1,1,85.00,85.00,now(),20.00,'李四');
insert into Drugdelivery values(2,2,2,20.00,40.00,now(),10.00,'张三');


//药品库存表
入库编号：药品入库的编号。（主键）
库存数量：药品在仓库中的数量。

create table Druginventory(
	id int primary key auto_increment not null,
	name varchar(50) not null,
	dnum int(11) not null
);

select * from Druginventory d,Druginfo where d.name=Druginfo.name and d.dnum>Druginfo.stockupperlimit || d.dnum<Druginfo.lowerinventory;

select * from Druginventory d left outer join Druginfo di on d.name=di.name where d.dnum>di.stockupperlimit;