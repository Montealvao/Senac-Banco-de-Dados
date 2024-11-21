Create database School;

use school;


create table students(
id int auto_increment primary key,
name varchar(70) not null,
adress varchar(100) not null,
phone_number int not null,
birthday date not null
);

create table teachers(
id int auto_increment primary key,
name varchar(70) not null,
adress varchar(100) not null,
phone_number int not null,
birthday date not null,
registration int unique not null,
specialism varchar(70) not null

);

create table disciplines(
id int auto_increment primary key,
name varchar(70) not null,
teacher_id int,
student_id int,

foreign key(teacher_id) references teachers(id),
foreign key(student_id) references students(id)
);

create table class(
id int auto_increment primary key,
name varchar(10),
student_id int,
teacher_id int,
school_year int not null,

foreign key(student_id) references students(id),
foreign key(teacher_id) references teachers(id)
);


create table registrations(
id int auto_increment primary key,
student_id int,
class_id int,
school_year int,

foreign key(student_id) references students(id),
foreign key(class_id) references class(id)
);


create table notes_frequency(
id int auto_increment primary key,
discipline_id int,
student_id int,
note decimal(5,2) not null,
frequency decimal(5,2) not null,

foreign key(discipline_id) references disciplines(id),
foreign key(student_id) references students(id)
);


select students.name, class.name
from students
inner join class
on class.student_id = students.id;


