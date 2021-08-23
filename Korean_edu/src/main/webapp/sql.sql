create table member(
id varchar2(50) primary key not null,
password varchar2(50) not null,
name varchar2(50) not null,
birth date,
tel tel varchar2(50) not null,
address varchar2(50) not null
);



create table board(
	num number(10),
	writer varchar2(50),
	content varchar2(500),
	writedate date
)


create sequence num_board
increment by 1 
start with 1 
minvalue 1 
maxvalue 100
nocycle; 
