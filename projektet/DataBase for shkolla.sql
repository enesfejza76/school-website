-- Krijimi i databazes the perdorimi i saj
create database klasaXI_9;
use klasaXI_9;

-- Krijimi i tabeles per notat e periuthes se 1
create table nota_periudha_1 (
nr_ditarit int primary key not null,
emri varchar(30),
mbiemri varchar(30),
Matematik int,
Gjuhe_Shqipe int,
Fizik int,
Operimi_i_serverit int,
My_sql int,
Mesatarja decimal(4,1),
Suksesi varchar(30)
);

-- Futja e te thenave ne tabelen per notat e periuthes se 1
insert into nota_periudha_1 (nr_ditarit,emri,mbiemri,Matematik,Gjuhe_Shqipe,Fizik,Operimi_i_serverit,My_sql,Mesatarja)  values
       (1,'Albion','Mazhuni',1,1,1,1,1,(Matematik + Gjuhe_Shqipe + Fizik + Operimi_i_serverit + Operimi_i_serverit + My_sql) / 5),
       (2,'Andi','Mehmeti',2,2,2,2,2,(Matematik + Gjuhe_Shqipe + Fizik + Operimi_i_serverit + Operimi_i_serverit + My_sql) / 5),
       (3,'Bleon','Cimili',3,3,3,3,3,(Matematik + Gjuhe_Shqipe + Fizik + Operimi_i_serverit + Operimi_i_serverit + My_sql) / 5),
       (4,'Burim','Mazhuni',3,2,3,2,2,(Matematik + Gjuhe_Shqipe + Fizik + Operimi_i_serverit + Operimi_i_serverit + My_sql) / 5),
       (5,'Daris','Osmani',3,2,2,3,2,(Matematik + Gjuhe_Shqipe + Fizik + Operimi_i_serverit + Operimi_i_serverit + My_sql) / 5),
       (6,'Drin','Saraqi',2,3,3,2,4,(Matematik + Gjuhe_Shqipe + Fizik + Operimi_i_serverit + Operimi_i_serverit + My_sql) / 5),
       (7,'Drin','Bajraktari',3,4,3,2,2,(Matematik + Gjuhe_Shqipe + Fizik + Operimi_i_serverit + Operimi_i_serverit + My_sql) / 5),
       (8,'Ensar','Muli',3,4,4,2,3,(Matematik + Gjuhe_Shqipe + Fizik + Operimi_i_serverit + Operimi_i_serverit + My_sql) / 5),
       (9,'Endrit','Mazhuni',4,3,3,2,2,(Matematik + Gjuhe_Shqipe + Fizik + Operimi_i_serverit + Operimi_i_serverit + My_sql) / 5),
       (10,'Enes','Fejza',4,3,2,3,2,(Matematik + Gjuhe_Shqipe + Fizik + Operimi_i_serverit + Operimi_i_serverit + My_sql) / 5);

-- Krijimi i tabeles per notat e periuthes se 2
create table nota_periudha_2 (
nr_ditarit int primary key not null,
emri varchar(30),
mbiemri varchar(30),
Matematik int,
Gjuhe_Shqipe int,
Fizik int,
Operimi_i_serverit int,
My_sql int,
Mesatarja decimal(4,1),
Suksesi varchar(30)
);

