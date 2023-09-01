REM   Script: lab31
REM   dbms

create table directors(id int primary key,name varchar2(40)not null);

desc directors


create table stars(id int primary key,name varchar2(40) unique , about varchar2(100));

desc stars


create table movies(id int primary key,title varchar2(40) ,R_date date,image_url varchar2(100),certificate varchar2(20),runtime number(3,2),imdb_rating number(3,1) default 0,description varchar2(100), metascore number(3,1) default 0,votes int default 0,gross number(10,2) check (gross>10000)) ;

desc movies


create table moviesdirectors(moviesid int references movies(id),directorsid int references directors(id)primary key);

desc moviesdirectors


create table moviesstars(moviesid int references movies(id),starsid int references stars(id) primary key);

desc moviesstars


alter table stars add dob date;

desc stars


alter table movies drop column gross;

desc movies


desc directors


desc stars


desc movies


desc moviesdirectors


desc moviesstars


desc stars


desc movies


alter table movies add language varchar2(20);

desc movies


desc directors


desc stars


desc movies


desc stars


desc movies


alter table movies add gross number(10,2);

desc movies


alter table movies rename column R_date to releasedate;

desc movies


alter table  directors add age number check (age>=7);

desc directors


desc directors


alter table movies add hit number(1) default 0;

desc movies


desc industryhit


alter table movies add entry_date date;

desc movies


drop table moviesstars;

 create table moviesstars(moviesid int references movies(id),starsid int references stars(id) primary key);

desc moviesstars


alter table directors modify name varchar2(30);

desc directors


alter table movies add constraint chk_r_date check(releasedate < entry_date);

alter table movies add constraint chk_lang check(language in ('Malayalam','English','Tamil','Hindi'));

desc movies


desc directors


insert into directors values(01,'Raffi',65);

insert into directors values(02,'basil joseph ',29);

insert into directors values(03,'vineeth sreenivasan',37);

insert into directors values(04,'james cameron ',65);

insert into directors values(05,'Mani Ratnam ',67);

insert into directors values(06,'S. Shankar',60);

insert into directors values(07,'Farhan Akhtar',49);

select * from directors;

insert into directors values(08,'sibi malayil ',59);

insert into directors values(09,'alphonse puthren',39);

insert into directors values(10,'Jude Anthany Joseph',40);

select * from directors;

select * from directors;

desc stars


desc stars


insert into stars values(101,'Cillian Murphy','Irish actor','25/May/1976');

insert into stars values(102,'mammootty','malayalam actor','25/jan/1973') 
 
 
 
 
 
;

insert into stars values(103,'mohanlal','malayalam actor','26/jun/1970');

insert into stars values(104,'vijay','tamil actor','18/feb/1980');

insert into stars values(105,'surya','tamil actor','10/may/1968');

insert into stars values(106,'shah rukh khan','hindi actor','1/apr/1970');

insert into stars values(107,'bhavana','malayalam actress','4/sep/1995');

insert into stars values(108,'manju warrier','malayalam actress','4/sep/1987');

insert into stars values(109,'hrithik roshan','bollywood actor','10/January/1974');

insert into stars values(110,'Emma Watson','hollywood actress','15/April/1990');

desc stars


select * from stars;

desc stars


select * from stars;

desc stars


delete from stars;

desc stars


INSERT INTO stars VALUES (103,'mohanlal','malayalam actor',TO_DATE('1970-06-29','YYYY-MM-DD'));

INSERT INTO stars VALUES (104,'vijay','tamil actor',TO_DATE('1980-02-18','YYYY-MM-DD'));

INSERT INTO stars VALUES (105,'surya','tamil actor',TO_DATE('1968-05-10','YYYY-MM-DD'));

INSERT INTO stars VALUES (106,'shah rukh khan','hindi actor',TO_DATE('1970-04-01','YYYY-MM-DD'));

INSERT INTO stars VALUES (107,'bhavana','malayalam actress',TO_DATE('1995-07-04','YYYY-MM-DD'));

INSERT INTO stars VALUES (108,'manju warrier','malayalam actress',TO_DATE('1987-07-04','YYYY-MM-DD'));

INSERT INTO stars VALUES (109,'hrithik roshan','bollywood actor',TO_DATE('1974-01-10','YYYY-MM-DD'));

INSERT INTO stars VALUES (110,'Emma Watson','hollywood actress',TO_DATE('1990-04-15','YYYY-MM-DD'));

desc stars


select * from stars;

delete from stars;

insert into stars values(101,'Cillian Murphy','Irish actor','25/May/1976');

insert into stars values(102,'mammootty','malayalam actor','25/jan/1973');

INSERT INTO stars VALUES (103,'mohanlal','malayalam actor',TO_DATE('1970-06-29','YYYY-MM-DD'));

INSERT INTO stars VALUES (104,'vijay','tamil actor',TO_DATE('1980-02-18','YYYY-MM-DD'));

INSERT INTO stars VALUES (105,'surya','tamil actor',TO_DATE('1968-05-10','YYYY-MM-DD'));

INSERT INTO stars VALUES (106,'shah rukh khan','hindi actor',TO_DATE('1970-04-01','YYYY-MM-DD'));

INSERT INTO stars VALUES (107,'bhavana','malayalam actress',TO_DATE('1995-07-04','YYYY-MM-DD'));

INSERT INTO stars VALUES (108,'manju warrier','malayalam actress',TO_DATE('1987-07-04','YYYY-MM-DD'));

INSERT INTO stars VALUES (109,'hrithik roshan','bollywood actor',TO_DATE('1974-01-10','YYYY-MM-DD'));

INSERT INTO stars VALUES (110,'Emma Watson','hollywood actress',TO_DATE('1990-04-15','YYYY-MM-DD'));

delete from stars;

select * from stars;

select * from stars;

select * from stars;

insert into stars values(101,'Cillian Murphy','Irish actor','25/May/1976');

insert into stars values(102,'mammootty','malayalam actor','25/jan/1973');

INSERT INTO stars VALUES (103,'mohanlal','malayalam actor',TO_DATE('1970-06-29','YYYY-MM-DD'));

INSERT INTO stars VALUES (104,'vijay','tamil actor',TO_DATE('1980-02-18','YYYY-MM-DD'));

INSERT INTO stars VALUES (105,'surya','tamil actor',TO_DATE('1968-05-10','YYYY-MM-DD'));

INSERT INTO stars VALUES (106,'shah rukh khan','hindi actor',TO_DATE('1970-04-01','YYYY-MM-DD'));

INSERT INTO stars VALUES (107,'bhavana','malayalam actress',TO_DATE('1995-07-04','YYYY-MM-DD'));

INSERT INTO stars VALUES (108,'manju warrier','malayalam actress',TO_DATE('1987-07-04','YYYY-MM-DD'));

INSERT INTO stars VALUES (109,'hrithik roshan','bollywood actor',TO_DATE('1974-01-10','YYYY-MM-DD'));

INSERT INTO stars VALUES (110,'Emma Watson','hollywood actress',TO_DATE('1990-04-15','YYYY-MM-DD'));

select * from stars;

insert into Movies values('1004','Rorschach','07-OCT-2022','https://www.movies.com/rorschach.jpg','U/A',5,4.1,'Luke Anthony is out on a mission to seek revenge ',35,90,'malayalam','28-NOV-2022',1938374800,0,);

insert into Movies values('1004','Rorschach','07-OCT-2022','https://www.movies.com/rorschach.jpg','U/A',5,4.1,'Luke Anthony is out on a mission to seek revenge ',35,90,'malayalam','28-NOV-2022',1938374800,0,);

desc movies


insert into Movies values('1000','Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U',3,4.2,'Describes about Georges life',49,96,'Malayalam',19383748,0,'28-APR-2023');

desc movies


insert into Movies values('1000','Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U',3,4.2,'Describes about Georges life',49,96,'Malayalam',19383748,0,'28-APR-2023');

insert into Movies values('1001','Vettam','29-MAY-2004','https://www.movies.com/vettam.jpg','U/A',2,4.4,'A man steals a chain and hides it in a bag of an unassuming woman',45,98,'Malayalam',19383743,0,'28-MAR-2023');

