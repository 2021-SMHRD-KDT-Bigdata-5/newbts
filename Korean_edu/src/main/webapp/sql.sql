create table member(
id varchar2(50) primary key not null,
password varchar2(50) not null,
name varchar2(50) not null,
birth date,
tel number not null,
address varchar2(50) not null
);

alter table member drop column score;

create table score(
	id varchar2(12) primary key not null,
	score number default 0
);

drop table member;

alter table member add score number;
select * from member;
delete from member where id='eun';