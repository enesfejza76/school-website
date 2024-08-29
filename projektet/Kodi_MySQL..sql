create database Sistemi_Menaxhimit_Restoranti;
use Sistemi_Menaxhimit_Restoranti;
CREATE TABLE Tavolinat (
  id_tavolina INT NOT NULL AUTO_INCREMENT,
  emri_tavolines CHAR(30) NOT NULL,
  kapaciteti INT NOT NULL,
  PRIMARY KEY (id_tavolina)
);
insert into Tavolinat (emri_tavolines,kapaciteti)
values ("Tavloina 1.1",2),
       ("Tavloina 1.2",2),
       ("Tavloina 1.3",2),
       ("Tavloina 2.1",4),
       ("Tavloina 2.2",4),
       ("Tavloina 2.3",4),
       ("Tavloina 3.1",6),
       ("Tavloina 3.2",6),
	   ("Tavloina 3.3",6);

CREATE TABLE Klientet (
  id_klienti INT NOT NULL AUTO_INCREMENT,
  emri CHAR(30) NOT NULL,
  mbiemri CHAR(30) NOT NULL,
  telefoni CHAR(20) NOT NULL,
  PRIMARY KEY (id_klienti)
);
insert into Klientet (emri,mbiemri,telefoni)
values ("Dritan","Hoxha",069144277),
       ("Anisa","Gashi",069293745) ,
       ("Kushtrim","Krasniqi",082232445),
       ("Nora","Demiri",045134801),
       ("Arben","Qorri",069211693) ,
       ("Liridon","Berisha",044356739),
       ("Haris","Kodrulla",035217996);
CREATE TABLE Stafi (
  id_stafi INT NOT NULL AUTO_INCREMENT,
  emri CHAR(30) NOT NULL,
  mbiemri CHAR(30) NOT NULL,
  pozicioni ENUM('Kamarier', 'Banakier', 'Kuzhinier', 'Manager') NOT NULL,
  PRIMARY KEY (id_stafi)
);
insert into Stafi (emri,mbiemri,pozicioni)
values ("Xhavit","Ali","Manager"),
       ("Albana","Salihi","Kuzhinier") ,
       ("Jeton","Kelmendi","Kuzhinier"),
       ("Fatbardh","Gjhoni","Banakier"),
       ("Labinot","Maloku","Kamarier") ,
       ("Arlind","Jashari","Kamarier"),
       ("Valon","Krasniqi","Kamarier");
CREATE TABLE Kategorija_Ushqimeve (
  id_kategori INT NOT NULL AUTO_INCREMENT,
  emri_kategoris CHAR(40) NOT NULL,
  PRIMARY KEY (id_kategori)
);
insert into Kategorija_Ushqimeve (emri_kategoris)
values ("Mëngjesi"),
       ("Pica"),
       ("Pasta"),
       ("Brumëra"),
       ("Sallata"),
       ("Gjellra"),
       ("Mishëra");

