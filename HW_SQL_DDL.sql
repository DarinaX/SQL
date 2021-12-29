
create table employees (
 id serial primary key,
 employee_name Varchar(50) not null
 );
 
insert into employees (employee_name)
values ('Adelina Markelova'),
('Lev Vorobyov'),
('Victoria Zaitseva'),
('Egor Karasev'),
('Mikhail Solovyov'),
('Kristina Malakhova'),
('Vera Filimonova'),
('Victor Efimov'),
('Stepan Malyshev'),
('Olga Samoylova'),
('Ekaterina Grishina'),
('Nicole Orlova'),
('Ignat Lobanov'),
('Varvara Bessonova'),
('Egor Fedorov'),
('Nadezhda Babushkina'),
('Maria Borisova'),
('Victoria Belyakova'),
('Madina Sokolova'),
('Nikita Volkov'),
('Valeria Litvinova'),
('Konstantin Abramov'),
('Stepan Rumyantsev'),
('Kira Kovaleva'),
('Valeria Vorobyova'),
('Timofey Bulgakov'),
('David Selivanov'),
('Nick Kozlov'),
('Anna Vlasova'),
('Olivia Karaseva'),
('Stefan Nikulin'),
('Emma Nikonova'),
('Maria Kuleshova'),
('Mark Shevelev'),
('Zlata Zaitseva'),
('Alina Yakovleva'),
('Roman Filatov'),
('Yesenia Danilova'),
('Ulyana Isaeva'),
('Ksenia Guseva'),
('Elizaveta Kondratieva'),
('Elizaveta Ivanova'),
('Semyon Boldyrev'),
('Mark Kovalev'),
('Ksenia Ponomareva'),
('Maxim Nazarov'),
('Arseniy Lopatin'),
('Arina Rudneva'),
('Albina Vasilyeva'),
('Valeria Bulgakova'),
('Nikolay Anisimov'),
('Ivan Vasiliev'),
('Egor Kazakov'),
('Veronika Morozova'),
('Nick Kovalev'),
('Elena Zhukova'),
('Kirill Yakovlev'),
('Daniil Chernov'),
('Dmitry Zuev'),
('Egor Kiselyov'),
('Mikhail Volkov'),
('Ksenia Gorshkova'),
('Angelina Meshcheryakova'),
('Ivan Vinokurov'),
('Polina Kryuchkova'),
('Arina Alyoshina'),
('Evgeny Egorov'),
('Safia Krylova'),
('Daria Kholodova'),
('Alexander Ivanov');


select * from employees;

create table salary (
id serial primary key,
monthly_salary int not null
);
 insert into salary(monthly_salary)
 values (1000),
(1100),
 (1200),
(1300),
 (1400),
(1500),
 (1600),
(1700),
 (1800),
(1900),
(2000),
(2100),
 (2200),
(2300),
 (2400),
(2500);

select * from salary;

create table roles(
id serial primary key,
role_name varchar(30)unique not null
);

insert into roles(role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer');
insert into roles(role_name)
values ('Senior Automation QA engineer');
select * from roles;

create table employee_salary(
id serial primary key,
employee_id int  unique not null,
salary_id int not null
);

select * from employee_salary;

insert into employee_salary(employee_id,salary_id) values(1, 3),(2,1);

insert into employee_salary(employee_id,salary_id) values (3,1),
(4,5),
(5,1),
(6,7),
(8,3),
(9,2),
(10,9),
(11,4),
(12,5),
(13,6),
(14,7),
(15,8),
(16,9),
(17,10),
(18,11),
(19,12),
(20,13),
(21,14),
(22,15),
(23,16),
(24,1),
(25,2),
(26,3),
(27,9),
(28,4),
(29,5),
(30,7),
(91,8),
(72,9),
(73,10),
(75,1),
(76,2),
(77,3),
(78,4),
(79,6),
(80,7),
(99,1);

create table roles_employee(
id serial primary key,
employee_id int unique not null,
role_id int not null,
foreign key (employee_id)
references employees(id),
foreign key (role_id)
references roles (id)
);

select * from roles_employee;

insert into roles_employee (employee_id,role_id)
values (3,4),
(5,5),
(7,8),
(8,20),
(9,10),
(10,11),
(11,12),
(12,12),
(13,14),
(15,16),
(17,15),
(18,19),
(19,3),
(20,6),
(30,7),
(40,9),
(50,13),
(60,17),
(70,18),
(21,20),
(22,19),
(23,17),
(24,16),
(25,15),
(26,14),
(27,3),
(28,5),
(29,8),
(31,12),
(32,13),
(33,14),
(35,15),
(36,1),
(37,2),
(38,6),
(39,9),
(44,5),
(55,20),
(67,8),
(41,9),
(51,1),
(52,7),
(53,15);


