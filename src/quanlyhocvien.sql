create database `QuanLyHocVien`;
use QuanLyHocVien;
drop database QuanLyHocVien;

create table Address(
    idAddress int primary key auto_increment ,
    address varchar(50)
);

create table Classes(
    idClass int primary key auto_increment,
    nameClass varchar(50),
    languageClass varchar(20),
    descriptionClass varchar(30)
);

create table Students(
    idStudent int primary key auto_increment,
    fullnameStudent varchar(50),
    address_id int,
    ageStudent int,
    phoneStudent varchar(10) unique,
    class_id int,
    foreign key (address_id) references Address(idAddress),
    foreign key (class_id) references  Classes(idClass)
);

create table Course(
    idCourse int primary key auto_increment,
    nameCourse varchar(50),
    descriptionCourse varchar(20)
);

create table Point(
    idPoint int primary key auto_increment,
    course_id int,
    student_id int,
    point int,
    foreign key (course_id) references Course(idCourse),
    foreign key (student_id) references Students(idStudent)
);

alter table Address auto_increment=5;
insert into Address(address) values ('ha noi');
insert into Address(address) values ('hai phong');
insert into Address(address) values ('bac ninh');
insert into Address(address) values ('ha nam');
insert into Address(address) values ('ninh binh');

select * from Address;

alter table Classes auto_increment=5;
insert into Classes(nameclass, languageclass, descriptionclass) values ('c12','java','fulltime');
insert into Classes(nameclass, languageclass, descriptionclass) values ('c11','java','fulltime');
insert into Classes(nameclass, languageclass, descriptionclass) values ('c10','java','parttime');
insert into Classes(nameclass, languageclass, descriptionclass) values ('c02','php','parttime');
insert into Classes(nameclass, languageclass, descriptionclass) values ('c01','php','fulltime');

select *from Classes;

alter table Students auto_increment=10;
insert into Students(fullnameStudent, address_id, ageStudent, phoneStudent, class_id) values ('nguyen trung dung',5,21,'1232',5);
insert into Students(fullnameStudent, address_id, ageStudent, phoneStudent, class_id) values ('nguyen minh hieu',6,21,'1234',6);
insert into Students(fullnameStudent, address_id, ageStudent, phoneStudent, class_id) values ('tran thai duong',7,24,'1235',7);
insert into Students(fullnameStudent, address_id, ageStudent, phoneStudent, class_id) values ('nguyen phan giang',8,25,'0123',9);
insert into Students(fullnameStudent, address_id, ageStudent, phoneStudent, class_id) values ('nguyen binh giang',9,27,'123561',8);
insert into Students(fullnameStudent, address_id, ageStudent, phoneStudent, class_id) values ('luong tien lam',6,26,'12355',8);
insert into Students(fullnameStudent, address_id, ageStudent, phoneStudent, class_id) values ('khuong thi tuyen',7,22,'1235678',7);
insert into Students(fullnameStudent, address_id, ageStudent, phoneStudent, class_id) values ('nguyen nhu thiet',6,22,'23123',7);
insert into Students(fullnameStudent, address_id, ageStudent, phoneStudent, class_id) values ('bui viet tung',8,20,'12623',9);
insert into Students(fullnameStudent, address_id, ageStudent, phoneStudent, class_id) values ('tran thi anh',9,18,'1423',5);

select *from Students;

alter table Course auto_increment=3;
insert into Course(nameCourse, descriptionCourse) values ('JavaScript','giang vien Kieu Anh');
insert into Course(nameCourse, descriptionCourse) values ('JavaScript','giang vien Quan Le');
insert into Course(nameCourse, descriptionCourse) values ('PHP','giang vien Chinh');

select * from Course ;

alter table Point auto_increment=1;
insert into Point(course_id, student_id, point) values (3,10,10);
insert into Point(course_id, student_id, point) values (4,11,10);
insert into Point(course_id, student_id, point) values (5,14,10);
insert into Point(course_id, student_id, point) values (5,13,10);
insert into Point(course_id, student_id, point) values (5,12,10);
insert into Point(course_id, student_id, point) values (4,15,10);
insert into Point(course_id, student_id, point) values (4,20,10);
insert into Point(course_id, student_id, point) values (3,17,10);
insert into Point(course_id, student_id, point) values (4,18,10);
insert into Point(course_id, student_id, point) values (3,19,10);
insert into Point(course_id, student_id, point) values (3,11,10);
insert into Point(course_id, student_id, point) values (4,20,10);
insert into Point(course_id, student_id, point) values (5,19,10);
insert into Point(course_id, student_id, point) values (5,10,10);
insert into Point(course_id, student_id, point) values (3,15,10);

select *from Point;

select *from Students where fullnameStudent like 'nguyen%';
select *from Students where fullnameStudent like '%anh%';
select *from Students where ageStudent between 15 and 18;