insert into Movies values(1000,'Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U',3,4.2,'Describes about Georges life',49,96,'Malayalam',19383748,0,'28-APR-2023');

insert into Movies values(1001,'Vettam','29-MAY-2004','https://www.movies.com/vettam.jpg','U/A',2,4.4,'A man steals a chain and hides it in a bag of an unassuming woman',45,98,'Malayalam',19383743,0,'28-MAR-2023');

select * from movies;

insert into Movies values('1002','Anjaan','25-FEB-2014','https://www.movies.com/anjaan.jpg','U/A',3,4.1,'Krishna, who comes to Mumbai in search of his missing brother,',49,92,'Tamil',19383746,0,'28-JAN-2023');

select * from movies;

insert into Movies values(1002,'Anjaan','25-FEB-2014','https://www.movies.com/anjaan.jpg','U/A',3,4.1,'Krishna, who comes to Mumbai in search of his missing brother,',49,92,'Tamil',19383746,0,'28-JAN-2023');

select * from movies;

insert into Movies values(1000,'Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U',3,4.2,'Describes about Georges life',49,96,'Malayalam',19383748,0,'28-APR-2023');

insert into Movies values(1001,'Vettam','29-MAY-2004','https://www.movies.com/vettam.jpg','U/A',2,4.4,'A man steals a chain and hides it in a bag of an unassuming woman',45,98,'Malayalam',19383743,0,'28-MAR-2023');

insert into Movies values(1002,'Anjaan','25-FEB-2014','https://www.movies.com/anjaan.jpg','U/A',3,4.1,'Krishna, who comes to Mumbai in search of his missing brother,',49,92,'Tamil',19383746,0,'28-JAN-2023');

select * from movies;

delete from movies;

delete from movies;

insert into Movies values(1000,'Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U',3,4.2,'Describes about Georges life',49,96,'Malayalam',19383748,0,'28-APR-2023');

insert into Movies values(1001,'Vettam','29-MAY-2004','https://www.movies.com/vettam.jpg','U/A',2,4.4,'A man steals a chain and hides it in a bag of an unassuming woman',45,98,'Malayalam',19383743,0,'28-MAR-2023');

insert into Movies values(1002,'Anjaan','25-FEB-2014','https://www.movies.com/anjaan.jpg','U/A',3,4.1,'Krishna, who comes to Mumbai in search of his missing brother,',49,92,'Tamil',19383746,0,'28-JAN-2023');

select * from movies;

insert into Movies values(1000,'Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U/A',3,4.2,'Describes about Georges life',49,96,'Malayalam',19383748,0,'28-APR-2023');

insert into Movies values(1001,'Vettam','29-MAY-2004','https://www.movies.com/vettam.jpg','U/A',2,4.4,'A man steals a chain and hides it in a bag of an unassuming woman',45,98,'Malayalam',19383743,0,'28-MAR-2023');

insert into Movies values(1002,'Anjaan','25-FEB-2014','https://www.movies.com/anjaan.jpg','U/A',3,4.1,'Krishna, who comes to Mumbai in search of his missing brother,',49,92,'Tamil',19383746,0,'28-JAN-2023');

select * from movies;

delete from movies;

insert into Movies values(1000,'Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U/A',3,4.2,'Describes about Georges life',49,96,'Malayalam',19383748,0,'28-APR-2023');

insert into Movies values(1001,'Vettam','29-MAY-2004','https://www.movies.com/vettam.jpg','U/A',2,4.4,'A man steals a chain and hides it in a bag of an unassuming woman',45,98,'Malayalam',19383743,0,'28-MAR-2023');

insert into Movies values(1002,'Anjaan','25-FEB-2014','https://www.movies.com/anjaan.jpg','U/A',3,4.1,'Krishna, who comes to Mumbai in search of his missing brother,',49,92,'Tamil',19383746,0,'28-JAN-2023');

select * from movies;

insert into Movies values(1000,'Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U/A',3,4.2,'Describes about Georges life',49,96,'Malayalam',19383748,0,'28-APR-2023');

insert into Movies values(1001,'Vettam','29-MAY-2004','https://www.movies.com/vettam.jpg','U/A',2,4.4,'A man steals a chain and hides it in a bag of an unassuming woman',45,98,'Malayalam',19383743,0,'28-MAR-2023');

insert into Movies values(1002,'Anjaan','25-FEB-2014','https://www.movies.com/anjaan.jpg','U/A',3,4.1,'Krishna, who comes to Mumbai in search of his missing brother,',49,92,'Tamil',19383746,0,'28-JAN-2023');

insert into Movies values('1003','Master','29-OCT-2020','https://www.movies.com/master.jpg','U/A',3,4.5,'An alcoholic professor is enrolled to teach at a juvenile facility',49,90,'Tamil',19383799,0,'28-APR-2023');

select * from movies;

select * from movies;

insert into Movies values('1004','jai bhim','07-OCT-2022','https://www.movies.com/jai bhim.jpg','U/A',3,8.8,'A brave activist-lawyer fights for justice when a poor tribal man, who gets falsely accused of robbery, goes missing from the police custody.',88,90,'Tamil',700000000,1,'28-NOV-2022');

select * from movies;

A brave activist-lawyer


insert into Movies values('1004','jai bhim','07-OCT-2022','https://www.movies.com/jai bhim.jpg','U/A',3,8.8,'fights for justice when a poor tribal man goes missing from the police custody.',88,90,'Tamil',700000000,1,'28-NOV-2022');

select * from movies;

insert into Movies values('1004','jai bhim','07-OCT-2022','https://www.movies.com/jai bhim.jpg','U/A',3,8.8,'fights for justice when a poor tribal man goes missing from the police custody.',88,90,'Tamil',700000000,1,'28-NOV-2022');

select * from movies;

insert into Movies values(1004,'jai bhim','07-OCT-2022','https://www.movies.com/jai bhim.jpg','U/A',3,8.8,'fights for justice when a poor tribal man goes missing from the police custody.',88,90,'Tamil',700000000,1,'28-NOV-2022');

select * from movies;

insert into Movies values(1004,'jai bhim','07-OCT-2022','https://www.movies.com/jaibhim.jpg','U/A',3,8.8,'fights for justice when a poor tribal man goes missing from the police custody.',88,90,'Tamil',700000000,1,'28-NOV-2022');

select * from movies;

insert into Movies values(1004,'jai bhim','07-OCT-2022','https://www.movies.com/jaibhim.jpg','U/A',3,8.8,'fights for justice when a poor tribal man goes missing from the police custody.',88,90,'Tamil',700000000.0,1,'28-NOV-2022');

select * from movies;

insert into Movies values(1004,'jai bhim','07-OCT-2022','https://www.movies.com/jaibhim.jpg','U/A',3,8.8,'fights for justice when a poor tribal man goes missing from the police custody.',88,90,'Tamil',70000000,1,'28-NOV-2022');

select * from movies;

insert into Movies values(1005,'Ae Dil Hai Mushkil','28-October-2016','https://www.movies.com/Aedilhaimushkil.jpg','U/A',2,5.8,none,50,90,'Hindi',239000000,1,'05-NOV-2016');

select * from movies;

INSERT INTO Movies VALUES ( 
    1005, 
    'Ae Dil Hai Mushkil', 
    TO_DATE('28-OCT-2016', 'DD-MONTH-YYYY'), 
    'https://www.movies.com/Aedilhaimushkil.jpg', 
    'U/A', 
    2, 
    5.8, 
    '', 
    50, 
    90, 
    'Hindi', 
    239000000, 
    1, 
    TO_DATE('05-NOV-2016', 'DD-MONTH-YYYY') 
);

select * from movies;

insert into Movies values(1005,'Ae Dil Hai Mushkil','28-October-2016','https://www.movies.com/Aedilhaimushkil.jpg','U/A',2,5.8,'',50,90,'Hindi',239000000,1,'05-NOV-2016');

select * from movies;

insert into Movies values(1005,'Ae Dil Hai Mushkil','28-October-2016','https://www.movies.com/Aedilhaimushkil.jpg','U/A',2,5.8,'',50,90,'Hindi',239000000,1,'05-NOV-2016');

ALTER TABLE Movies MODIFY (GROSS NUMBER(15,2));

select * from movies;

