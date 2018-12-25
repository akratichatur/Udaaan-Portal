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
primary key(id,udaaan_id)
);


insert into member(udaaan_id,university_id,password,name,email_id,course,department,year,year_of_joining,gender,type,clg_timing,teaching_days,responsibility,blood_group) values
('udaaan160001','161500048','12345','Akrati Chaturvedi','akrati.chaturvedi_cs16@gla.ac.in','B.Tech','CSE','3','2016','M','Day Scholar','10-6','Mon,Tue,Wed','Acadmics','A+'),
('udaaan160002','161400018','12345','Pooja Rajora','poojarajora1998@gmail.com','B.Tech','EE','3','2016','F','Hosteler','10-6','Mon,Tue,Wed','Acadmics','A+'),
('udaaan160003','161500210','12345','Gagan Saxena','gagan.saxena_cs16@gla.ac.in','B.Tech','CSE','3','2016','M','Hosteler','10-6','Mon,Tue,Wed','Acadmics','A+'),
('udaaan160004','161500091','12345','Ankita Raj','ankita.gla1_cs16@gla.ac.in','B.Tech','CSE','3','2016','F','Hosteler','10-6','Mon,Tue,Wed','Acadmics','A+'),
('udaaan160005','161500054','12345','Akshay Kumar Katiha','akshay.katiha_cs16@gla.ac.in','B.Tech','CSE','3','2016','M','Hosteler','10-6','Mon,Tue,Wed','Acadmics','A+'),
('udaaan160006','161200166','12345','Rahul Tyagi','rahultyyagi166@gmail.com','B.Tech','ME','3','2016','M','Hosteler','10-6','Mon,Tue,Wed','Acadmics','A+'),
('udaaan160007','161500083','12345','Anjali Goyal','ani.goyal169@gmail.com','B.Tech','CSE','3','2016','F','Day Scholar','10-6','Mon,Tue,Wed','Acadmics','A+'),
('udaaan160008','161500592','12345','Udit saxena','saxenaudit56@gmail.com','B.Tech','CSE','3','2016','M','Hosteler','10-6','Mon,Tue,Wed','Acadmics','A+'),
('udaaan160009','161200158','12345','Praveen Sangam Gupta','psg1997gkp@gmail.com','B.Tech','ME','3','2016','M','Hosteler','10-6','Mon,Tue,Wed','Acadmics','A+'),
('udaaan160010','161500534','12345','Shraddha Jaiswal','shraddha.jaiswal_cs16@gla.ac.in','B.Tech','CSE','3','2016','F','Hosteler','10-6','Mon,Tue,Wed','Acadmics','A+');






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
primary key(id,udaaan_id)


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
primary key(id,udaaan_id)

);