-- Futja e te thenave ne tabelen per notat e periuthes se 2
insert into nota_periudha_2 (nr_ditarit,emri,mbiemri,Matematik,Gjuhe_Shqipe,Fizik,Operimi_i_serverit,My_sql,Mesatarja) values
	   (1,'Albion','Mazhuni',1,2,1,1,1,(Matematik + Gjuhe_Shqipe + Fizik + Operimi_i_serverit + Operimi_i_serverit + My_sql) / 5),
       (2,'Andi','Mehmeti',2,2,3,3,2,(Matematik + Gjuhe_Shqipe + Fizik + Operimi_i_serverit + Operimi_i_serverit + My_sql) / 5),
       (3,'Bleon','Cimili',3,5,4,3,4,(Matematik + Gjuhe_Shqipe + Fizik + Operimi_i_serverit + Operimi_i_serverit + My_sql) / 5),
       (4,'Burim','Mazhuni',2,2,3,2,3,(Matematik + Gjuhe_Shqipe + Fizik + Operimi_i_serverit + Operimi_i_serverit + My_sql) / 5),
       (5,'Daris','Osmani',4,3,2,4,5,(Matematik + Gjuhe_Shqipe + Fizik + Operimi_i_serverit + Operimi_i_serverit + My_sql) / 5),
       (6,'Drin','Saraqi',2,3,3,2,4,(Matematik + Gjuhe_Shqipe + Fizik + Operimi_i_serverit + Operimi_i_serverit + My_sql) / 5),
       (7,'Drin','Bajraktari',3,4,3,2,2,(Matematik + Gjuhe_Shqipe + Fizik + Operimi_i_serverit + Operimi_i_serverit + My_sql) / 5),
       (8,'Ensar','Muli',3,4,4,2,3,(Matematik + Gjuhe_Shqipe + Fizik + Operimi_i_serverit + Operimi_i_serverit + My_sql) / 5),
       (9,'Endrit','Mazhuni',4,3,3,2,2,(Matematik + Gjuhe_Shqipe + Fizik + Operimi_i_serverit + Operimi_i_serverit + My_sql) / 5),
       (10,'Enes','Fejza',4,3,2,3,2,(Matematik + Gjuhe_Shqipe + Fizik + Operimi_i_serverit + Operimi_i_serverit + My_sql) / 5);

-- Krijimi i tabeles per notat e perfundimtares
create table nota_perfundimtare (
nr_ditarit int primary key not null,
emri varchar(30),
mbiemri varchar(30),
Matematik_mesatarja int,
Gjuhe_Shqipe_mesatarja int,
Fizik_mesatarja int,
Operimi_i_serverit_mesatarja int,
My_sql_mesatarja int,
Mesatarja decimal(4,1),
Suksesi varchar(30)
);

-- Futja e te thenave ne tabelen per notat e perfundimtares
insert into nota_perfundimtare (nr_ditarit,emri,mbiemri) values
	   (1,'Albion','Mazhuni'),
       (2,'Andi','Mehmeti'),
       (3,'Bleon','Cimili'),
       (4,'Burim','Mazhuni'),
       (5,'Daris','Osmani'),      
       (6,'Drin','Saraqi'),
       (7,'Drin','Bajraktari'),
       (8,'Ensar','Muli'),
       (9,'Endrit','Mazhuni'),
       (10,'Enes','Fejza');

-- Suskesi i Periuthes se 1
select nr_ditarit, emri,mbiemri,Matematik,Gjuhe_Shqipe,Fizik,Operimi_i_serverit,My_sql,Mesatarja,
case
when Mesatarja > 1.0 and Mesatarja <= 1.4 then  'Pamjaftueshem'
when Mesatarja > 1.5 and Mesatarja <= 2.4 then  'Mjaftueshem'
when Mesatarja >= 2.5 and Mesatarja <= 3.4 then  'Mire'
when Mesatarja >= 3.5 and Mesatarja <= 4.4 then  'Shume Mire'
when Mesatarja >= 4.5 and Mesatarja < 5.0 then  'Shkelqyeshem'
end as Suksesi
from nota_periudha_1;

-- Suskesi i Periuthes se 2
select nr_ditarit, emri,mbiemri,Matematik,Gjuhe_Shqipe,Fizik,Operimi_i_serverit,My_sql,Mesatarja,
case
when Mesatarja >= 1.0 and Mesatarja <= 1.4 then  'Pamjaftueshem'
when Mesatarja > 1.5 and Mesatarja <= 2.4 then  'Mjaftueshem'
when Mesatarja >= 2.5 and Mesatarja <= 3.4 then  'Mire'
when Mesatarja >= 3.5 and Mesatarja <= 4.4 then  'Shume Mire'
when Mesatarja >= 4.5 and Mesatarja < 5.0 then  'Shkelqyeshem'
end as Suksesi
from nota_periudha_2;