insert into Movies values(1005,'Ae Dil Hai Mushkil','28-October-2016','https://www.movies.com/Aedilhaimushkil.jpg','U/A',2,5.8,'',50,90,'Hindi',239000000,1,'05-NOV-2016');

select * from movies;

insert into Movies values('1006','jailer','06-aug-2023','https://www.movies.com/jailer.jpg','U/A',3,7.7,'Muthavel pandian a jailer set out to stop a gang when they try to flee their leader from prison',38,91,'Tamil',4000000000,1,'18-nov-2023');

select * from movies;

insert into Movies values(1007,'minnal murali','18-dec-2021','https://www.movies.com/minnal murali.jpg','U/A',2.5,7.8,'jaison a young tailor gains superpowers after being struck by lightning ',40,95,'Malayalam',234943740,0,'23-march-2022');

select * from movies;

 insert into Movies values('1008','titanic','16-dec-1997','https://www.movies.com/titanic.jpg','U/A',3.15,7.9,'incorporating both historical and fictionalized aspects',49,95,'English',8726000000,1,'27-feb-1998');

select * from movies;

insert into Movies values('1009','njan prakashan','21-dec-2018','https://www.movies.com/njan prakashan.jpg','U/A',2.15,7.7,'prakashan dreams of living a lavish and easy life',45,83,'Malayalam',179894370,0,'17-apr-2019');

select * from movies;

delete from movies;

select * from movies;

insert into Movies values(1000,'Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U/A',3,4.2,'Describes about Georges life',49,96,'Malayalam',19383748,0,'28-APR-2023');

insert into Movies values(1001,'Vettam','29-MAY-2004','https://www.movies.com/vettam.jpg','U/A',2,4.4,'A man steals a chain and hides it in a bag of an unassuming woman',45,98,'Malayalam',19383743,0,'28-MAR-2023');

insert into Movies values(1002,'Anjaan','25-FEB-2014','https://www.movies.com/anjaan.jpg','U/A',3,4.1,'Krishna, who comes to Mumbai in search of his missing brother,',49,92,'Tamil',19383746,0,'28-JAN-2023');

insert into Movies values(1003,'Master','16-JUN-2020','https://www.movies.com/master.jpg','U/A',2.5,4.5,'An alcoholic professor is enrolled to teach at a juvenile facility',49,90,'Tamil',19383799,0,'28-AUG-2020');

insert into Movies values(1004,'Jai bhim','07-OCT-2022','https://www.movies.com/jaibhim.jpg','U/A',3,8.8,'fights for justice when a poor tribal man goes missing from the police custody.',88,90,'Tamil',70000000,1,'28-NOV-2022');

insert into Movies values(1005,'Ae Dil Hai Mushkil','28-OCT-2016','https://www.movies.com/Aedilhaimushkil.jpg','U/A',2,5.8,'',50,90,'Hindi',239000000,1,'05-NOV-2016');

insert into Movies values(1006,'Jailer','06-AUG-2023','https://www.movies.com/jailer.jpg','U/A',3,7.7,'Muthavel pandian a jailer set out to stop a gang when they try to flee their leader from prison',38,91,'Tamil',4000000000,1,'18-NOV-2023');

insert into Movies values(1007,'Minnal murali','18-DEC-2021','https://www.movies.com/minnal murali.jpg','U/A',2.5,7.8,'jaison a young tailor gains superpowers after being struck by lightning ',40,95,'Malayalam',234943740,0,'23-MAR-2022');

insert into Movies values(1008,'Titanic','16-DEC-1997','https://www.movies.com/titanic.jpg','U/A',3.15,7.9,'incorporating both historical and fictionalized aspects',49,95,'English',8726000000,1,'27-FEB-1998');

insert into Movies values(1009,'Njan prakashan','21-DEC-2018','https://www.movies.com/njan prakashan.jpg','U/A',2.15,7.7,'prakashan dreams of living a lavish and easy life',45,83,'Malayalam',179894370,0,'17-APR-2019');

select * from movies;

create table directors(id int primary key,name varchar2(40)not null);

desc directors


create table stars(id int primary key,name varchar2(40) unique , about varchar2(100));

desc stars


create table movies(id int primary key,title varchar2(40) ,R_date date,image_url varchar2(100),certificate varchar2(20),runtime number(3,2),imdb_rating number(3,1) default 0,description varchar2(100), metascore number(3,1) default 0,votes int default 0,gross number(10,2) check (gross>10000)) ;

desc movies


create table moviesdirectors(moviesid int references movies(id),directorsid int references directors(id)primary key);

desc moviesdirectors


create table moviesstars(moviesid int references movies(id),starsid int references stars(id) primary key);

desc moviesstars


alter table stars add dob date;

desc stars


alter table movies drop column gross;

desc movies


desc directors


desc stars


desc movies


desc moviesdirectors


desc moviesstars


desc stars


desc movies


alter table movies add language varchar2(20);

desc movies


desc directors


desc stars


desc movies


desc stars


desc movies


alter table movies add gross number(10,2);

desc movies


alter table movies rename column R_date to releasedate;

desc movies


alter table  directors add age number check (age>=7);

desc directors


desc directors


alter table movies add hit number(1) default 0;

desc movies


alter table movies add entry_date date;

desc movies


drop table moviesstars;

 create table moviesstars(moviesid int references movies(id),starsid int references stars(id) primary key);

desc moviesstars


alter table directors modify name varchar2(30);

desc directors


alter table movies add constraint chk_r_date check(releasedate < entry_date);

alter table movies add constraint chk_lang check(language in ('Malayalam','English','Tamil','Hindi'));

desc movies


desc directors


insert into directors values(01,'Raffi',65);

insert into directors values(02,'basil joseph ',29);

insert into directors values(03,'vineeth sreenivasan',37);

insert into directors values(04,'james cameron ',65);

insert into directors values(05,'Mani Ratnam ',67);

insert into directors values(06,'S. Shankar',60);

insert into directors values(07,'Farhan Akhtar',49);

select * from directors;

insert into directors values(08,'sibi malayil ',59);

insert into directors values(09,'alphonse puthren',39);

insert into directors values(10,'Jude Anthany Joseph',40);

select * from directors;

select * from directors;

desc stars


desc stars


insert into stars values(101,'Cillian Murphy','Irish actor','25/May/1976');

insert into stars values(102,'mammootty','malayalam actor','25/jan/1973') 
 
 
 
 
 
;

insert into stars values(103,'mohanlal','malayalam actor','26/jun/1970');

insert into stars values(104,'vijay','tamil actor','18/feb/1980');

insert into stars values(105,'surya','tamil actor','10/may/1968');

insert into stars values(106,'shah rukh khan','hindi actor','1/apr/1970');

insert into stars values(107,'bhavana','malayalam actress','4/sep/1995');

insert into stars values(108,'manju warrier','malayalam actress','4/sep/1987');

insert into stars values(109,'hrithik roshan','bollywood actor','10/January/1974');

insert into stars values(110,'Emma Watson','hollywood actress','15/April/1990');

desc stars


select * from stars;

desc stars


select * from stars;

desc stars


delete from stars;

desc stars


INSERT INTO stars VALUES (103,'mohanlal','malayalam actor',TO_DATE('1970-06-29','YYYY-MM-DD'));

INSERT INTO stars VALUES (104,'vijay','tamil actor',TO_DATE('1980-02-18','YYYY-MM-DD'));

INSERT INTO stars VALUES (105,'surya','tamil actor',TO_DATE('1968-05-10','YYYY-MM-DD'));

INSERT INTO stars VALUES (106,'shah rukh khan','hindi actor',TO_DATE('1970-04-01','YYYY-MM-DD'));

INSERT INTO stars VALUES (107,'bhavana','malayalam actress',TO_DATE('1995-07-04','YYYY-MM-DD'));

INSERT INTO stars VALUES (108,'manju warrier','malayalam actress',TO_DATE('1987-07-04','YYYY-MM-DD'));

INSERT INTO stars VALUES (109,'hrithik roshan','bollywood actor',TO_DATE('1974-01-10','YYYY-MM-DD'));

INSERT INTO stars VALUES (110,'Emma Watson','hollywood actress',TO_DATE('1990-04-15','YYYY-MM-DD'));

desc stars


select * from stars;

delete from stars;

