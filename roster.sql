DROP TABLE IF EXISTS roster;
CREATE TABLE roster(
   Id        INTEGER  NOT NULL PRIMARY KEY 
  ,Name      VARCHAR(22) NOT NULL
  ,Pos       VARCHAR(4) NOT NULL
  ,Status    VARCHAR(4) NOT NULL
  ,Height    VARCHAR(6) NOT NULL
  ,Weight    INTEGER  NOT NULL
  ,Birthdate DATE  NOT NULL
  ,Exp       INTEGER  NOT NULL
  ,College   VARCHAR(24) NOT NULL
);
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (100,'Anderson, James','LB','ACT','6''2"',235,'9/26/1983',10,'Virginia Tech');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (50,'Anthony, Stephone','MLB','ACT','6''2"',245,'7/28/1992',0,'Clemson');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (72,'Armstead, Terron','T','ACT','6''5"',304,'7/23/1991',3,'Arkansas-Pine Bluff');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (90,'Barnes, Tavaris','DE','ACT','6''3"',275,'11/2/1991',0,'Clemson');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (40,'Breaux, Delvin','CB','ACT','6''1"',196,'10/25/1989',1,'LSU');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (9,'Brees, Drew','QB','ACT','6''0"',209,'1/15/1979',15,'Purdue');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (71,'Brown, Austin','NT','RES','6''2"',295,'9/14/1991',0,'Miami (Ohio)');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (39,'Browner, Brandon','CB','ACT','6''4"',221,'8/2/1984',6,'Oregon State');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (25,'Bush, Rafael','FS','RES','5''11"',205,'5/12/1987',5,'South Carolina State');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (31,'Byrd, Jairus','FS','ACT','5''10"',203,'10/7/1986',7,'Oregon');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (16,'Coleman, Brandon','WR','ACT','6''6"',225,'6/22/1992',1,'Rutgers');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (12,'Colston, Marques','WR','ACT','6''4"',225,'6/5/1983',10,'Hofstra');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (10,'Cooks, Brandin','WR','ACT','5''10"',189,'9/25/1993',2,'Oregon State');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (95,'Davison, Tyeler','DT','ACT','6''2"',309,'9/23/1992',0,'Fresno State');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (20,'Dixon, Brian','DB','ACT','6''0"',195,'4/26/1990',2,'Northwest Missouri State');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (47,'Drescher, Justin','LS','ACT','6''1"',235,'1/1/1988',6,'Colorado');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (54,'Dunbar, Jo-Lonn','LB','ACT','6''0"',235,'3/13/1985',8,'Boston College');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (91,'Edebali, Kasim','OLB','ACT','6''2"',253,'8/17/1989',2,'Boston College');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (59,'Ellerbe, Dannell','OLB','ACT','6''1"',245,'11/29/1985',7,'Georgia');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (104,'Eulls, Kaleb','DT','ACT','6''4"',285,'6/28/1991',0,'Mississippi State');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (73,'Evans, Jahri','G','ACT','6''4"',318,'8/22/1983',10,'Bloomsburg');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (101,'Flynn, Matt','QB','ACT','6''2"',225,'6/20/1985',8,'LSU');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (5,'Forbath, Kai','K','ACT','5''11"',197,'9/2/1987',4,'UCLA');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (17,'Graham, T.J.','WR','ACT','5''11"',188,'7/27/1989',4,'North Carolina State');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (18,'Grayson, Garrett','QB','ACT','6''2"',220,'5/29/1991',0,'Colorado State');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (58,'Gwacham, Obum','DE','ACT','6''5"',246,'3/20/1991',0,'Oregon State');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (57,'Hawthorne, David','OLB','ACT','6''0"',246,'5/14/1985',8,'Texas Christian');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (34,'Hightower, Tim','RB','ACT','6''0"',220,'5/23/1986',4,'Richmond');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (89,'Hill, Josh','TE','ACT','6''5"',250,'5/21/1990',3,'Idaho State');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (98,'Hills, Tony','OT','ACT','6''5"',304,'11/4/1984',7,'Texas');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (84,'Hoomanawanui, Michael','TE','ACT','6''4"',265,'7/4/1988',6,'Illinois');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (53,'Humber, Ramon','OLB','ACT','5''11"',232,'8/10/1987',7,'North Dakota State');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (22,'Ingram, Mark','RB','ACT','5''9"',215,'12/21/1989',5,'Alabama');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (92,'Jenkins, John','DT','ACT','6''3"',359,'7/11/1989',3,'Georgia');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (94,'Jordan, Cameron','DE','ACT','6''4"',287,'7/10/1989',5,'California');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (65,'Kelemete, Senio','G','ACT','6''3"',300,'5/10/1990',3,'Washington');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (44,'Kikaha, Hau''oli','OLB','ACT','6''3"',246,'7/24/1992',0,'Washington');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (68,'Lelito, Tim','OG','ACT','6''4"',315,'7/21/1989',3,'Grand Valley State');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (21,'Lewis, Keenan','CB','ACT','6''1"',208,'5/17/1986',7,'Oregon State');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (56,'Mauti, Michael','LB','ACT','6''2"',243,'1/19/1990',3,'Penn State');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (82,'McCown, Luke','QB','RES','6''4"',217,'7/12/1981',12,'Louisiana Tech');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (77,'McGlynn, Mike','OT','ACT','6''4"',325,'3/8/1985',7,'Pittsburgh');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (6,'Morstead, Thomas','P','ACT','6''4"',235,'3/8/1986',7,'Southern Methodist');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (48,'Murphy, Marcus','RB','ACT','5''9"',195,'10/3/1991',0,'Missouri State');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (75,'Peat, Andrus','OT','ACT','6''7"',316,'11/4/1993',0,'Stanford');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (78,'Richardson, Bobby','DE','ACT','6''3"',286,'11/20/1992',0,'Indiana');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (29,'Robinson, Khiry','RB','RES','6''0"',220,'12/28/1989',3,'West Texas A&M');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (33,'Sanford, Jamarca','SS','ACT','5''10"',200,'8/27/1985',7,'Mississippi');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (83,'Snead, Willie','WR','ACT','5''11"',195,'10/17/1992',1,'Ball State');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (28,'Spiller, C.J.','RB','ACT','5''11"',200,'8/5/1987',6,'Clemson');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (64,'Strief, Zach','T','ACT','6''7"',320,'9/22/1983',10,'Northwestern');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (43,'Sunseri, Vinnie','SAF','RES','6''0"',210,'10/25/1991',2,'Alabama');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (27,'Swann, Damian','CB','ACT','6''0"',189,'12/4/1992',0,'Georgia');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (102,'Tabb, Jack','TE','RES','6''3"',250,'7/29/1992',0,'North Carolina');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (55,'Tull, Davis','OLB','RES','6''3"',240,'11/12/1991',0,'Tennessee-Chattanooga');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (60,'Unger, Max','C','ACT','6''5"',305,'4/14/1986',7,'Oregon');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (32,'Vaccaro, Kenny','SS','ACT','6''0"',214,'2/15/1991',3,'Texas');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (96,'Virgil, Lawrence','DT','RES','6''5"',290,'1/20/1991',1,'Valdosta State');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (105,'Watson, Benjamin','TE','ACT','6''3"',255,'12/18/1980',12,'Georgia');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (36,'Williams, P.J.','CB','RES','6''0"',196,'6/1/1993',0,'Florida State');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (93,'Williams, Kevin','DT','ACT','6''5"',311,'8/16/1980',13,'Oklahoma State');
INSERT INTO roster(Id,Name,Pos,Status,Height,Weight,Birthdate,Exp,College) VALUES (24,'Wilson, Kyle','DB','ACT','5''10"',190,'9/8/1987',6,'Boise State');
