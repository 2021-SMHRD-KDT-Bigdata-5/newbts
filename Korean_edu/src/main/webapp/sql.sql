create table member(
id varchar2(50) primary key not null,
password varchar2(50) not null,
name varchar2(50) not null,
birth date,
tel varchar2(50) not null,
address varchar2(50) not null,
point number 
);


create table board(
	num number,
	writer varchar2(50),
	title varchar2(100),
	content varchar2(500),
	writedate date
)

insert into board values(num_board, "chan", "초등학생 한글 문의", "ㅇㅇㅇㅇ", sysdate);

create sequence num_board
increment by 1 
start with 1 
minvalue 1 
maxvalue 100
nocycle; 



