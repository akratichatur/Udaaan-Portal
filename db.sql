drop database udaaan_portal;
create Database udaaan_portal;
use udaaan_portal;

-- The Below Code will convert the entire database to UTF-8 encoding. :
ALTER DATABASE udaaan_portal CHARACTER SET utf8 COLLATE utf8_unicode_ci;

create table member
(
id int unsigned not null auto_increment,
udaaan_id varchar(20) not null unique,
university_id varchar(20) not null unique,
password varchar(20),
name varchar(50) default 'User',
photo varchar(100),
email_id varchar(50),
contact_no varchar(20),
alt_contact_no varchar(20),
course varchar(80),
department varchar(80),
year tinyint(5),
year_of_joining int(5),
gender varchar(10),
permanent_address varchar(100),
current_address varchar(100),
type varchar(20),
clg_timing varchar(20),
teaching_days varchar(150),
responsibility varchar(200),
blood_group varchar(5),
dob date,
active tinyint(2) default '1',
creation_timestamp datetime default CURRENT_TIMESTAMP,
primary key(id)
);


insert into member(udaaan_id,university_id,password,name,photo,email_id,course,department,year,year_of_joining,gender,type,clg_timing,teaching_days,responsibility,blood_group) values
('udaaan160001','161500048','12345','Akrati Chaturvedi','/static/images/akrati.jpg','akrati.chaturvedi_cs16@gla.ac.in','B.Tech','CSE','3','2016','M','Day Scholar','10-6','Fri,Tue,Sat','Attendance','A+'),
('udaaan160002','161400018','12345','Pooja Rajora','/static/images/user.png','poojarajora1998@gmail.com','B.Tech','EE','3','2016','F','Hosteler','10-6','Mon,Tue,Wed','Attendance','A+'),
('udaaan160003','161500210','12345','Gagan Saxena','/static/images/user.png','gagan.saxena_cs16@gla.ac.in','B.Tech','CSE','3','2016','M','Hosteler','10-6','Mon,Tue,Sat','Acadmics','A+'),
('udaaan160004','161500091','12345','Ankita Raj','/static/images/user.png','ankita.gla1_cs16@gla.ac.in','B.Tech','CSE','3','2016','F','Hosteler','10-6','Thur,Tue,Wed','Acadmics','A+'),
('udaaan160005','161200166','12345','Rahul Tyagi','/static/images/user.png','rahultyyagi166@gmail.com','B.Tech','ME','3','2016','M','Hosteler','10-6','Mon,Tue,Wed','Transportation','A+'),
('udaaan160006','161500083','12345','Anjali Goyal','/static/images/user.png','ani.goyal169@gmail.com','B.Tech','CSE','3','2016','F','Day Scholar','10-6','Mon,Sat,Thur','Acadmics','A+'),
('udaaan160007','161500592','12345','Udit saxena','/static/images/user.png','saxenaudit56@gmail.com','B.Tech','CSE','3','2016','M','Hosteler','10-6','Mon,Tue,Wed','Acadmics','A+'),
('udaaan160008','161200158','12345','Praveen Sangam Gupta','/static/images/user.png','psg1997gkp@gmail.com','B.Tech','ME','3','2016','M','Hosteler','10-6','Sun,Tue,Wed','Acadmics','A+'),
('udaaan160009','161500534','12345','Shraddha Jaiswal','/static/images/user.png','shraddha.jaiswal_cs16@gla.ac.in','B.Tech','CSE','3','2016','F','Hosteler','10-6','Fri,Sun,Sat','Acadmics','A+'),


('udaaan160010','161500000','12345','Akrati Chaturvedi','/static/images/akrati.jpg','akrati.chaturvedi_cs16@gla.ac.in','B.Tech','CSE','1','2016','M','Day Scholar','10-6','Fri,Tue,Sat','Attendance','A+'),
('udaaan160011','161400001','12345','Pooja Rajora','/static/images/user.png','poojarajora1998@gmail.com','B.Tech','EE','1','2016','F','Hosteler','10-6','Mon,Tue,Wed','Attendance','A+'),
('udaaan160012','161500002','12345','Gagan Saxena','/static/images/user.png','gagan.saxena_cs16@gla.ac.in','B.Tech','CSE','1','2016','M','Hosteler','10-6','Mon,Tue,Sat','Acadmics','A+'),


('udaaan160013','161500003','12345','Akrati Chaturvedi','/static/images/akrati.jpg','akrati.chaturvedi_cs16@gla.ac.in','B.Tech','CSE','2','2016','M','Day Scholar','10-6','Fri,Tue,Sat','Attendance','A+'),
('udaaan160014','161400004','12345','Pooja Rajora','/static/images/user.png','poojarajora1998@gmail.com','B.Tech','EE','2','2016','F','Hosteler','10-6','Mon,Tue,Wed','Attendance','A+'),
('udaaan160015','161500005','12345','Gagan Saxena','/static/images/user.png','gagan.saxena_cs16@gla.ac.in','B.Tech','CSE','2','2016','M','Hosteler','10-6','Mon,Tue,Sat','Acadmics','A+'),


