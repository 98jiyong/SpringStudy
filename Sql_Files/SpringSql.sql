-- www
create table kmember(
id varchar2(8) primary key,
pass varchar2(8),
tel varchar2(13),
email varchar2(20));
-- 조회
select * from kmember;
-- 삭제
delete from kmember;
-- 테이블 삭제
drop table kmember;

create table kboard(
type varchar2(10),
username varchar2(6),
pass varchar2(4),
title varchar2(20),
content varchar2(20),
viewmember varchar2(6),
indate timestamp);
--추가
insert into kboard values ('Database','kkk','1234','spring','paging','공개',sysdate);
-- 조회
select * from kboard;
-- 삭제
delete from kboard;
-- 테이블 삭제

-- www2
create table hmember(
id varchar2(8) primary key,
pw varchar2(8));

select * from hmember;

delete from hmember;
