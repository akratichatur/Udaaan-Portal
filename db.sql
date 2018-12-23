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
course varchar(50),
department varchar(50),
year tinyint(5),
year_of_joining tinyint(5),
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


