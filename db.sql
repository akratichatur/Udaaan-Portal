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
photo varchar(100) default '/static/images/user.png',
email_id varchar(50),
contact_no varchar(20) default '9*********',
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
('udaaan160001','161500048','12345','Akrati Chaturvedi','/static/images/akrati.jpg','akrati.chaturvedi_cs16@gla.ac.in','B.Tech','CSE','3','2016','M','Day Scholar','10-6','Fri,Tues,Satur','Attendance','A+'),
('udaaan160002','161400018','12345','Pooja Rajora','/static/images/user.png','poojarajora1998@gmail.com','B.Tech','EE','3','2016','F','Hosteler','10-6','Mon,Tues,Wednes','Attendance','A+'),
('udaaan160003','161500210','12345','Gagan Saxena','/static/images/user.png','gagan.saxena_cs16@gla.ac.in','B.Tech','CSE','3','2016','M','Hosteler','10-6','Mon,Tues,Satur','Acadmics','A+'),
('udaaan160004','161500091','12345','Ankita Raj','/static/images/user.png','ankita.gla1_cs16@gla.ac.in','B.Tech','CSE','3','2016','F','Hosteler','10-6','Thurs,Tues,Wednes','Acadmics','A+'),
('udaaan160005','161200166','12345','Rahul Tyagi','/static/images/user.png','rahultyyagi166@gmail.com','B.Tech','ME','3','2016','M','Hosteler','10-6','Mon,Tues,Wednes','Transportation','A+'),
('udaaan160006','161500083','12345','Anjali Goyal','/static/images/user.png','ani.goyal169@gmail.com','B.Tech','CSE','3','2016','F','Day Scholar','10-6','Mon,Satur,Thurs','Acadmics','A+'),
('udaaan160007','161500592','12345','Udit saxena','/static/images/user.png','saxenaudit56@gmail.com','B.Tech','CSE','3','2016','M','Hosteler','10-6','Mon,Tues,Wednes','Acadmics','A+'),
('udaaan160008','161200158','12345','Praveen Sangam Gupta','/static/images/user.png','psg1997gkp@gmail.com','B.Tech','ME','3','2016','M','Hosteler','10-6','Sun,Tues,Wednes','Acadmics','A+'),
('udaaan160009','161500534','12345','Shraddha Jaiswal','/static/images/user.png','shraddha.jaiswal_cs16@gla.ac.in','B.Tech','CSE','3','2016','F','Hosteler','10-6','Fri,Sun,Satur','Acadmics','A+'),


('udaaan160010','161500000','12345','Abhishek Mani Tiwari','/static/images/akrati.jpg','akrati.chaturvedi_cs16@gla.ac.in','B.Tech','CSE','1','2016','M','Day Scholar','10-6','Fri,Tues,Satur','Attendance','A+'),
('udaaan160011','161400001','12345','Aditya Shrivastava','/static/images/user.png','poojarajora1998@gmail.com','B.Tech','EE','1','2016','F','Hosteler','10-6','Mon,Tues,Wednes','Attendance','A+'),
('udaaan160012','161500002','12345','Anshika Bansal','/static/images/user.png','gagan.saxena_cs16@gla.ac.in','B.Tech','CSE','1','2016','M','Hosteler','10-6','Mon,Tues,Satur','Acadmics','A+'),


('udaaan160013','161500003','12345','Nidhi Bhatia','/static/images/akrati.jpg','akrati.chaturvedi_cs16@gla.ac.in','BCA','CSE','2','2016','M','Day Scholar','10-6','Fri,Tues,Satur','Attendance','A+'),
('udaaan160014','161400004','12345','Muskan Parwani','/static/images/user.png','poojarajora1998@gmail.com','B.Tech','EE','2','2016','F','Hosteler','10-6','Mon,Tues,Wednes','Attendance','A+'),
('udaaan160015','161500005','12345','Mukul Varshney','/static/images/user.png','gagan.saxena_cs16@gla.ac.in','B.Tech','CSE','2','2016','M','Hosteler','10-6','Mon,Tues,Satur','Acadmics','A+'),