insert into stars values(101,'Cillian Murphy','Irish actor','25/May/1976');

insert into stars values(102,'mammootty','malayalam actor','25/jan/1973');

INSERT INTO stars VALUES (103,'mohanlal','malayalam actor',TO_DATE('1970-06-29','YYYY-MM-DD'));

INSERT INTO stars VALUES (104,'vijay','tamil actor',TO_DATE('1980-02-18','YYYY-MM-DD'));

INSERT INTO stars VALUES (105,'surya','tamil actor',TO_DATE('1968-05-10','YYYY-MM-DD'));

INSERT INTO stars VALUES (106,'shah rukh khan','hindi actor',TO_DATE('1970-04-01','YYYY-MM-DD'));

INSERT INTO stars VALUES (107,'bhavana','malayalam actress',TO_DATE('1995-07-04','YYYY-MM-DD'));

INSERT INTO stars VALUES (108,'manju warrier','malayalam actress',TO_DATE('1987-07-04','YYYY-MM-DD'));

INSERT INTO stars VALUES (109,'hrithik roshan','bollywood actor',TO_DATE('1974-01-10','YYYY-MM-DD'));

INSERT INTO stars VALUES (110,'Emma Watson','hollywood actress',TO_DATE('1990-04-15','YYYY-MM-DD'));

delete from stars;

select * from stars;

select * from stars;

select * from stars;

insert into stars values(101,'Cillian Murphy','Irish actor','25/May/1976');

insert into stars values(102,'mammootty','malayalam actor','25/jan/1973');

INSERT INTO stars VALUES (103,'mohanlal','malayalam actor',TO_DATE('1970-06-29','YYYY-MM-DD'));

INSERT INTO stars VALUES (104,'vijay','tamil actor',TO_DATE('1980-02-18','YYYY-MM-DD'));

INSERT INTO stars VALUES (105,'surya','tamil actor',TO_DATE('1968-05-10','YYYY-MM-DD'));

INSERT INTO stars VALUES (106,'shah rukh khan','hindi actor',TO_DATE('1970-04-01','YYYY-MM-DD'));

INSERT INTO stars VALUES (107,'bhavana','malayalam actress',TO_DATE('1995-07-04','YYYY-MM-DD'));

INSERT INTO stars VALUES (108,'manju warrier','malayalam actress',TO_DATE('1987-07-04','YYYY-MM-DD'));

INSERT INTO stars VALUES (109,'hrithik roshan','bollywood actor',TO_DATE('1974-01-10','YYYY-MM-DD'));

INSERT INTO stars VALUES (110,'Emma Watson','hollywood actress',TO_DATE('1990-04-15','YYYY-MM-DD'));

select * from stars;

insert into Movies values('1004','Rorschach','07-OCT-2022','https://www.movies.com/rorschach.jpg','U/A',5,4.1,'Luke Anthony is out on a mission to seek revenge ',35,90,'malayalam','28-NOV-2022',1938374800,0,);

insert into Movies values('1004','Rorschach','07-OCT-2022','https://www.movies.com/rorschach.jpg','U/A',5,4.1,'Luke Anthony is out on a mission to seek revenge ',35,90,'malayalam','28-NOV-2022',1938374800,0,);

desc movies


insert into Movies values('1000','Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U',3,4.2,'Describes about Georges life',49,96,'Malayalam',19383748,0,'28-APR-2023');

desc movies


insert into Movies values('1000','Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U',3,4.2,'Describes about Georges life',49,96,'Malayalam',19383748,0,'28-APR-2023');

insert into Movies values('1001','Vettam','29-MAY-2004','https://www.movies.com/vettam.jpg','U/A',2,4.4,'A man steals a chain and hides it in a bag of an unassuming woman',45,98,'Malayalam',19383743,0,'28-MAR-2023');

insert into Movies values(1000,'Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U',3,4.2,'Describes about Georges life',49,96,'Malayalam',19383748,0,'28-APR-2023');

insert into Movies values(1001,'Vettam','29-MAY-2004','https://www.movies.com/vettam.jpg','U/A',2,4.4,'A man steals a chain and hides it in a bag of an unassuming woman',45,98,'Malayalam',19383743,0,'28-MAR-2023');

select * from movies;

insert into Movies values('1002','Anjaan','25-FEB-2014','https://www.movies.com/anjaan.jpg','U/A',3,4.1,'Krishna, who comes to Mumbai in search of his missing brother,',49,92,'Tamil',19383746,0,'28-JAN-2023');

select * from movies;

insert into Movies values(1002,'Anjaan','25-FEB-2014','https://www.movies.com/anjaan.jpg','U/A',3,4.1,'Krishna, who comes to Mumbai in search of his missing brother,',49,92,'Tamil',19383746,0,'28-JAN-2023');

select * from movies;

insert into Movies values(1000,'Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U',3,4.2,'Describes about Georges life',49,96,'Malayalam',19383748,0,'28-APR-2023');

insert into Movies values(1001,'Vettam','29-MAY-2004','https://www.movies.com/vettam.jpg','U/A',2,4.4,'A man steals a chain and hides it in a bag of an unassuming woman',45,98,'Malayalam',19383743,0,'28-MAR-2023');

insert into Movies values(1002,'Anjaan','25-FEB-2014','https://www.movies.com/anjaan.jpg','U/A',3,4.1,'Krishna, who comes to Mumbai in search of his missing brother,',49,92,'Tamil',19383746,0,'28-JAN-2023');

select * from movies;

delete from movies;

delete from movies;

insert into Movies values(1000,'Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U',3,4.2,'Describes about Georges life',49,96,'Malayalam',19383748,0,'28-APR-2023');

insert into Movies values(1001,'Vettam','29-MAY-2004','https://www.movies.com/vettam.jpg','U/A',2,4.4,'A man steals a chain and hides it in a bag of an unassuming woman',45,98,'Malayalam',19383743,0,'28-MAR-2023');

insert into Movies values(1002,'Anjaan','25-FEB-2014','https://www.movies.com/anjaan.jpg','U/A',3,4.1,'Krishna, who comes to Mumbai in search of his missing brother,',49,92,'Tamil',19383746,0,'28-JAN-2023');

select * from movies;

insert into Movies values(1000,'Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U/A',3,4.2,'Describes about Georges life',49,96,'Malayalam',19383748,0,'28-APR-2023');

insert into Movies values(1001,'Vettam','29-MAY-2004','https://www.movies.com/vettam.jpg','U/A',2,4.4,'A man steals a chain and hides it in a bag of an unassuming woman',45,98,'Malayalam',19383743,0,'28-MAR-2023');

insert into Movies values(1002,'Anjaan','25-FEB-2014','https://www.movies.com/anjaan.jpg','U/A',3,4.1,'Krishna, who comes to Mumbai in search of his missing brother,',49,92,'Tamil',19383746,0,'28-JAN-2023');

select * from movies;

delete from movies;

insert into Movies values(1000,'Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U/A',3,4.2,'Describes about Georges life',49,96,'Malayalam',19383748,0,'28-APR-2023');

insert into Movies values(1001,'Vettam','29-MAY-2004','https://www.movies.com/vettam.jpg','U/A',2,4.4,'A man steals a chain and hides it in a bag of an unassuming woman',45,98,'Malayalam',19383743,0,'28-MAR-2023');

insert into Movies values(1002,'Anjaan','25-FEB-2014','https://www.movies.com/anjaan.jpg','U/A',3,4.1,'Krishna, who comes to Mumbai in search of his missing brother,',49,92,'Tamil',19383746,0,'28-JAN-2023');

select * from movies;

insert into Movies values(1000,'Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U/A',3,4.2,'Describes about Georges life',49,96,'Malayalam',19383748,0,'28-APR-2023');

insert into Movies values(1001,'Vettam','29-MAY-2004','https://www.movies.com/vettam.jpg','U/A',2,4.4,'A man steals a chain and hides it in a bag of an unassuming woman',45,98,'Malayalam',19383743,0,'28-MAR-2023');

insert into Movies values(1002,'Anjaan','25-FEB-2014','https://www.movies.com/anjaan.jpg','U/A',3,4.1,'Krishna, who comes to Mumbai in search of his missing brother,',49,92,'Tamil',19383746,0,'28-JAN-2023');

