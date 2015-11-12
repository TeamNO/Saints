DROP TABLE IF EXISTS standing;
CREATE TABLE standing(
   Id       INTEGER  NOT NULL PRIMARY KEY 
  ,Team     VARCHAR(21) NOT NULL
  ,W        INTEGER  NOT NULL
  ,L        INTEGER  NOT NULL
  ,T        BIT  NOT NULL
  ,Pct_1    DECIMAL(5,3) NOT NULL
  ,PF       INTEGER  NOT NULL
  ,PA       DATE  NOT NULL
  ,Net_Pts  INTEGER  NOT NULL
  ,TD       INTEGER  NOT NULL
  ,Home     VARCHAR(6) NOT NULL
  ,Road     VARCHAR(6) NOT NULL
  ,Division      VARCHAR(6) NOT NULL
  ,Pct_2    DECIMAL(5,3) NOT NULL
  ,Conf     VARCHAR(6) NOT NULL
  ,NonConf  VARCHAR(6) NOT NULL
  ,Streak   VARCHAR(3) NOT NULL
  ,Last_5   VARCHAR(6) NOT NULL
);
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (1,'New England Patriots',8,0,0,1,276,'5/22/1900',133,31,'May-00','Mar-00','Mar-00',1,'Jun-00','Feb-00','8W','May-00');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (2,'New York Jets',5,3,0,0.625,200,'6/10/1900',38,23,'1-Mar','2-Feb','1-Jan',0.5,'2-Apr','1-Jan','1W','2-Mar');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (3,'Buffalo Bills',4,4,0,0.5,209,'7/8/1900',19,26,'3-Feb','1-Feb','1-Feb',0.667,'3-Apr','0-1','1W','3-Feb');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (4,'Miami Dolphins',3,5,0,0.375,171,'7/24/1900',-35,22,'2-Jan','3-Feb','0-4',0,'5-Feb','Jan-00','2L','3-Feb');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (5,'Cincinnati Bengals',8,0,0,1,229,'5/21/1900',87,28,'Apr-00','Apr-00','Mar-00',1,'Jul-00','Jan-00','8W','May-00');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (6,'Pittsburgh Steelers',5,4,0,0.556,206,'6/30/1900',24,22,'2-Mar','2-Feb','0-2',0,'4-Feb','Mar-00','1W','2-Mar');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (7,'Baltimore Ravens',2,6,0,0.25,190,'8/1/1900',-24,19,'2-Jan','4-Jan','2-Jan',0.333,'4-Feb','0-2','1W','3-Feb');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (8,'Cleveland Browns',2,7,0,0.222,177,'9/3/1900',-70,19,'3-Jan','4-Jan','1-Jan',0.5,'5-Feb','0-2','4L','4-Jan');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (9,'Indianapolis Colts',4,5,0,0.444,200,'8/14/1900',-27,24,'3-Feb','2-Feb','Mar-00',1,'3-Apr','0-2','1W','3-Feb');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (10,'Houston Texans',3,5,0,0.375,174,'7/23/1900',-31,21,'2-Feb','3-Jan','1-Feb',0.667,'3-Feb','2-Jan','1W','3-Feb');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (11,'Jacksonville Jaguars',2,6,0,0.25,170,'8/22/1900',-65,20,'2-Feb','0-4','0-2',0,'4-Feb','0-2','1L','4-Jan');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (12,'Tennessee Titans',2,6,0,0.25,159,'7/5/1900',-28,19,'0-4','2-Feb','0-2',0,'0-5','1-Feb','1W','4-Jan');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (13,'Denver Broncos',7,1,0,0.875,192,'5/18/1900',53,19,'Mar-00','1-Apr','Feb-00',1,'1-Apr','Mar-00','1L','1-Apr');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (14,'Oakland Raiders',4,4,0,0.5,213,'7/29/1900',2,25,'2-Feb','2-Feb','1-Jan',0.5,'3-Apr','0-1','1L','3-Feb');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (15,'Kansas City Chiefs',3,5,0,0.375,195,'6/30/1900',13,21,'2-Feb','3-Jan','0-1',0,'2-Feb','3-Jan','2W','3-Feb');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (16,'San Diego Chargers',2,7,0,0.222,210,'9/5/1900',-39,23,'3-Feb','0-4','0-1',0,'4-Jan','3-Jan','5L','0-5');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (17,'New York Giants',5,4,0,0.556,247,'8/13/1900',21,27,'1-Mar','3-Feb','2-Feb',0.5,'4-Apr','Jan-00','1W','2-Mar');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (18,'Philadelphia Eagles',4,4,0,0.5,193,'6/12/1900',29,22,'1-Feb','3-Feb','2-Feb',0.5,'4-Mar','Jan-00','1W','2-Mar');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (19,'Washington Redskins',3,5,0,0.375,158,'7/13/1900',-37,17,'1-Mar','0-4','1-Jan',0.5,'2-Mar','0-3','1L','3-Feb');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (20,'Dallas Cowboys',2,6,0,0.25,160,'7/22/1900',-44,16,'4-Jan','2-Jan','2-Feb',0.5,'5-Feb','0-1','6L','0-5');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (21,'Green Bay Packers',6,2,0,0.75,203,'6/15/1900',36,24,'Apr-00','2-Feb','Jan-00',1,'1-Apr','1-Feb','2L','2-Mar');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (22,'Minnesota Vikings',6,2,0,0.75,168,'5/19/1900',28,16,'Apr-00','2-Feb','Mar-00',1,'1-Apr','1-Feb','4W','1-Apr');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (23,'Chicago Bears',3,5,0,0.375,162,'8/8/1900',-59,16,'3-Jan','2-Feb','0-3',0,'0-5','Mar-00','1W','2-Mar');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (24,'Detroit Lions',1,7,0,0.125,149,'9/1/1900',-96,18,'3-Jan','0-4','2-Jan',0.333,'4-Jan','0-3','2L','4-Jan');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (25,'Carolina Panthers',8,0,0,1,228,'6/13/1900',63,26,'May-00','Mar-00','Feb-00',1,'May-00','Mar-00','8W','May-00');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (26,'Atlanta Falcons',6,3,0,0.667,229,'7/8/1900',39,27,'1-Mar','2-Mar','0-2',0,'3-Apr','Feb-00','2L','3-Feb');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (27,'New Orleans Saints',4,5,0,0.444,241,'9/24/1900',-27,31,'2-Mar','3-Jan','2-Jan',0.333,'4-Mar','1-Jan','1L','2-Mar');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (28,'Tampa Bay Buccaneers',3,5,0,0.375,181,'8/18/1900',-50,18,'3-Jan','2-Feb','1-Feb',0.667,'3-Feb','2-Jan','1L','3-Feb');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (29,'Arizona Cardinals',6,2,0,0.75,263,'6/1/1900',110,32,'1-Mar','1-Mar','1-Jan',0.5,'1-Apr','1-Feb','2W','2-Mar');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (30,'St. Louis Rams',4,4,0,0.5,153,'5/25/1900',7,16,'1-Mar','3-Jan','Mar-00',1,'3-Mar','1-Jan','1L','2-Mar');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (31,'Seattle Seahawks',4,4,0,0.5,167,'5/19/1900',27,16,'1-Feb','3-Feb','1-Jan',0.5,'3-Apr','0-1','2W','2-Mar');
INSERT INTO standing(Id,Team,W,L,T,Pct_1,PF,PA,Net_Pts,TD,Home,Road,Division,Pct_2,Conf,NonConf,Streak,Last_5) VALUES (32,'San Francisco 49ers',3,6,0,0.333,126,'8/10/1900',-97,12,'2-Mar','0-4','0-3',0,'5-Feb','1-Jan','1W','3-Feb');
