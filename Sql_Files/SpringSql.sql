-- www
create table kmember(
id varchar2(8) primary key,
pass varchar2(8),
tel varchar2(13),
email varchar2(20));
-- ��ȸ
select * from kmember;
-- ����
delete from kmember;
-- ���̺� ����
drop table kmember;

create table kboard(
type varchar2(10),
username varchar2(6),
pass varchar2(4),
title varchar2(20),
content varchar2(20),
viewmember varchar2(6),
indate timestamp);
-- ��ȸ
select * from kboard;
-- ����
delete from kboard;
-- ���̺� ����

-- www2
create table hmember(
id varchar2(8) primary key,
pw varchar2(8));

select * from hmember;

delete from hmember;