drop database mcmdb;

create database mcmdb;

use mcmdb;

//����Ա��1
create table user(
	id int(11) primary key auto_increment not null,
	username varchar(20) not null,
	password varchar(20) not null,
	role int not null,
	createTime timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
1��������Ա 0����Ա
insert into user values(1,'admin','111',1,now());
insert into user values(2,'aaa','111',0,now());

/ҩƷ���ͱ�
���ʹ��룺ҩƷ������ϵͳ�д���Ϊ���ʹ��롣
�������ƣ�ҩƷ���͵�����.
create table Pharmaceutical(
	pid int(11) primary key auto_increment not null,
	pname varchar(50) not null
);

insert into Pharmaceutical values(1,'Һ���');
insert into Pharmaceutical values(2,'ע���');
insert into Pharmaceutical values(3,'��Һ��');
insert into Pharmaceutical values(4,'���ü�');
insert into Pharmaceutical values(5,'ɢ��');
insert into Pharmaceutical values(6,'������');
insert into Pharmaceutical values(7,'���Ҽ�');
insert into Pharmaceutical values(8,'������');
insert into Pharmaceutical values(9,'���');
insert into Pharmaceutical values(10,'����');
insert into Pharmaceutical values(11,'Ӳ���');
insert into Pharmaceutical values(12,'˨��');
insert into Pharmaceutical values(13,'�����');
insert into Pharmaceutical values(14,'��Ч�Ƽ�');
insert into Pharmaceutical values(15,'Ĥ��');
insert into Pharmaceutical values(16,'�����');
insert into Pharmaceutical values(17,'Ƭ��');
insert into Pharmaceutical values(18,'��������');


//ҩƷ�����1
������룺ҩƷ������ϵͳ�д���Ϊ������롣
�������ƣ�ҩƷ��������ơ�
create table Drugclass(
	cid int(11) primary key auto_increment not null,
	cname varchar(50) not null,
	description varchar(50)
);

insert into Drugclass values(1,'����ð��','���θ�ð�����ա�ͷʹ��');
insert into Drugclass values(2,'����������','���θ�ð�����ա�ͷʹ��');
insert into Drugclass values(3,'���Ƚⶾ��','���θ�ð�����ա�ͷʹ��');
insert into Drugclass values(4,'ֹ��ƽ����','���θ�ð�����ա�ͷʹ��');
insert into Drugclass values(5,'θ������','���θ�ð�����ա�ͷʹ��');
insert into Drugclass values(6,'ά������','���θ�ð�����ա�ͷʹ��');
insert into Drugclass values(7,'����Ѫ����','���θ�ð�����ա�ͷʹ��');
insert into Drugclass values(8,'�����ڷ���','���θ�ð�����ա�ͷʹ��');
insert into Drugclass values(9,'����������','���θ�ð�����ա�ͷʹ��');
insert into Drugclass values(10,'�����ϲ���','���θ�ð�����ա�ͷʹ��');
insert into Drugclass values(11,'������ʯ��','���θ�ð�����ա�ͷʹ��');
insert into Drugclass values(12,'����ڷ���','���θ�ð�����ա�ͷʹ��');
insert into Drugclass values(13,'���������','���θ�ð�����ա�ͷʹ��');
insert into Drugclass values(14,'������ʹ����','���θ�ð�����ա�ͷʹ��');
insert into Drugclass values(15,'����ʪ��','���θ�ð�����ա�ͷʹ��');
insert into Drugclass values(16,'�̲���','���θ�ð�����ա�ͷʹ��');
insert into Drugclass values(17,'�ε���','���θ�ð�����ա�ͷʹ��');
insert into Drugclass values(18,'������','���θ�ð�����ա�ͷʹ��');

//������λ��
������λ���룺������λ��ϵͳ�д���Ϊ���롣��������
������λ���ƣ�������λ������
������λ��ַ: ������λ�ĵ�ַ��
������λ�绰��������λ�ĵ绰��
������λ��ϵ�ˣ�������λ����ϵ������
������λ��ע��������λ�ı�ע��Ϣ��

create table Supplymanager(
	sid int(15) primary key auto_increment not null,
	sname varchar(30) not null,
	saddress varchar(30) not null,
	sphone varchar(30) not null,
	contacts varchar(30) not null,
	remark varchar(60)
);

insert into Supplymanager values(1,'��������ҽҩ���޹�˾','����ʡ�����п����285��','15304437723','������','����ȫ��ͨ������GSP��֤');
insert into Supplymanager values(2,'��������ҩ','������','15304437723','������','����ȫ��ͨ������GSP��֤');
insert into Supplymanager values(3,'�Ͼ�����ҩҵ���޹�˾','����ʡ�����п����285��','025-83242000','����ƽ','����ȫ��ͨ������GSP��֤');
insert into Supplymanager values(4,'������(�Ͼ�)��ҩ���޹�˾','����ʡ�����п����285��','15304437723','Ф����','����ȫ��ͨ������GSP��֤');
insert into Supplymanager values(5,'����ҽҩ���޹�˾','����ʡ�����п����285��','15304437723','������','����ȫ��ͨ������GSP��֤');
insert into Supplymanager values(6,'��������','������','15304437723','������','����ȫ��ͨ������GSP��֤');
insert into Supplymanager values(7,'����ҩҵ���޹�˾','����ʡ�����п����285��','025-83242000','����ƽ','����ȫ��ͨ������GSP��֤');
insert into Supplymanager values(8,'��������ҩ���޹�˾','����ʡ�����п����285��','15304437723','Ф����','����ȫ��ͨ������GSP��֤');

//ҩƷ��Ϣ��
ҩƷ���(����)
ҩƷ���ƣ�ҩƷ������ ͨ �� ��
�������ƣ�ҩƷ�ļ������ơ�
�������ƣ�ҩƷ���������ơ�
ҩƷ���룺ҩƷ��ϵͳ�д���ΪҩƷ���롣
�÷�������
ҩƷ�ɷ֣�
���ҩƷ��װ�Ĺ��
��λ��������λ.
������ޣ�һ��ҩƷ�Ŀ�����ޡ�
������ޣ�һ��ҩƷ�Ŀ�����ޡ�
�����ۣ�ҩƷ�Ľ����۸�
���ۼۣ�ҩƷ�����ۼ۸�
ҩƷͼƬ
��ע

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

insert into Druginfo values(1,'���ᰱ����Ƭ',17,1,'ysacsp','�ڷ�������һ��1-2Ƭ��һ��3�Σ������','��ƷÿƬ�����ᰱ����30����','30mg*20s','��',100,1000,65.00,85.00,'ysacsp.jpg','������̵Һճ������׿ȳ���');
insert into Druginfo values(2,'�ļ���ðƬ',17,1,'sjgmp','�ڷ���һ��3��5Ƭ��һ��3�Ρ�','�۹�������Ҷ����Ƥ�����桢����Ҷ�����̡��ʲ�(��)���㸽(��)������','0.5��*18Ƭ/��*3��','��',100,1000,15.00,20.00,'sjgmp.jpg','�ļ��纮��ð����ķ���ͷʹ���������飬���Կڸɣ��ʺ���ʹ��������ʳ��');
insert into Druginfo values(3,'޽����������',17,1,'hxzqjr','��ˮ�����һ��10�ˣ�һ��2�Ρ�','��޽�㡢����Ҷ�����ơ�����(��)����Ƥ�������ġ�����(����)�����ߡ��۹����ʲݡ���Ƥ�����桢������','0.3g*12��*2��','��',100,1000,98.00,125.00,'hxzqjr.jpg','�����ʪ�����������С�������з纮������ʪ�ͣ�ͷʹ���أ�����Ʀ�ƣ��丹��ʹ��Ż��йк��');
insert into Druginfo values(4,'�ù���θ��',9,5,'jgkww','���˵���顣','ɽ髡���Ƥ����ѿ���������ǡ������Ե�','9��*2��','��',100,1000,54.00,98.00,'jgkww.jpg','����θ�������ܣ��ٽ�����');
insert into Druginfo values(5,'������濨�ɱ������',13,13,'bsftksbpwj','��ǻ���룺�������Ҳ�ǿף����������ǿף�����ֱ�� ������и���','ҩҺŨ��Ϊ0.05%���൱��ÿ�纬������濨��50΢�ˡ�','50ug*120��','ƿ',100,1000,45.00,66.00,'bsftksbpwj.jpg','��Ʒ����Ԥ�������Ƽ����Թ����Ա���(�����ݲ���)�ͳ����Թ����Ա��ס�');
insert into Druginfo values(6,'��˾ƥ�ֳ���Ƭ',17,7,'asplcrp','�ڷ����������˵���飩','��˾ƥ��','��','ƿ',100,1500,52.00,80.00,'asplcrp.jpg','Ԥ���ļ��������������˵����');


//ҩƷ����
����ţ�ҩƷ����Զ����ɵı�š�(����)
ҩƷ���ƣ�
ҩƷ���ҩƷ�ķ�װ���
ҩƷ���ţ�ҩƷ���������š�
������λ���룺������λ��ϵͳ�д���Ϊ���롣(��������)
������������ҩƷ������
�����ۣ�ҩƷ�Ľ����۸�
���ۼۣ�ҩƷ�����ۼ۸�
�����ۣ�ҩƷ�������۸�
������ڣ�ҩƷ��������ڡ�
ʧЧ���ڣ�ҩƷ��ʧЧ���ڣ�����Ԥ��ҩƷ���ڡ�
�����ˣ�ҩƷ���ľ����ˡ�

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

insert into Drugstorage values(1,1,'30mg*20s','��ҩ׼��Z10920053',1,500,65.00,85.00,66.00,'2013-01-02','2016-02-28','����');
insert into Drugstorage values(2,2,'0.5��*18Ƭ/��*3��','��ҩ׼��Z10920052',1,500,15.00,20.00,16.00,'2013-01-02','2016-02-28','����');
insert into Drugstorage values(3,3,'0.3g*12��*2��','��ҩ׼��Z10920051',1,800,98.00,125.00,99.00,'2013-01-02','2016-02-28','����');
insert into Drugstorage values(4,4,'9��*2��','��ҩ׼��Z10920042',1,600,54.00,98.00,60.00,'2013-01-02','2016-02-28','����');
insert into Drugstorage values(5,5,'50ug*120��','��ҩ׼��Z10920054',1,300,45.00,66.00,50.00,'2013-01-02','2016-02-28','����');
insert into Drugstorage values(6,6,'��','��ҩ׼��Z10920011',1,900,52.00,80.00,65.00,'2013-01-02','2016-02-28','����');

//ҩƷ�����
�����ţ�ҩƷ����ʱ�ı�š�(����)
����ҩƷ����:
��������������ҩƷ������
���ⵥ�ۣ�����ҩƷ�ĳ���۸�
���������ʱҩƷ���ܼ۸�
�������ڣ�ҩƷ�ĳ������ڡ�
�������󣺳���ʱҩƷ��������
�����ˣ�ҩƷ����ľ����ˡ�
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
insert into Drugdelivery values(1,1,1,85.00,85.00,now(),20.00,'����');
insert into Drugdelivery values(2,2,2,20.00,40.00,now(),10.00,'����');


//ҩƷ����
����ţ�ҩƷ���ı�š���������
���������ҩƷ�ڲֿ��е�������

create table Druginventory(
	id int primary key auto_increment not null,
	name varchar(50) not null,
	dnum int(11) not null
);

select * from Druginventory d,Druginfo where d.name=Druginfo.name and d.dnum>Druginfo.stockupperlimit || d.dnum<Druginfo.lowerinventory;

select * from Druginventory d left outer join Druginfo di on d.name=di.name where d.dnum>di.stockupperlimit;