insert into Movies values('1003','Master','29-OCT-2020','https://www.movies.com/master.jpg','U/A',3,4.5,'An alcoholic professor is enrolled to teach at a juvenile facility',49,90,'Tamil',19383799,0,'28-APR-2023');

select * from movies;

select * from movies;

insert into Movies values('1004','jai bhim','07-OCT-2022','https://www.movies.com/jai bhim.jpg','U/A',3,8.8,'A brave activist-lawyer fights for justice when a poor tribal man, who gets falsely accused of robbery, goes missing from the police custody.',88,90,'Tamil',700000000,1,'28-NOV-2022');

select * from movies;

A brave activist-lawyer


insert into Movies values('1004','jai bhim','07-OCT-2022','https://www.movies.com/jai bhim.jpg','U/A',3,8.8,'fights for justice when a poor tribal man goes missing from the police custody.',88,90,'Tamil',700000000,1,'28-NOV-2022');

select * from movies;

insert into Movies values('1004','jai bhim','07-OCT-2022','https://www.movies.com/jai bhim.jpg','U/A',3,8.8,'fights for justice when a poor tribal man goes missing from the police custody.',88,90,'Tamil',700000000,1,'28-NOV-2022');

select * from movies;

insert into Movies values(1004,'jai bhim','07-OCT-2022','https://www.movies.com/jai bhim.jpg','U/A',3,8.8,'fights for justice when a poor tribal man goes missing from the police custody.',88,90,'Tamil',700000000,1,'28-NOV-2022');

select * from movies;

insert into Movies values(1004,'jai bhim','07-OCT-2022','https://www.movies.com/jaibhim.jpg','U/A',3,8.8,'fights for justice when a poor tribal man goes missing from the police custody.',88,90,'Tamil',700000000,1,'28-NOV-2022');

select * from movies;

insert into Movies values(1004,'jai bhim','07-OCT-2022','https://www.movies.com/jaibhim.jpg','U/A',3,8.8,'fights for justice when a poor tribal man goes missing from the police custody.',88,90,'Tamil',700000000.0,1,'28-NOV-2022');

select * from movies;

insert into Movies values(1004,'jai bhim','07-OCT-2022','https://www.movies.com/jaibhim.jpg','U/A',3,8.8,'fights for justice when a poor tribal man goes missing from the police custody.',88,90,'Tamil',70000000,1,'28-NOV-2022');

select * from movies;

insert into Movies values(1005,'Ae Dil Hai Mushkil','28-October-2016','https://www.movies.com/Aedilhaimushkil.jpg','U/A',2,5.8,none,50,90,'Hindi',239000000,1,'05-NOV-2016');

select * from movies;

INSERT INTO Movies VALUES ( 
    1005, 
    'Ae Dil Hai Mushkil', 
    TO_DATE('28-OCT-2016', 'DD-MONTH-YYYY'), 
    'https://www.movies.com/Aedilhaimushkil.jpg', 
    'U/A', 
    2, 
    5.8, 
    '', 
    50, 
    90, 
    'Hindi', 
    239000000, 
    1, 
    TO_DATE('05-NOV-2016', 'DD-MONTH-YYYY') 
);

select * from movies;

insert into Movies values(1005,'Ae Dil Hai Mushkil','28-October-2016','https://www.movies.com/Aedilhaimushkil.jpg','U/A',2,5.8,'',50,90,'Hindi',239000000,1,'05-NOV-2016');

select * from movies;

insert into Movies values(1005,'Ae Dil Hai Mushkil','28-October-2016','https://www.movies.com/Aedilhaimushkil.jpg','U/A',2,5.8,'',50,90,'Hindi',239000000,1,'05-NOV-2016');

ALTER TABLE Movies MODIFY (GROSS NUMBER(15,2));

select * from movies;

insert into Movies values(1005,'Ae Dil Hai Mushkil','28-October-2016','https://www.movies.com/Aedilhaimushkil.jpg','U/A',2,5.8,'',50,90,'Hindi',239000000,1,'05-NOV-2016');

select * from movies;

insert into Movies values('1006','jailer','06-aug-2023','https://www.movies.com/jailer.jpg','U/A',3,7.7,'Muthavel pandian a jailer set out to stop a gang when they try to flee their leader from prison',38,91,'Tamil',4000000000,1,'18-nov-2023');

select * from movies;

insert into Movies values(1007,'minnal murali','18-dec-2021','https://www.movies.com/minnal murali.jpg','U/A',2.5,7.8,'jaison a young tailor gains superpowers after being struck by lightning ',40,95,'Malayalam',234943740,0,'23-march-2022');

select * from movies;

 insert into Movies values('1008','titanic','16-dec-1997','https://www.movies.com/titanic.jpg','U/A',3.15,7.9,'incorporating both historical and fictionalized aspects',49,95,'English',8726000000,1,'27-feb-1998');

select * from movies;

insert into Movies values('1009','njan prakashan','21-dec-2018','https://www.movies.com/njan prakashan.jpg','U/A',2.15,7.7,'prakashan dreams of living a lavish and easy life',45,83,'Malayalam',179894370,0,'17-apr-2019');

select * from movies;

delete from movies;

select * from movies;

insert into Movies values(1000,'Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U/A',2.5,6.2,'Describes about Georges life',49,96,'Malayalam',19383748,0,'28-APR-2023');

insert into Movies values(1001,'Vettam','29-MAY-2004','https://www.movies.com/vettam.jpg','U/A',2,4.4,'A man steals a chain and hides it in a bag of an unassuming woman',45,98,'Malayalam',19383743,0,'28-MAR-2023');

insert into Movies values(1002,'Anjaan','25-FEB-2014','https://www.movies.com/anjaan.jpg','U/A',3,4.1,'Krishna, who comes to Mumbai in search of his missing brother,',49,92,'Tamil',19383746,0,'28-JAN-2023');

insert into Movies values(1003,'Master','16-JUN-2020','https://www.movies.com/master.jpg','U/A',2.5,4.5,'An alcoholic professor is enrolled to teach at a juvenile facility',49,90,'Tamil',19383799,0,'28-AUG-2020');

insert into Movies values(1004,'Jai bhim','07-OCT-2022','https://www.movies.com/jaibhim.jpg','U/A',3,8.8,'fights for justice when a poor tribal man goes missing from the police custody.',88,90,'Tamil',70000000,1,'28-NOV-2022');

insert into Movies values(1005,'Ae Dil Hai Mushkil','28-OCT-2016','https://www.movies.com/Aedilhaimushkil.jpg','U/A',2,5.8,'',50,90,'Hindi',239000000,1,'05-NOV-2016');

insert into Movies values(1006,'Jailer','06-AUG-2023','https://www.movies.com/jailer.jpg','U/A',3,7.7,'Muthavel pandian a jailer set out to stop a gang when they try to flee their leader from prison',38,91,'Tamil',4000000000,1,'18-NOV-2023');

insert into Movies values(1007,'Minnal murali','18-DEC-2021','https://www.movies.com/minnal murali.jpg','U/A',2.5,7.8,'jaison a young tailor gains superpowers after being struck by lightning ',40,95,'Malayalam',234943740,0,'23-MAR-2022');

insert into Movies values(1008,'Titanic','16-DEC-1997','https://www.movies.com/titanic.jpg','U/A',3.15,7.9,'incorporating both historical and fictionalized aspects',49,95,'English',8726000000,1,'27-FEB-1998');

insert into Movies values(1009,'Njan prakashan','21-DEC-2018','https://www.movies.com/njan prakashan.jpg','U/A',2.15,7.7,'prakashan dreams of living a lavish and easy life',45,83,'Malayalam',179894370,0,'17-APR-2019');

select * from movies;

desc movies


select * from movies;

insert into Movies values(1000,'Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U/A',2.5,6.2,'Describes about Georges life',49,96,'Malayalam',0,'28-APR-2023',19383748);

insert into Movies values(1001,'Vettam','29-MAY-2004','https://www.movies.com/vettam.jpg','U/A',2,4.4,'A man steals a chain and hides it in a bag of an unassuming woman',45,98,'Malayalam',0,'28-MAR-2023,19383743');