('udaaan160016','161500006','12345','Akrati Chaturvedi','/static/images/akrati.jpg','akrati.chaturvedi_cs16@gla.ac.in','B.Tech','CSE','4','2016','M','Day Scholar','10-6','Fri,Tue,Sat','Attendance','A+'),
('udaaan160017','161400007','12345','Pooja Rajora','/static/images/user.png','poojarajora1998@gmail.com','B.Tech','EE','4','2016','F','Hosteler','10-6','Mon,Tue,Wed','Attendance','A+'),
('udaaan160018','161500008','12345','Gagan Saxena','/static/images/user.png','gagan.saxena_cs16@gla.ac.in','B.Tech','CSE','4','2016','M','Hosteler','10-6','Mon,Tue,Sat','Acadmics','A+');




create table student
(
id int unsigned not null auto_increment,
udaaan_id varchar(20) not null unique,
name varchar(60),
father_name varchar(60),
mother_name varchar(60),
address varchar(300),
contact_no varchar(20),
class varchar(10),
school varchar(100),
adhar_no int unique,
dob date,
year_of_joining tinyint(5),
active tinyint(2) default '1',
creation_timestamp datetime default CURRENT_TIMESTAMP,
primary key(id)
);

create table alumini
(
id int unsigned not null auto_increment,
udaaan_id varchar(20) not null unique,
name varchar(60),
year_of_joining tinyint(5),
permanent_address varchar(100),
current_address varchar(100),
working_company varchar(100),
password varchar(20),
photo varchar(100),
email_id varchar(50),
contact_no varchar(20),
alt_contact_no varchar(20),
blood_group varchar(5),
dob date,
active tinyint(2) default '1',
creation_timestamp datetime default CURRENT_TIMESTAMP,
primary key(id)
);


create table updates
(
id int unsigned not null auto_increment,
udaaan_id varchar(20) not null,
update_title varchar(30),
update_description varchar(200),
creation_timestamp datetime default CURRENT_TIMESTAMP,
primary key(id)

);

insert into updates(id,udaaan_id,update_title,update_description) values
(1,'udaaan160001','Sankalan is coming soon...','It is the alumini meet which is organized annually.'),
(2,'udaaan160001','Sunday Visit...','Facilis ipsum reprehenderit nemo molestias.'),
(3,'udaaan160001','Facilis ipsum nemo molestias','Facilis ipsum nemo molestias.'),
(4,'udaaan160001','Facilis ipsum nemo molestias','Facilis ipsum nemo molestias.'),
(5,'udaaan160001','Facilis ipsum nemo molestias','Facilis ipsum nemo molestias.'),
(6,'udaaan160001','Facilis ipsum nemo molestias','Facilis ipsum nemo molestias.');




create table transportation
(
id int unsigned not null auto_increment,
udaaan_id varchar(20) not null unique,
transportation_days_take varchar(30),
transportation_days_leave varchar(200),
creation_timestamp datetime default CURRENT_TIMESTAMP,
primary key(id),
foreign key(udaaan_id) references member(udaaan_id)
);

insert into transportation(udaaan_id,transportation_days_take,transportation_days_leave) values
('udaaan160001','Mon,Wed','Tue'),
('udaaan160002','Tue,Wed','Tue'),
('udaaan160003','Sun,Thur','Sun'),
('udaaan160004','Sat,Thur','Mon'),
('udaaan160005','Mon,Fri','Mon'),
('udaaan160006','Sat,Sun','Wed'),
('udaaan160007','Thur,Fri','Fri'),
('udaaan160008','Mon,Tue','Sat'),
('udaaan160009','Mon,Sat','Wed');


CREATE TABLE attendance
(
id int unsigned not null auto_increment,
udaaan_id varchar(20) not null unique,
d1 int default 0,
d2 int default 0,
d3 int default 0,
d4 int default 0,
d5 int default 0,
d6 int default 0,
d7 int default 0,
d8 int default 0,
d9 int default 0,
d10 int default 0,
d11 int default 0,
d12 int default 0,
d13 int default 0,
d14 int default 0,
d15 int default 0,
d16 int default 0,
d17 int default 0,
d18 int default 0,
d19 int default 0,
d20 int default 0,
d21 int default 0,
d22 int default 0,
d23 int default 0,
d24 int default 0,
d25 int default 0,
d26 int default 0,
d27 int default 0,
d28 int default 0,
d29 int default 0,
d30 int default 0,
d31 int default 0,
primary key(id),
foreign key(udaaan_id) references member(udaaan_id)
);

insert into attendance(udaaan_id) values
('udaaan160001'),
('udaaan160002'),
('udaaan160003'),
('udaaan160004'),
('udaaan160005'),
('udaaan160006'),
('udaaan160007'),
('udaaan160008'),
('udaaan160009');
