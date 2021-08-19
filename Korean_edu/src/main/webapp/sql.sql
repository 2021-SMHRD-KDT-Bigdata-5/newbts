create table member(
id varchar2(12) primary key not null,
password varchar2(15) not null,
name varchar2(10) not null,
birth date,
tel number not null,
address varchar2(50) not null,
score number default 0
);