insert into Movies values(1002,'Anjaan','25-FEB-2014','https://www.movies.com/anjaan.jpg','U/A',3,4.1,'Krishna, who comes to Mumbai in search of his missing brother,',49,92,'Tamil',0,'28-JAN-2023',19383746);

insert into Movies values(1003,'Master',16-JUN-2020','https://www.movies.com/master.jpg','U/A',3,4.5,'An alcoholic professor is enrolled to teach at a juvenile facility',49,90,'Tamil',0,'28-AUG-2020',19383799);

insert into Movies values(1004,'Jai bhim','07-OCT-2022','https://www.movies.com/jaibhim.jpg','U/A',3,8.8,'fights for justice when a poor tribal man goes missing from the police custody.',88,90,'Tamil',1,'28-NOV-2022',70000000);

insert into Movies values(1005,'Ae Dil Hai Mushkil','28-OCT-2016','https://www.movies.com/Aedilhaimushkil.jpg','U/A',2,5.8,'',50,90,'Hindi',1,'05-NOV-2016',239000000);

insert into Movies values(1006,'Jailer','06-AUG-2023','https://www.movies.com/jailer.jpg','U/A',3,7.7,'Muthavel pandian a jailer set out to stop a gang when they try to flee their leader from prison',38,91,'Tamil',1,'18-NOV-2023',4000000000);

insert into Movies values(1007,'Minnal murali','18-DEC-2021','https://www.movies.com/minnal murali.jpg','U/A',2.5,7.8,'jaison a young tailor gains superpowers after being struck by lightning ',40,95,'Malayalam',0,'23-MAR-2022',234943740);

insert into Movies values(1008,'Titanic','16-DEC-1997','https://www.movies.com/titanic.jpg','U/A',3.15,7.9,'incorporating both historical and fictionalized aspects',49,95,'English',1,'27-FEB-1998',8726000000);

insert into Movies values(1009,'Njan prakashan','21-DEC-2018','https://www.movies.com/njan prakashan.jpg','U/A',2.15,7.7,'prakashan dreams of living a lavish and easy life',45,83,'Malayalam',0,'17-APR-2019',179894370);

select * from movies;

select * from movies;

delete from movies;

insert into Movies values(1000,'Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U/A',2.5,6.2,'Describes about Georges life',49,96,'Malayalam',0,'28-APR-2023',19383748);

insert into Movies values(1001,'Vettam','29-MAY-2004','https://www.movies.com/vettam.jpg','U/A',2,4.4,'A man steals a chain and hides it in a bag of an unassuming woman',45,98,'Malayalam',0,'28-MAR-2023',19383743);

insert into Movies values(1002,'Anjaan','25-FEB-2014','https://www.movies.com/anjaan.jpg','U/A',3,4.1,'Krishna, who comes to Mumbai in search of his missing brother,',49,92,'Tamil',0,'28-JAN-2023',19383746);

insert into Movies values(1003,'Master',16-JUN-2020','https://www.movies.com/master.jpg','U/A',3,4.5,'An alcoholic professor is enrolled to teach at a juvenile facility',49,90,'Tamil',0,'28-AUG-2020',19383799);

insert into Movies values(1004,'Jai bhim','07-OCT-2022','https://www.movies.com/jaibhim.jpg','U/A',3,8.8,'fights for justice when a poor tribal man goes missing from the police custody.',88,90,'Tamil',1,'28-NOV-2022',70000000);

insert into Movies values(1005,'Ae Dil Hai Mushkil','28-OCT-2016','https://www.movies.com/Aedilhaimushkil.jpg','U/A',2,5.8,'',50,90,'Hindi',1,'05-NOV-2016',239000000);

insert into Movies values(1006,'Jailer','06-AUG-2023','https://www.movies.com/jailer.jpg','U/A',3,7.7,'Muthavel pandian a jailer set out to stop a gang when they try to flee their leader from prison',38,91,'Tamil',1,'18-NOV-2023',4000000000);

insert into Movies values(1007,'Minnal murali','18-DEC-2021','https://www.movies.com/minnal murali.jpg','U/A',2.5,7.8,'jaison a young tailor gains superpowers after being struck by lightning ',40,95,'Malayalam',0,'23-MAR-2022',234943740);

insert into Movies values(1008,'Titanic','16-DEC-1997','https://www.movies.com/titanic.jpg','U/A',3.15,7.9,'incorporating both historical and fictionalized aspects',49,95,'English',1,'27-FEB-1998',8726000000);

insert into Movies values(1009,'Njan prakashan','21-DEC-2018','https://www.movies.com/njan prakashan.jpg','U/A',2.15,7.7,'prakashan dreams of living a lavish and easy life',45,83,'Malayalam',0,'17-APR-2019',179894370);

delete from movies;

insert into Movies values(1000,'Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U/A',2.5,6.2,'Describes about Georges life',49,96,'Malayalam',0,'28-APR-2023',19383748);

insert into Movies values(1001,'Vettam','29-MAY-2004','https://www.movies.com/vettam.jpg','U/A',2,4.4,'A man steals a chain and hides it in a bag of an unassuming woman',45,98,'Malayalam',0,'28-MAR-2023',19383743);

insert into Movies values(1002,'Anjaan','25-FEB-2014','https://www.movies.com/anjaan.jpg','U/A',3,4.1,'Krishna, who comes to Mumbai in search of his missing brother,',49,92,'Tamil',0,'28-JAN-2023',19383746);

insert into Movies values(1003,'Master','16-JUN-2020','https://www.movies.com/master.jpg','U/A',3,4.5,'An alcoholic professor is enrolled to teach at a juvenile facility',49,90,'Tamil',0,'28-AUG-2020',19383799);

insert into Movies values(1004,'Jai bhim','07-OCT-2022','https://www.movies.com/jaibhim.jpg','U/A',3,8.8,'fights for justice when a poor tribal man goes missing from the police custody.',88,90,'Tamil',1,'28-NOV-2022',70000000);

insert into Movies values(1005,'Ae Dil Hai Mushkil','28-OCT-2016','https://www.movies.com/Aedilhaimushkil.jpg','U/A',2,5.8,'',50,90,'Hindi',1,'05-NOV-2016',239000000);

insert into Movies values(1006,'Jailer','06-AUG-2023','https://www.movies.com/jailer.jpg','U/A',3,7.7,'Muthavel pandian a jailer set out to stop a gang when they try to flee their leader from prison',38,91,'Tamil',1,'18-NOV-2023',4000000000);

insert into Movies values(1007,'Minnal murali','18-DEC-2021','https://www.movies.com/minnal murali.jpg','U/A',2.5,7.8,'jaison a young tailor gains superpowers after being struck by lightning ',40,95,'Malayalam',0,'23-MAR-2022',234943740);

insert into Movies values(1008,'Titanic','16-DEC-1997','https://www.movies.com/titanic.jpg','U/A',3.15,7.9,'incorporating both historical and fictionalized aspects',49,95,'English',1,'27-FEB-1998',8726000000);

insert into Movies values(1009,'Njan prakashan','21-DEC-2018','https://www.movies.com/njan prakashan.jpg','U/A',2.15,7.7,'prakashan dreams of living a lavish and easy life',45,83,'Malayalam',0,'17-APR-2019',179894370);

insert into Movies values(1000,'Premam','29-MAY-2015','https://www.primevideo.com/premam.jpg','U/A',2.5,6.2,'Describes about Georges life',49,96,'Malayalam',0,'28-APR-2023',19383748);

insert into Movies values(1001,'Vettam','29-MAY-2004','https://www.movies.com/vettam.jpg','U/A',2,4.4,'A man steals a chain and hides it in a bag of an unassuming woman',45,98,'Malayalam',0,'28-MAR-2023',19383743);

insert into Movies values(1002,'Anjaan','25-FEB-2014','https://www.movies.com/anjaan.jpg','U/A',3,4.1,'Krishna, who comes to Mumbai in search of his missing brother,',49,92,'Tamil',0,'28-JAN-2023',19383746);

insert into Movies values(1003,'Master','16-JUN-2020','https://www.movies.com/master.jpg','U/A',3,4.5,'An alcoholic professor is enrolled to teach at a juvenile facility',49,90,'Tamil',0,'28-AUG-2020',19383799);

insert into Movies values(1004,'Jai bhim','07-OCT-2022','https://www.movies.com/jaibhim.jpg','U/A',3,8.8,'fights for justice when a poor tribal man goes missing from the police custody.',88,90,'Tamil',1,'28-NOV-2022',70000000);

insert into Movies values(1005,'Ae Dil Hai Mushkil','28-OCT-2016','https://www.movies.com/Aedilhaimushkil.jpg','U/A',2,5.8,'',50,90,'Hindi',1,'05-NOV-2016',239000000);

insert into Movies values(1006,'Jailer','06-AUG-2023','https://www.movies.com/jailer.jpg','U/A',3,7.7,'Muthavel pandian a jailer set out to stop a gang when they try to flee their leader from prison',38,91,'Tamil',1,'18-NOV-2023',4000000000);

insert into Movies values(1007,'Minnal murali','18-DEC-2021','https://www.movies.com/minnal murali.jpg','U/A',2.5,7.8,'jaison a young tailor gains superpowers after being struck by lightning ',40,95,'Malayalam',0,'23-MAR-2022',234943740);

insert into Movies values(1008,'Titanic','16-DEC-1997','https://www.movies.com/titanic.jpg','U/A',3.15,7.9,'incorporating both historical and fictionalized aspects',49,95,'English',1,'27-FEB-1998',8726000000);

insert into Movies values(1009,'Njan prakashan','21-DEC-2018','https://www.movies.com/njan prakashan.jpg','U/A',2.15,7.7,'prakashan dreams of living a lavish and easy life',45,83,'Malayalam',0,'17-APR-2019',179894370);

select * from movies;

*/select * from movies;


select * from movies;

       update movies set hit=1 where (votes>=90);

create table industry_hit(Id int primary key,Title varchar2(30),Releasedate date,Language varchar2(10),votes int default 0,gross number(15,2));

drop industry_hit;

drop table industry_hit;

create table industryhit(Id int primary key,Title varchar2(30),Releasedate date,Language varchar2(10),votes int default 0,gross number(15,2));

desc industryhit


insert into industryhit values(1014,'2018:everyone is a hero','5-may-2023','Malayalam','97','750000000');

insert into industry_hit values(1021,'oppenheimer','21-jul-2023','English','96','500000000');

insert into industry_hit values(1032,'maamannan','29-jun-2023','Tamil','95','505000000');

insert into industryhit values(1021,'oppenheimer','21-jul-2023','English','96','500000000');

insert into industryhit values(1032,'maamannan','29-jun-2023','Tamil','95','505000000');

select * from industryhit;

delete from industryhit;

insert into industryhit values(1014,'2018:everyone is a hero','5-may-2023','Malayalam','97','750000000');

insert into industryhit values(1021,'Oppenheimer','21-jul-2023','English','96','500000000');

insert into industryhit values(1032,'Maamannan','29-jun-2023','Tamil','95','505000000');

 insert into industryhit(Id,Title,Releasedate,Language,votes,gross) select Id,Title,Releasedate,language,votes,gross from movies where votes>=95;

select * from industryhit;

insert into Movies values('1010','oppenheimer','18-jul-2023','https://www.movies.com/oppenheimer.jpg','U/A',2.5,7.8,'story of creating atom bomb',40,95,'English',0,'23-jul-2023',23723937);

update movies set metascore =80  where  m_title='oppenheimer';

update movies set metascore =80  where  Title='oppenheimer';

insert into Movies values('1015','voice of sathyanathan','18-jul-2023','https://m.media-amazon.com/imak2M_.jpg','U',2.10,7.4,'A man life becomes increasing complicated after his neighbor is injured in a dispute over a fense',60,90,'Malayalam',0,'23-jul-2023',109500000);

delete from industryhit;

drop table industryhit;

select * from movies;

select Title , votes ,releasedate, gross from movies where gross > 5000000 order by gross desc;

select Title ,releasedate  from movies where releasedate between '1-jan-2022' and '30-dec-2022' and language='Tamil';

select title ,releasedate ,metascore from movies order by metascore desc;

select title ,extract (year from releasedate)year ,language ,releasedate,votes from movies where language in ('Malayalam','English') and extract (year from releasedate)<'2022' and imdb_rating < 7 order by title;

select Title from movies where title like 'Open%' order by Id;

select Title from movies where title like 'Oppen%' order by Id;

select * from movies;

select Title from movies where title like 'Open%' order by Id;

select * from movies;

select Title from movies where title like 'Oppen%' order by Id;

select Title from movies where title like 'oppen%' order by Id;

select title  from movies where hit = '1' and extract (year  from releasedate) between '2022' and '2023' order by title asc;

select title from movies where runtime between  '1.5' and '2.5';

select title from movies where metascore <50 and imdb_rating > 6.0;

select title from movies where description is null;

 select power(2,3) as power_result from dual;

 select power(2,3) as power_result from dual;

Select round(7.688) as rounded_number from dual;

 select power(4,3) as power_result from dual;

Select round(7.688) as rounded_number from dual;

 select power(4,3) as power_result from dual;

Select round(7.688) as rounded_number from dual;

select ceil(4.14159) as ceiling_number from dual;

 select power(4,3) as power_result from dual;

Select round(7.688) as rounded_number from dual;

select ceil(4.14159) as ceiling_number from dual;

select floor(8.999) as floor_number from dual;

 select power(4,3) as power_result from dual;

Select round(7.688) as rounded_number from dual;

select ceil(4.14159) as ceiling_number from dual;

select floor(8.999) as floor_number from dual;

select abs(-10) as absolute_value from dual;

select exp(2) as exponential_value from dual;

select greatest(8, 17, 8, 9) as greatest_value from dual;

select least(8, 17, 8, 9) as least_value from dual;

select mod(14, 4) as modulus_result from dual;

select trunc(8.76543, 2) as truncated_number from dual;

select sign(-5) as sign_negative, sign(0) as sign_zero, sign(8) as sign_positive from dual;

select sqrt(9) as square_root_result from dual;

select upper(title) title from movies;

select lower(title)title from movies;

 select initcap(title)title from movies;

select length(title)title from movies;

select concat('Movie Title: ', title) from movies;

select  ascii(title) title from movies;

select substr(title ,1,4)title from movies;

select ltrim(m_title,'Pre') title from movies;

select ltrim(title,'Pre') title from movies;

select ltrim(title,'opp') title from movies;

select ltrim(title,'opp','vo') title from movies;

select ltrim(title,'opp') title from movies;

select rtrim(title,'mer') title from movies;

select title,trim( 'n'from title )from movies;

select title,trim( 'p'from title )from movies;

select title,trim( 'r'from title )from movies;

select title, translate(title,'a','A') from movies;

select title,instr(title,'a',1,2) from movies;

 select chr('65') from movies;

 select chr('66') from movies;

 select chr('68') from movies;

select title, lpad(title,18,'*') from movies;

select title, lpad(title,12,'*') from movies;

select title, lpad(title,18,'*') from movies;

select title, lpad(title,20,'*') from movies;

select title, lpad(title,22,'*') from movies;

select title, lpad(title,23,'*') from movies;

	select title, rpad(title,23,'*') from movies;

select to_number('123.45') as numeric_value from dual;

select to_char(12345.678, '99999.999') as formatted_number from dual;

select to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS') as formatted_date from dual;

select count(Id) from movies;

select avg(votes)avgvote from movies;

select avg(votes)avgvote from movies;

select max(gross)max_coll,min(gross)min_coll from movies;

select count(id) numberofmovies from movies where gross>500000000.;

select count(id) hitmovies from movies where hit='1';

select title,extract (year from release_date)year,extract(month from release_date) month from movies where release_date='16-jun-2020';

select title,extract (year from release_date)year,extract(month from release_date) month from movies where release_date='16-jun-2020';

desc movies


select title,extract (year from releasedate)year,extract(month from releasedate) month from movies where releasedate='16-jun-2020';

select title, months_between(entry_date,release_date ) as months_difference from movies;

select title, months_between(entry_date,releasedate ) as months_difference from movies;

select title,entry_date from movies;

select sysdate, sysdate+8 as eightdaysaftertoday  from dual;

select sysdate, sysdate+8 as aftereightdays  from dual;

select title from movies where extract(month from release_date)=2;

select title from movies where extract(month from releasedate)=2;

select to_date('2023-08-25', 'YYYY-MM-DD') as converted_date from dual;

select to_date('2023-08-25', 'YYYY-MM-DD') as converted_date from dual;

select add_months(sysdate, 3) as date_3_months_later from dual;

select last_day(sysdate) as last_day_of_current_month from dual;

select months_between('01-dec-24', '10-oct-23') as months_difference from dual;

select next_day(sysdate, 'FRIDAY') as next_friday from dual;

select sysdate, round(sysdate, 'MM') as rounded_to_hour from dual;

select sysdate, trunc(sysdate, 'MM') as truncated_to_month from dual;

select sysdate, extract(year from sysdate) as year from dual;

select to_date('2023-08-25', 'YYYY-MM-DD') as converted_date from dual;

select add_months(sysdate, 3) as date_3_months_later from dual;

select last_day(sysdate) as last_day_of_current_month from dual;

select months_between('01-dec-24', '10-oct-23') as months_difference from dual;

select to_date('2023-08-25', 'YYYY-MM-DD') as converted_date from dual;

select add_months(sysdate, 3) as date_3_months_later from dual;

select last_day(sysdate) as last_day_of_current_month from dual;

select months_between('01-dec-24', '10-oct-23') as months_difference from dual;

select next_day(sysdate, 'FRIDAY') as next_friday from dual;

select sysdate, round(sysdate, 'MM') as rounded_to_hour from dual;

select sysdate, trunc(sysdate, 'MM') as truncated_to_month from dual;

select sysdate, extract(year from sysdate) as year from dual;

select to_char(sysdate, 'DDTH-MM-YY') as systemdate from dual;

select to_char(sysdate, 'DDSP') as systemdate from dual;

select to_char(sysdate, 'DDSPTH') as systemdate from dual;

select title, gross, releasedate from movies where releasedate > '16-JUN-2020';

select title, gross, release_date from movies where release_date > '16-JUN-2020';

select title, gross, releasedate from movies where releasedate > '16-JUN-2020';

create table industryhit ( id int primary key , title varchar2(40),genre varchar2(40),certificate varchar2(20),gross number(10,2),release_date date);

desc industryhit


insert into industryhit( id,title, certificate,gross, release_date) 
select id,title,certificate,gross,release_date from movies where title='Master';

insert into industryhit( id,title, certificate,gross, release_date) 
select id,title,certificate,gross,release_date from movies where title='Rorschach';

insert into industryhit( id,title, certificate,gross, release_date)  
select id,title,certificate,gross,release_date from movies where title='jailer';

insert into industryhit( id,title, certificate,gross, release_date )  
select id,title,certificate,gross,release_date from movies where title='minnal murali';

insert into industryhit( id,title, certificate,gross, release_date )  
select id,title,certificate,gross,release_date from movies where title='oppenheimer';

insert into industryhit( id,title, certificate,gross, releasedate) 
select id,title,certificate,gross,releasedate from movies where title='Master';

insert into industryhit( id,title, certificate,gross, releasedate) 
select id,title,certificate,gross,releasedate from movies where title='Rorschach';

insert into industryhit( id,title, certificate,gross, releasedate)  
select id,title,certificate,gross,releasedate from movies where title='jailer';

insert into industryhit( id,title, certificate,gross, releasedate )  
select id,title,certificate,gross,releasedate from movies where title='minnal murali';

insert into industryhit( id,title, certificate,gross, releasedate )  
select id,title,certificate,gross,releasedate from movies where title='oppenheimer';

drop industryhit;

insert into industryhit( id,title, certificate,gross, releasedate) 
select id,title,certificate,gross,releasedate from movies where title='Master';

insert into industryhit( id,title, certificate,gross, releasedate) 
select id,title,certificate,gross,releasedate from movies where title='Rorschach';

insert into industryhit( id,title, certificate,gross, releasedate)  
select id,title,certificate,gross,releasedate from movies where title='jailer';

insert into industryhit( id,title, certificate,gross, releasedate )  
select id,title,certificate,gross,releasedate from movies where title='minnal murali';

insert into industryhit( id,title, certificate,gross, releasedate )  
select id,title,certificate,gross,releasedate from movies where title='oppenheimer';

drop table industryhit;

insert into industryhit( id,title, certificate,gross, releasedate) 
select id,title,certificate,gross,releasedate from movies where title='Master';

insert into industryhit( id,title, certificate,gross, releasedate) 
select id,title,certificate,gross,releasedate from movies where title='Rorschach';

insert into industryhit( id,title, certificate,gross, releasedate)  
select id,title,certificate,gross,releasedate from movies where title='jailer';

insert into industryhit( id,title, certificate,gross, releasedate )  
select id,title,certificate,gross,releasedate from movies where title='minnal murali';

insert into industryhit( id,title, certificate,gross, releasedate )  
select id,title,certificate,gross,releasedate from movies where title='oppenheimer';

create table industryhit ( id int primary key , title varchar2(40),genre varchar2(40),certificate varchar2(20),gross number(10,2),releasedate date);

insert into industryhit( id,title, certificate,gross, releasedate) 
select id,title,certificate,gross,releasedate from movies where title='Master';

insert into industryhit( id,title, certificate,gross, releasedate) 
select id,title,certificate,gross,releasedate from movies where title='Rorschach';

insert into industryhit( id,title, certificate,gross, releasedate)  
select id,title,certificate,gross,releasedate from movies where title='jailer';

insert into industryhit( id,title, certificate,gross, releasedate )  
select id,title,certificate,gross,releasedate from movies where title='minnal murali';

insert into industryhit( id,title, certificate,gross, releasedate )  
select id,title,certificate,gross,releasedate from movies where title='oppenheimer';

insert into industryhit( id,title, certificate,gross, releasedate) 
select id,title,certificate,gross,releasedate from movies where title='Jai bhim';

insert into industryhit( id,title, certificate,gross, releasedate)  
select id,title,certificate,gross,releasedate from movies where title='Jailer';

insert into industryhit( id,title, certificate,gross, releasedate )  
select id,title,certificate,gross,releasedate from movies where title='Minnal murali';

drop table industryhit;

insert into industryhit( id,title, certificate,gross, releasedate) 
select id,title,certificate,gross,releasedate from movies where title='Jai bhim';

insert into industryhit( id,title, certificate,gross, releasedate)  
select id,title,certificate,gross,releasedate from movies where title='Jailer';

insert into industryhit( id,title, certificate,gross, releasedate )  
select id,title,certificate,gross,releasedate from movies where title='Minnal murali';

create table industryhit ( id int primary key , title varchar2(40),genre varchar2(40),certificate varchar2(20),gross number(15,2),releasedate date);

insert into industryhit( id,title, certificate,gross, releasedate) 
select id,title,certificate,gross,releasedate from movies where title='Master';

insert into industryhit( id,title, certificate,gross, releasedate) 
select id,title,certificate,gross,releasedate from movies where title='Jai bhim';

insert into industryhit( id,title, certificate,gross, releasedate)  
select id,title,certificate,gross,releasedate from movies where title='Jailer';

insert into industryhit( id,title, certificate,gross, releasedate )  
select id,title,certificate,gross,releasedate from movies where title='Minnal murali';

insert into industryhit( id,title, certificate,gross, releasedate )  
select id,title,certificate,gross,releasedate from movies where title='oppenheimer';

select * from industryhit;

desc industryhit


select * from movies;

insert into industryhit values(1021,'Lucifer','action','U/A','1250000000','28-MAR-2019');

insert into industryhit values(1022,'Lucifer','action thriller','U/A','1250000000','28-MAR-2019');

delete from industryhit where id=1021;

insert into industryhit values(1023,'In Ghost House Inn','Horror','U/A','25000000','25-MAR-2010');

insert into industryhit values(1024,'Bangalore Days','Romance','U/A','50000000','25-JUN-2014');

select * from industryhit;

update  industryhit set genre ='action thriller' where Title='Master';

update  industryhit set genre ='action thriller' where Title='Jailer';

update  industryhit set genre ='super hero' where Title='Minnal murali';

update  industryhit set genre ='crime file' where Title='Jai bhim';

update  industryhit set genre =' biographical' where Title='oppenheimer';

select * from industryhit;