CREATE TABLE Produktet_Ushqimit (
  id_ushqimi INT NOT NULL AUTO_INCREMENT,
  emri_ushqimit CHAR(30) NOT NULL,
  menu TEXT NOT NULL,
  qmimi DECIMAL(10, 2) NOT NULL,
  foto_url VARCHAR(200) NOT NULL,
  id_kategori INT NOT NULL,
  PRIMARY KEY (id_ushqimi),
  FOREIGN KEY (id_kategori) REFERENCES Kategorija_Ushqimeve(id_kategori)
);
insert into Produktet_Ushqimit (emri_ushqimit,menu,qmimi,foto_url,id_kategori)
values ("Pica Margarita","Domate,djath mozzarella dhe majdanoz",6.50,"https://gatimeshqiptare.com/wp-content/uploads/2021/05/800-1-768x576.jpg",2),
       ("Makarona Bolognaise","Sos me mish viqi,qepë dhe erëza te ndryshme",3.5,"https://babyologist.com/modules/prestablog/views/img/grid-for-1-6/up-img/5216.jpg",3),
       ("Sallat Pule","Sallat e gjelbërt,perime dhe mish pule",3,"https://neps.al/wp-content/uploads/neps-uploads/2020/01/sallate-me-pule.jpg",5),
       ("Supë të Shtëpis","Mish,perime,oriz dhe erëza",1.5,"https://www.onionringsandthings.com/wp-content/uploads/2016/10/chicken-pot-pie-soup-3-768x573.jpg",6),
       ("File Pule","Mish pule e prer hollë dhe erëza",4.5,"https://agroweb.org/wp-content/uploads/2019/08/pule_1-750x500.jpg",7),
       ("Byrek me mish","Brumë,mish viqi,qepë dhenerëza te ndryshme",3,"https://recetakuzhine.com/wp-content/uploads/2017/12/Albanian_Byrek-768x514.jpg",4),
       ("Vezë me Suxhukë","Vezë te përziera me suxhukë dhe perime",1.5,"https://www.balkanweb.com/wp-content/uploads/2018/01/omlete-me-suxhuk-dhe-kerpudha.jpg",1);

CREATE TABLE Porosit (
  id_porosia INT NOT NULL AUTO_INCREMENT,
  id_tavolina INT NOT NULL,
  id_stafi INT NOT NULL,
  id_klienti INT,
  porosia_data DATETIME NOT NULL,
  qmimi_total DECIMAL(10, 2) NOT NULL,
  gjendja ENUM('Në pritje', 'Në progres', 'Gati', 'E Shërbyer') NOT NULL,
  PRIMARY KEY (id_porosia),
  FOREIGN KEY (id_tavolina) REFERENCES Tavolinat(id_tavolina),
  FOREIGN KEY (id_stafi) REFERENCES Stafi(id_stafi),
  FOREIGN KEY (id_klienti) REFERENCES Klientet(id_klienti)
);
insert into Porosit (id_tavolina,id_stafi,id_klienti,porosia_data,qmimi_total,gjendja)
values (1.1,5,3,"2023-03-05 08:10:00",6,"E Shërbyer"),
       (2.2,6,4,"2023-03-05 08:00:00",12,"E Shërbyer"),
       (3.1,5,1,"2023-03-05 18:40:00",21,"Në pritje"),
       (1.1,6,6,"2023-03-05 16:50:00",7,"Gati"),
       (2.1,7,2,"2023-03-05 17:20:00",12,"Në progres"),
       (2.2,5,7,"2023-03-05 12:00:00",26,"E Shërbyer"),
       (3.1,7,5,"2023-03-05 10:30:00",27,"E Shërbyer");

 
CREATE TABLE Produktet_Porosia (
  id_porosia INT NOT NULL,
  id_ushqimi INT NOT NULL,
  sasia INT NOT NULL,
  qmimi DECIMAL(10, 2) NOT NULL,
  PRIMARY KEY (id_porosia, id_ushqimi),
  FOREIGN KEY (id_porosia) REFERENCES porosit(id_porosia),
  FOREIGN KEY (id_ushqimi) REFERENCES Produktet_Ushqimit(id_ushqimi)
);
insert into Produktet_Porosia (id_porosia,id_ushqimi,sasia,qmimi)
values (6,1,4,26),
       (2,3,4,12),
       (4,2,2,7),
       (1,3,2,6),
       (7,5,8,27),
       (5,7,4,12),
       (3,2,6,21);
  

DELIMITER //

CREATE FUNCTION Numero_Porosi_per_Tavolina (
  id_tavolina INT
)
RETURNS INT
READS SQL Data
BEGIN
  DECLARE numri_porosive INT;
  SELECT COUNT(*) INTO numri_porosive
  FROM Porosit
  WHERE id_tavolina = id_tavolina
  AND status IN ('Në pritje', 'Në progres', 'Gati');
  RETURN numri_porosive;
END //

DELIMITER ;