('udaaan160016','161500006','12345','Ayushi Singh','/static/images/akrati.jpg','akrati.chaturvedi_cs16@gla.ac.in','B.Tech','CSE','4','2016','M','Day Scholar','10-6','Fri,Tues,Satur','Attendance','A+'),
('udaaan160017','161400007','12345','Gyanesh Kumar','/static/images/user.png','poojarajora1998@gmail.com','B.Tech','EE','4','2016','F','Hosteler','10-6','Mon,Tues,Wednes','Attendance','A+'),
('udaaan160018','161500008','12345','Jitendra Kushwaha','/static/images/user.png','gagan.saxena_cs16@gla.ac.in','B.Tech','CSE','4','2016','M','Hosteler','10-6','Mon,Tues,Satur','Acadmics','A+');





create table student
(
id int unsigned not null auto_increment,
name varchar(60),
father_name varchar(60),
mother_name varchar(60),
address varchar(300),
contact_no varchar(20),
class varchar(10),
gender varchar(10),
school varchar(100),
adhar_no int unique,
dob date,
year_of_joining tinyint(5),
active tinyint(2) default '1',
creation_timestamp datetime default CURRENT_TIMESTAMP,
primary key(id)
);


INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (1, "Rinku", "Foundation", "Male", "Rakesh", "Sashi", "Ajhai Khurd");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (2, "Pari", "Foundation", "Female", "Subhash Chandra", "Rajni Devi", "Ajhai Khurd");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (3, "Deepak Singh", "Foundation", "Male", "Ranveer Singh", "", "Ajhai Khurd");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (4, "Devdutt", "First", "Male", "Omprakash", "Kamlesh", "Chaumhan");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (5, "Radha", "Second", "Female", "Chandu", "Nisha", "Ajhai Khurd");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (6, "Amit", "Second", "Male", "Rajkumar", "Chandravati Devi", "Ajhai Khurd");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (7, "Priyanka Rajpoot", "Second", "Female", "Natra Pal Singh", "Vijya Devi", "Ajhai Khurd");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (8, "Brijmohan", "Second", "Male", "Debee Thakur", "Kamlesh", "Ajhai Khurd");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (9, "Sapna Singh", "Second", "Female", "Ramhet Singh", "Shyamvati Devi", "Ajhai Khurd");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (10, "Nandani Chauhan", "Second", "Female", "Rajnish Chauhan", "Sangeeta Chauhan", "Ajhai Khurd");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (11, "Chandra Pal", "First", "Male", "Manvendra Singh", "Rekha Kumari", "Ajhai Khurd");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (12, "Ramu Bhati", "First", "Male", "Rajendra Bhati", "Hena Bhati", "Chaumuhan");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (13, "Achal Kumari", "First", "Female", "Brijbhusan Singh", "Meena Singh", "Ajhai Khurd");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (14, "Avinash Sagar", "Second", "Male", "Subhash Chandra", "Rajni", "Ajhai Khurd");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (15, "Gaurav Rajput", "First", "Male", "Rambabu", "Sunita", "Ajhai Khurd");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (16, "Kavita Kumari", "Second", "Female", "Deviram Singh", "Khushboo Devi", "Ajhai Khurd");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (17, "Dheeraj Thakur", "Second", "Male", "Bablu Thakur", "Soniya", "Ajhai Khurd");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (18, "Rajni", "Second", "Female", "Sanjay", "Veenu", "Ajhai Khurd");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (19, "Neelam", "Second", "Female", "Premchand", "Krishna", "Ajhai Khurd");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (20, "Devraj", "Second", "Male", "Mahaveer", "Pinky", "Ajhai Khurd");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (21, "Khushi", "Foundation", "Female", "Rajkumar", "Arti", "Ajhai Khurd");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (22, "Vivek", "Foundation", "Male", "Pappu", "Kalo", "Chauhuman");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (23, "Rinki", "Foundation", "Female", "Subhash Chandra", "", "Ajhai Khurd");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (24, "Amar", "Foundation", "Male", "", "", "Chauhuman");
INSERT INTO student(id, name, class, gender, father_name,mother_name,address) VALUES (25, "Raj", "Foundation", "Male",  "Dhara Singh", "Raniya", "Ajhai Khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(26,"Nitesh","Second","Female","Bhagwat","Meera","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(27,"Geeta","First","Female","Sanjay Singh","Amita","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(28,"Suraj Singh","Second","Male","Lal Singh","Usha Singh","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(29,"Mayank","First","Male","Sanjay","Anita","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(30,"Rinkesh","First","Male","Rambabu","Sunita","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(31,"Mayank","First","Male","Netrapal Singh","Vijay","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(32,"Nandini Kumari","Second","Female","Rupee","Rajani","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(33,"Khushi Chauhan","Third","Female","Narendra Chauhan","Sunita Chauhan","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(34,"Rohit","Fourth","Male","Bablu","Munni","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(35,"Anushkha","Fourth","Female","Devi Ram","Khushbhu","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(36,"Jyoti","Fourth","Female","Subhash","Rajwati Devi","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(37,"Babli Rajput","Third","female","Suresh Chand","Saroj Devi","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(38,"Abhishek","Third","Male","Raju","Bejanti","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(39,"Manisha Chauhan","Third","Female","Guddan","","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(40,"Niranjan Singh","Fourth","Male","Nem Singh","Anita Singh","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(41,"Chintu Sagar","Fifth","Male","Subhash Chand","Mamta Sagar","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(42,"Devika","Fifth","Female","Rajneesh Chauhan","Sangita","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(43,"Chinki Sagar","Fifth","Female","Subhash Chand","Mamta Sagar","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(44,"Vivek Rajput","Fifth","Male","Rautan Singh","Rajjo Devi","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(45,"Hemant","Fifth","Male","Shreepal","Usha","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(46,"Vivek kumar","Fifth","Male","Indrapal","Vimla","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(47,"Vishnu Nimesh","Fifth","Male","Atar Singh","Bhagwati Devi","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(48,"Kanha","Fifth","Male",1,"Bharat urf Chura","Vimlesh","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(49,"Vishnu","Fifth","Male","Rambabu","Sunita","Ajhai khurd");
INSERT INTO student(id,name,class,gender,father_name,mother_name,address) VALUES(50,"Abhishek","Fifth","Male","Dinesh","Babli","Ajhai khurd");



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
university_id varchar(20) not null unique,
transportation_days_take varchar(30),
transportation_days_leave varchar(200),
creation_timestamp datetime default CURRENT_TIMESTAMP,
primary key(id),
foreign key(university_id) references member(university_id)
);

insert into transportation(university_id,transportation_days_take,transportation_days_leave) values
('161500048','Satur,Wednes','Tues'),
('161500010','Tues,Wednes','Satur'),
('161500091','Sun,Thurs','Satur'),
('161500092','Satur,Thurs','Thurs'),
('161500083','Mon,Fri','Satur'),
('161400018','Thurs,Sun','Satur'),
('161400001','Thurs,Fri','Fri'),
('161400004','Satur,Tues','Thurs'),
('161200158','Mon,Satur','Thurs');


CREATE TABLE attendance
(
id int unsigned not null auto_increment,
university_id varchar(20) not null unique,
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
foreign key(university_id) references member(university_id)
);

insert into attendance(university_id) values

('161400018'),
('161500210'),
('161500048'),
('161500091'),
('161200166'),
('161500083'),
('161500592'),
('161200158'),
('161500534'),
('161500000'),
('161400001'),
('161500002'),
('161500003'),
('161500004'),
('161500005'),
('161500006'),
('161500007'),
('161500008');
