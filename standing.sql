DROP TABLE IF EXISTS standing;
CREATE TABLE standing(
	Id 			INTEGER 		NOT NULL 	PRIMARY KEY
	,cName 		VARCHAR(30) 	NOT NULL
	,dName		VARCHAR(30) 	NOT NULL
	,Team		VARCHAR(30) 	NOT NULL
	,City		VARCHAR(30)		NOT NULL
	,W			INTEGER			NOT NULL
	,L			INTEGER 		NOT NULL
	,T	 		INTEGER 		NOT NULL
	,oPct		DECIMAL(3,3) 	NOT NULL
	,PF			INTEGER		 	NOT NULL
	,PA			INTEGER		 	NOT NULL
	,Net 		INTEGER		 	NOT NULL
	,TD			INTEGER		 	NOT NULL
	,Home		VARCHAR(30) 	NOT NULL
	,Road		VARCHAR(30) 	NOT NULL
	,Division	VARCHAR(30) 	NOT NULL
	,dPct		DECIMAL(3,3) 	NOT NULL
	,Conf		VARCHAR(30) 	NOT NULL
	,cPct		DECIMAL(3,3) 	NOT NULL
	,NonConf	VARCHAR(30) 	NOT NULL
	,Streak		VARCHAR(30) 	NOT NULL
	,Last5 		VARCHAR(30) 	NOT NULL
	,TLC		VARCHAR(30)		NOT NULL
);
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (1,'AFC','East','New England Patriots','New England','10','1','0','.909','347','212','135','39','6-0','4-1','4-0','1.000','7-1','.875','3-0','--','0-0','NE');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (2,'AFC','East','New York Jets','New York','6','5','0','.545','272','228','44','32','4-2','2-3','2-2','.500','5-4','.556','1-1','--','0-0','NYJ');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (3,'AFC','East','Buffalo Bills','Buffalo','5','6','0','.455','266','257','9','32','2-3','3-3','3-2','.600','5-5','.500','0-1','--','0-0','BUF');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (4,'AFC','East','Miami Dolphins','Miami','4','7','0','.364','225','287','-62','29','1-3','3-4','0-5','.000','2-6','.250','2-1','--','0-0','MIA');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (5,'AFC','North','Cincinnati Bengals','Cincinnati','9','2','0','.818','297','193','104','36','5-1','4-1','3-0','1.000','7-1','.875','2-1','--','0-0','CIN');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (6,'AFC','North','Pittsburgh Steelers','Pittsburgh','6','5','0','.545','266','230','36','28','4-2','2-3','1-2','.333','3-4','.429','3-1','--','0-0','PIT');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (7,'AFC','North','Baltimore Ravens','Baltimore','4','7','0','.364','259','276','-17','27','2-3','2-4','2-2','.500','3-5','.375','1-2','--','0-0','BAL');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (8,'AFC','North','Cleveland Browns','Cleveland','2','9','0','.182','213','310','-97','23','1-4','1-5','1-3','.250','2-7','.222','0-2','--','0-0','CLE');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (9,'AFC','South','Houston Texans','Houston','6','5','0','.545','232','234','-2','28','4-2','2-3','2-1','.667','4-3','.571','2-2','--','0-0','HOU');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (10,'AFC','South','Indianapolis Colts','Indianapolis','6','5','0','.545','249','260','-11','29','3-3','3-2','3-0','1.000','4-3','.571','2-2','--','0-0','IND');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (11,'AFC','South','Jacksonville Jaguars','Jacksonville','4','7','0','.364','236','299','-63','25','3-3','1-4','1-2','.333','4-5','.444','0-2','--','0-0','JAC');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (12,'AFC','South','Tennessee Titans','Tennessee','2','9','0','.182','203','257','-54','24','0-6','2-3','0-3','.000','0-7','.000','2-2','--','0-0','TEN');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (13,'AFC','West','Denver Broncos','Denver','9','2','0','.818','252','207','45','27','4-1','5-1','2-1','.667','5-2','.714','4-0','--','0-0','DEN');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (14,'AFC','West','Kansas City Chiefs','Kansas City','6','5','0','.545','287','220','67','30','3-2','3-3','2-1','.667','5-2','.714','1-3','--','0-0','KC');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (15,'AFC','West','Oakland Raiders','Oakland','5','6','0','.455','264','280','-16','31','2-3','3-3','1-1','.500','5-3','.625','0-3','--','0-0','OAK');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (16,'AFC','West','San Diego Chargers','San Diego','3','8','0','.273','244','307','-63','27','2-4','1-4','0-2','.000','2-5','.286','1-3','--','0-0','SD');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (17,'NFC','East','New York Giants','New York','5','6','0','.455','287','273','14','31','3-2','2-4','2-3','.400','4-5','.444','1-1','--','0-0','NYG');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (18,'NFC','East','Washington Redskins','Washington','5','6','0','.455','241','267','-26','26','5-1','0-5','2-1','.667','5-3','.625','0-3','--','0-0','WAS');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (19,'NFC','East','Philadelphia Eagles','Philadelphia','4','7','0','.364','243','274','-31','28','2-3','2-4','2-2','.500','3-6','.333','1-1','--','0-0','PHI');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (20,'NFC','East','Dallas Cowboys','Dallas','3','8','0','.273','204','261','-57','20','1-5','2-3','2-2','.500','2-7','.222','1-1','--','0-0','DAL');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (21,'NFC','North','Minnesota Vikings','Minnesota','8','3','0','.727','231','194','37','23','4-1','4-2','3-1','.750','5-2','.714','3-1','--','0-0','MIN');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (22,'NFC','North','Green Bay Packers','Green Bay','8','4','0','.667','289','238','51','33','4-2','4-2','3-2','.600','6-3','.667','2-1','--','0-0','GB');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (23,'NFC','North','Chicago Bears','Chicago','5','6','0','.455','231','264','-33','23','1-4','4-2','1-3','.250','2-5','.286','3-1','--','0-0','CHI');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (24,'NFC','North','Detroit Lions','Detroit','4','8','0','.333','253','315','-62','29','3-4','1-4','2-3','.400','3-5','.375','1-3','--','0-0','DET');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (25,'NFC','South','Carolina Panthers','Carolina','11','0','0','1.000','332','205','127','37','6-0','5-0','2-0','1.000','7-0','1.000','4-0','--','0-0','CAR');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (26,'NFC','South','Atlanta Falcons','Atlanta','6','5','0','.545','260','234','26','31','3-3','3-2','0-2','.000','4-4','.500','2-1','--','0-0','ATL');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (27,'NFC','South','Tampa Bay Buccaneers','Tampa Bay','5','6','0','.455','248','279','-31','26','2-3','3-3','2-1','.667','4-3','.571','1-3','--','0-0','TB');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (28,'NFC','South','New Orleans Saints','New Orleans','4','7','0','.364','261','339','-78','33','3-2','1-5','1-2','.333','3-5','.375','1-2','--','0-0','NO');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (29,'NFC','West','Arizona Cardinals','Arizona','9','2','0','.818','355','229','126','42','4-1','5-1','3-1','.750','6-1','.857','3-1','--','0-0','ARI');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (30,'NFC','West','Seattle Seahawks','Seattle','6','5','0','.545','267','222','45','30','4-2','2-3','2-2','.500','5-4','.556','1-1','--','0-0','SEA');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (31,'NFC','West','St. Louis Rams','St. Louis','4','7','0','.364','186','230','-44','20','3-2','1-5','3-0','1.000','3-4','.429','1-3','--','0-0','STL');
INSERT INTO standing (Id,cName,dName,Team,City,W,L,T,oPct,PF,PA,Net,TD,Home,Road,Division,dPct,Conf,cPct,NonConf,Streak,Last5,TLC) VALUES (32,'NFC','West','San Francisco 49ers','San Francisco','3','8','0','.273','152','271','-119','14','3-3','0-5','0-5','.000','2-7','.222','1-1','--','0-0','SF');
