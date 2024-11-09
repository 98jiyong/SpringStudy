create table kmember(
id varchar2(8) primary key,
pass varchar2(8),
tel varchar2(13),
email varchar2(20));

select * from kmember;

delete from kmember;

drop table kmember;


create table hmember(
id varchar2(8) primary key,
pw varchar2(8));

select * from hmember;

delete from hmember;
