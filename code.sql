#database final code

create database Pokemon;
use Pokemon;

create table pokemon(
	num int primary key,
    name text,
    type text,
    height int,
    weight int,
    region varchar(10),
    foreign key (region) references region(name)
);

create table trainer(
	name varchar(10) primary key,
    age int,
    height int,
    region varchar(10),
    pokenum int,
    foreign key (region) references region(name),
    foreign key (pokenum) references pokemon(num)
);

create table region(
	name varchar(10) primary key,
    cardinality text,
    professor text
);

INSERT INTO `pokemon` (`num`,`name`,`type`,`height`,`weight`,`region`)
VALUES
(1,'Bulbasaur','Grass',2,15,'Kanto'),
(2,'Ivysaur','Grass',3,28,'Kanto'),
(3,'Venusaur','Grass',6,220,'Kanto'),
(4,'Charmander','Fire',2,18,'Johto'),
(5,'Charmeleon','Fire',3,41,'Johto'),
(6,'Charizard','Fire',5,199,'Johto'),
(7,'Squirtle','Water',1,19,'Kalos'),
(8,'Wartortle','Water',3,49,'Kalos'),
(9,'Blastoise','Water',5,188,'Kalos'),
(10,'Caterpie','Bug',1,6,'Alola'),
(11,'Metapod','Bug',2,21,'Alola'),
(12,'Butterfree','Bug',3,70,'Alola'),
(13,'Weedle','Bug',1,7,'Galar'),
(14,'Kakuna','Bug',2,22,'Galar'),
(15,'Beedrill','Bug',3,65,'Galar'),
(16,'Pidgey','Normal',1,4,'Paldea'),
(17,'Pidgeotto','Normal',3,66,'Paldea'),
(18,'Pidgeot','Normal',4,87,'Paldea'),
(19,'Rattata','Normal',1,7,'Unova'),
(20,'Raticate','Normal',2,40,'Unova'),
(21,'Spearow','Normal',1,4,'Sinnoh'),
(22,'Fearow','Normal',3,83,'Sinnoh'),
(23,'Ekans','Poison',6,15,'Hisui'),
(24,'Arbok','Poison',11,143,'Hisui'),
(26,'Raichu','Electric',2,66,'Kanto'),
(27,'Sandshrew','Ground',2,26,'Kanto'),
(28,'Sandslash','Ground',3,65,'Kanto'),
(29,'Nidoran-F','Poison',1,15,'Johto'),
(30,'Nidorina','Poison',2,44,'Johto'),
(31,'Nidoqueen','Poison',4,132,'Johto'),
(32,'Nidoran-M','Poison',1,19,'Kalos'),
(33,'Nidorino','Poison',2,43,'Kalos'),
(34,'Nidoking','Poison',4,136,'Kalos'),
(35,'Clefairy','Fairy',2,16,'Alola'),
(36,'Clefable','Fairy',4,88,'Alola'),
(37,'Vulpix','Fire',2,21,'Alola'),
(38,'Ninetales','Fire',3,43,'Galar'),
(39,'Jigglypuff','Fairy',1,12,'Galar'),
(40,'Wigglytuff','Fairy',3,26,'Galar'),
(41,'Zubat','Poison',2,16,'Paldea'),
(42,'Golbat','Poison',5,121,'Paldea'),
(43,'Oddish','Grass',1,11,'Paldea'),
(44,'Gloom','Grass',2,19,'Unova'),
(45,'Vileplume','Grass',3,41,'Unova'),
(46,'Paras','Bug',1,11,'Sinnoh'),
(47,'Parasect','Bug',3,65,'Sinnoh'),
(48,'Venonat','Bug',3,66,'Hisui'),
(49,'Venomoth','Bug',4,27,'Hisui'),
(50,'Diglett','Ground',1,1,'Kanto');



INSERT INTO `trainer` (`name`,`age`,`height`,`region`,`pokenum`)
VALUES
('Red',12,5,'Kanto',4),
('Chase',13,5,'Kanto',25),
('Ethan',14,5,'Johto',29),
('Brendan',15,6,'Johto',4),
('Lucas',12,4,'Sinnoh',21),
('Hilbert',16,6,'Unova',19),
('Nate',17,6,'Unova',44),
('Calem',17,6,'Kalos',7),
('Elio',15,5,'Kanto',1),
('Victor',16,5,'Galar',13),
('Rei',13,4,'Hisui',48),
('Florian',16,6,'Paldea',42),
('Green',17,5,'Kanto',2),
('Elaine',12,4,'Kanto',3),
('Kris',15,5,'Johto',5),
('Lyra',13,4,'Johto',6),
('May',15,5,'Sinnoh',22),
('Dawn',17,5,'Sinnoh',46),
('Hilda',12,4,'Unova',20),
('Rosa',15,5,'Unova',19),
('Serena',16,5,'Kalos',33),
('Selene',16,5,'Alola',35),
('Gloria',12,4,'Galar',39),
('Akari',15,5,'Hisui',24),
('Juliana',13,5,'Paldea',16);


INSERT INTO `region` (`name`,`cardinality`,`professor`)
VALUES
('Johto','West','Elm'),
('Hoenn','South','Birch'),
('Hisui','North','Laventon'),
('Unova','West','Juniper'),
('Kalos','West','Sycamore'),
('Alola','East','Kukui'),
('Galar','East','Magnolia'),
('Paldea','West','Sada');
