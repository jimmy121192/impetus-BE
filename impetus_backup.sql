-- MySQL dump 10.13  Distrib 5.7.26, for osx10.10 (x86_64)
--
-- Host: localhost    Database: impetus_db
-- ------------------------------------------------------
-- Server version	5.7.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `heroku_b8290af623dd61c`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `heroku_b8290af623dd61c` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `heroku_b8290af623dd61c`;

--
-- Table structure for table `Badminton`
--

DROP TABLE IF EXISTS `Badminton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Badminton` (
  `user_id` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Badminton`
--

LOCK TABLES `Badminton` WRITE;
/*!40000 ALTER TABLE `Badminton` DISABLE KEYS */;
INSERT INTO `Badminton` VALUES ('3','John Snow'),('4','Henry Leung'),('6','Dallas Hoang'),('7','Hanna Nguyen');
/*!40000 ALTER TABLE `Badminton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Basketball`
--

DROP TABLE IF EXISTS `Basketball`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Basketball` (
  `user_id` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Basketball`
--

LOCK TABLES `Basketball` WRITE;
/*!40000 ALTER TABLE `Basketball` DISABLE KEYS */;
INSERT INTO `Basketball` VALUES ('3','John Snow'),('5','Ariana Grande'),('6','Dallas Hoang'),('7','Hanna Nguyen');
/*!40000 ALTER TABLE `Basketball` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CatLadies`
--

DROP TABLE IF EXISTS `CatLadies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CatLadies` (
  `user_id` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `score` varchar(100) DEFAULT NULL,
  `rank` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `joindate` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CatLadies`
--

LOCK TABLES `CatLadies` WRITE;
/*!40000 ALTER TABLE `CatLadies` DISABLE KEYS */;
/*!40000 ALTER TABLE `CatLadies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEMONS`
--

DROP TABLE IF EXISTS `DEMONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEMONS` (
  `user_id` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `score` varchar(100) DEFAULT NULL,
  `rank` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `joindate` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEMONS`
--

LOCK TABLES `DEMONS` WRITE;
/*!40000 ALTER TABLE `DEMONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `DEMONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DOTO`
--

DROP TABLE IF EXISTS `DOTO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DOTO` (
  `user_id` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `score` varchar(100) DEFAULT NULL,
  `rank` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `joindate` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DOTO`
--

LOCK TABLES `DOTO` WRITE;
/*!40000 ALTER TABLE `DOTO` DISABLE KEYS */;
INSERT INTO `DOTO` VALUES ('1','Jimmy','9999','Master','Captain','2019 Mar 01'),('9','James','4000','Private','Member','2019-03-14');
/*!40000 ALTER TABLE `DOTO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Esport`
--

DROP TABLE IF EXISTS `Esport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Esport` (
  `user_id` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Esport`
--

LOCK TABLES `Esport` WRITE;
/*!40000 ALTER TABLE `Esport` DISABLE KEYS */;
INSERT INTO `Esport` VALUES ('1','Jimmy Truong'),('2','Jenny Truong'),('6','Dallas Hoang'),('7','Hanna Nguyen'),('9','James Lo');
/*!40000 ALTER TABLE `Esport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JoinRequests`
--

DROP TABLE IF EXISTS `JoinRequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JoinRequests` (
  `user_id` varchar(50) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `team_id` varchar(50) NOT NULL,
  `teamname` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `score` varchar(20) DEFAULT NULL,
  `rank` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JoinRequests`
--

LOCK TABLES `JoinRequests` WRITE;
/*!40000 ALTER TABLE `JoinRequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `JoinRequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Memers`
--

DROP TABLE IF EXISTS `Memers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Memers` (
  `user_id` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `score` varchar(100) DEFAULT NULL,
  `rank` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `joindate` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Memers`
--

LOCK TABLES `Memers` WRITE;
/*!40000 ALTER TABLE `Memers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Memers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Soccer`
--

DROP TABLE IF EXISTS `Soccer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Soccer` (
  `user_id` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Soccer`
--

LOCK TABLES `Soccer` WRITE;
/*!40000 ALTER TABLE `Soccer` DISABLE KEYS */;
INSERT INTO `Soccer` VALUES ('1','Jimmy Truong'),('4','Henry Leung'),('8','Cristiano Ronaldo'),('9','James Lo');
/*!40000 ALTER TABLE `Soccer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Spirits`
--

DROP TABLE IF EXISTS `Spirits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Spirits` (
  `user_id` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `score` varchar(100) DEFAULT NULL,
  `rank` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `joindate` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Spirits`
--

LOCK TABLES `Spirits` WRITE;
/*!40000 ALTER TABLE `Spirits` DISABLE KEYS */;
/*!40000 ALTER TABLE `Spirits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TableTennis`
--

DROP TABLE IF EXISTS `TableTennis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TableTennis` (
  `user_id` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TableTennis`
--

LOCK TABLES `TableTennis` WRITE;
/*!40000 ALTER TABLE `TableTennis` DISABLE KEYS */;
INSERT INTO `TableTennis` VALUES ('6','Dallas Hoang');
/*!40000 ALTER TABLE `TableTennis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tennis`
--

DROP TABLE IF EXISTS `Tennis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tennis` (
  `user_id` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tennis`
--

LOCK TABLES `Tennis` WRITE;
/*!40000 ALTER TABLE `Tennis` DISABLE KEYS */;
INSERT INTO `Tennis` VALUES ('6','Dallas Hoang');
/*!40000 ALTER TABLE `Tennis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TheEagle`
--

DROP TABLE IF EXISTS `TheEagle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TheEagle` (
  `user_id` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `score` varchar(100) DEFAULT NULL,
  `rank` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `joindate` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TheEagle`
--

LOCK TABLES `TheEagle` WRITE;
/*!40000 ALTER TABLE `TheEagle` DISABLE KEYS */;
/*!40000 ALTER TABLE `TheEagle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Volleyball`
--

DROP TABLE IF EXISTS `Volleyball`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Volleyball` (
  `user_id` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Volleyball`
--

LOCK TABLES `Volleyball` WRITE;
/*!40000 ALTER TABLE `Volleyball` DISABLE KEYS */;
INSERT INTO `Volleyball` VALUES ('2','Jenny Truong'),('5','Ariana Grande'),('8','Helen Hee'),('9','Helen Hee');
/*!40000 ALTER TABLE `Volleyball` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WEREWOLVES`
--

DROP TABLE IF EXISTS `WEREWOLVES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WEREWOLVES` (
  `user_id` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `score` varchar(100) DEFAULT NULL,
  `rank` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `joindate` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WEREWOLVES`
--

LOCK TABLES `WEREWOLVES` WRITE;
/*!40000 ALTER TABLE `WEREWOLVES` DISABLE KEYS */;
/*!40000 ALTER TABLE `WEREWOLVES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement` (
  `text` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement`
--

LOCK TABLES `announcement` WRITE;
/*!40000 ALTER TABLE `announcement` DISABLE KEYS */;
INSERT INTO `announcement` VALUES ('My name is Jimmy. This is Impetus.');
/*!40000 ALTER TABLE `announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `thumb` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `sport` varchar(200) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'SNOW WARFARE','2021-04-08','14:00','impetus.svg','Do you want to build a snowman? Or ride our bike around the halls? I think some company is overdue Ive started talking to The pictures on the walls!','Other','BCIT - SE16 Field'),(2,'DOTA 2 BCIT CHAMPION LEAGUE','2019-04-10','17:00','esport.svg','The BCIT LAN Party occurs but twice a year- so come rek and be rekt, m8s! After a long day of studying at BCIT, there’s nothing quite like dealing a last hit to some creeps and snowballing the lane. Food, tournament prizes and door prizes included.','Esport','BCIT - SE06'),(3,'BCIT SUPER CUP','2019-04-17','18:00','soccer.svg','7-on-7 adult soccer league hosted at BCIT’s SE16 Field. All games are played on Wednesday Evenings between 6:00pm and 10:00pm.','Soccer','BCIT - SE16 Field'),(4,'BCIT BASKETBALL LEAGUE','2022-04-25','09:00','basketball.svg','The BCIT Basketball League (BBL) is a recreational and competitive basketball league. The BBL hosts fall and spring seasons that conclude with play-offs and a championship game. All games are officiated by two referees and a score keeper.','Basketball','BCIT - SE16'),(5,'DUO CHAMPIONS','2019-05-21','11:55','tennis.svg','Join us for the 2nd annual BCIT DUO CHAMPIONS.','Tennis','BCIT'),(6,'The International 11','2022-05-07','03:57','esport.svg','The International, often abbreviated as TI, is an annual tournament organized by Valve. In 2015 Valve increased their number of hosted events, founding the Dota Major Championships which incorporates The International into its structure. The International remains the biggest and most prestigious event on the Major Championship circuit.','Esport','Vancouver');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `poster` varchar(100) DEFAULT NULL,
  `tags` varchar(100) DEFAULT NULL,
  `body` varchar(1000) DEFAULT NULL,
  `reply` varchar(5000) DEFAULT NULL,
  `likes` varchar(50) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'How can it happen to me ?','Jenny','[\"Confession \",\"Life and Relationships\"]','I dated this guy at BCIT for a year and he dumped me over text. He legit was my only friend n family here. He cut me off after that like i never existed and that I meant nothing. He said he wanted to focus at school but turns out he is out there flirting with ex girlfriends and well others. It’s not the loss of a boyfriend that upsets me but the fact that he was my only friend here and now I’ve got nobody. Every time I see him at school and he acts like I don’t exist, it makes me sick. I can feel it in my chest it’s like something sinks me down and I just can’t deal with it. I’ve always had social anxiety and it gets worse when I see him. I’m trying so hard to not be affected and learn to be on my own. But it’s not working. I just question myself that why does everyone walk out of my life in the end like I never meant anything? Why is it so easy moving on from me? Or letting me go?',NULL,NULL,'2019-02-18','13:54:06'),(2,'Hmmm','Ariana','[\"Confession\",\"School\"]','I really dislike working with some international students. I understand English is their second language and they’re here to learn just like the rest of us, but the ones that are clearly not trying are the most aggravating to work with. I don’t find it fair to partner people who have been in their program since the very beginning with students who have just arrived and can barely read/write in English. It’s clear that some students aren’t performing at the same level as everybody else, yet it’s okay since they’re always being graded as a group and the other members end up doing the bulk of the work. There’s only so much a group member can do to help before it turns to basically taking on their entire share of the project. Just frustrating.',NULL,NULL,'2019-02-18','13:58:35'),(3,'Hmmm','Jimmy','[\"School \",\"Confession\"]','I really dislike working with some international students. I understand English is their second language and they’re here to learn just like the rest of us, but the ones that are clearly not trying are the most aggravating to work with. I don’t find it fair to partner people who have been in their program since the very beginning with students who have just arrived and can barely read/write in English. It’s clear that some students aren’t performing at the same level as everybody else, yet it’s okay since they’re always being graded as a group and the other members end up doing the bulk of the work. There’s only so much a group member can do to help before it turns to basically taking on their entire share of the project. Just frustrating.',NULL,NULL,'2019-02-19','12:42:19');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) DEFAULT NULL,
  `teamname` varchar(100) DEFAULT NULL,
  `sport` varchar(200) DEFAULT NULL,
  `team_score` int(11) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `image` varchar(400) DEFAULT NULL,
  `intro` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'1','DEMONS','Badminton',9999,'https://alonedreamer.com/impetus/images/demon.png','https://alonedreamer.com/impetus/images/badminton.jpg','The DEMONS Badminton Club in Burnaby has six badminton courts which are among the finest in BC. It is one of the few facilities dedicated to just badminton, with world-class hardwood floor courts under 35-foot high ceilings and two large viewing galleries.'),(2,'2','TheEagle','Basketball',9400,'https://alonedreamer.com/impetus/images/eagle.png','https://alonedreamer.com/impetus/images/basketball.jpeg','Let’s JUMP!!!. Join us to find other players who have the similar passion to you.'),(3,'3','DOTO','Esport',9200,'https://alonedreamer.com/impetus/images/doto.png','https://alonedreamer.com/impetus/images/esport.jpg','DOTO is one of the strongest BC gaming team. Founded in 2018, DOTO is known to have highly successful players in every competitive game they feature and is considered by many to be one of the most premier gaming organisations that exist today.'),(4,'4','WEREWOLVES','Soccer',8900,'https://alonedreamer.com/impetus/images/werewolves.svg','https://alonedreamer.com/impetus/images/soccer.jpg','WEREWOLVES is a BCIT football club based in Burnaby. Founded on 6 March 2017.Our club has traditionally worn a white home kit since inception.'),(5,'5','Spirits','TableTennis',8800,'https://alonedreamer.com/impetus/images/phoenix.png','https://alonedreamer.com/impetus/images/tabletennis.jpg','Spirits is a table tennis club in BCIT. Founded in 2018, our club members have won serveral trophies. We are open to new players, who want to join us to have fun in table tennis.'),(6,'6','Memers','Tennis',9000,'https://alonedreamer.com/impetus/images/V.png','https://alonedreamer.com/impetus/images/tennis.jpg','Memers is a tennis club in BCIT. Founded in 2017, our club members have won serveral trophies. We are open to new players, who want to join us to have fun in tennis.'),(7,'7','CatLadies','Volleyball',8700,'https://alonedreamer.com/impetus/images/cat-ladies.svg','https://alonedreamer.com/impetus/images/volleyball.jpg','The CatLadies club at BCIT provides instruction not only for those student and athletes who are competing for BCIT in intercollegiate competition, but also other students interested in instruction in and conditioning for volleyball.');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `hashed_password` varchar(200) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `birthday` varchar(100) DEFAULT NULL,
  `rank` varchar(100) DEFAULT NULL,
  `team` varchar(100) DEFAULT NULL,
  `score` varchar(100) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `sports` varchar(200) DEFAULT NULL,
  `signupdate` varchar(200) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'$2y$10$.dqtTbdRXGt9fQ9O2u6pIu4gvJmu4ItVaAkckPAHG2NNibxZXm/.m','Admin','Jimmy','Truong','1992-11-12','Master','DOTO','9999','https://alonedreamer.com/impetus/images/jimmy.jpg','This is Jimmy. I am the owner of Impetus.','[\"Esport\",\"Soccer\",\"Basketball\"]','February 1, 2019','hoangbao1992@gmail.com'),(2,'$2y$10$.dqtTbdRXGt9fQ9O2u6pIu4gvJmu4ItVaAkckPAHG2NNibxZXm/.m','Moderator','Jenny','Truong','1994-11-12','Master',NULL,'8000','https://alonedreamer.com/impetus/images/avatar2.png','My name is Jenny','[\"Esport\",\"Volleyball\"]','February 15, 2019','jenny@gmail.com'),(3,'$2y$10$.dqtTbdRXGt9fQ9O2u6pIu4gvJmu4ItVaAkckPAHG2NNibxZXm/.m','Moderator','John','Snow','1992-11-12','Master',NULL,'9999','https://alonedreamer.com/impetus/images/avatar1.png','My name is John','[\"Badminton\",\"Basketball\"]','February 15, 2019','johnny@gmail.com'),(4,'$2y$10$c4FRSBB5HBZUoJL1ZAZYwen/g6Z6KPWkgXgxfxvZJCtIL/223dVty','User','Henry','Leung',NULL,'Expert',NULL,NULL,'https://alonedreamer.com/impetus/images/place-holder-avatar.jpg',NULL,'[\"Badminton\",\"Soccer\"]','February 15, 2019','henry@bcit.ca'),(5,'$2y$10$9eWOnY1WJLGQqsRyPgSQLuKGYHO/3VOSrJ8sZTRNqFzQkzte8cvx6','User','Ariana','Grande',NULL,'Expert',NULL,NULL,'https://alonedreamer.com/impetus/images/place-holder-avatar.jpg',NULL,'[\"Basketball\",\"Volleyball\"]','February 18, 2019','ariana@gmail.com'),(6,'$2y$10$mBy3gLzIpl.RSMPW2FUiROl98DzJ57Xek0NkNC31zaeE/C/227Pii','User','Dallas','Hoang',NULL,'Sergeant',NULL,NULL,'https://alonedreamer.com/impetus/images/place-holder-avatar.jpg',NULL,'[\"Badminton\",\"Basketball\",\"Esport\",\"TableTennis\",\"Tennis\"]','March 4, 2019','dallashoang@gmail.com'),(7,'$2y$10$0SmwhoYLSnEXTLtv4k3NtuqaTCkjosOXvSPy2xc15g5N.2RAvI5Ie','User','Hanna','Nguyen',NULL,'Private',NULL,NULL,'https://alonedreamer.com/impetus/images/place-holder-avatar.jpg',NULL,'[\"Badminton\",\"Basketball\",\"Esport\"]','March 5, 2019','hanna@gmail.com'),(8,'$2y$10$VPCE2p7FL4vHGbJPYaHpB.xqmGpWgeQn3iKH0FqBIlUxn/Jnvqm4i','User','Cristiano','Ronaldo',NULL,'Sergeant',NULL,'8700','https://alonedreamer.com/impetus/images/place-holder-avatar.jpg',NULL,'[\"Soccer\"]','March 13, 2019','crist@gmail.com'),(9,'$2y$10$fEUXrCxLEgfVZP4VQiIrLO4ILRrmBy.sZpiAk4J1UbIseV1sn4KTO','User','James','Lo',NULL,'Private','DOTO','4000','https://alonedreamer.com/impetus/images/place-holder-avatar.jpg',NULL,'[\"Esport\",\"Soccer\"]','March 14, 2019','james@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_events`
--

DROP TABLE IF EXISTS `users_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_events` (
  `num_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`num_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_events`
--

LOCK TABLES `users_events` WRITE;
/*!40000 ALTER TABLE `users_events` DISABLE KEYS */;
INSERT INTO `users_events` VALUES (5,1,'1','2019-02-28 14:22:05','No'),(6,3,'1','2019-03-01 01:10:43','No'),(7,2,'2','2019-03-06 01:50:46','No'),(8,4,'2','2019-03-06 01:50:49','Yes'),(9,3,'2','2019-03-06 15:50:40','Yes'),(10,2,'1','2019-03-06 16:55:00','Yes'),(11,4,'9','2019-03-14 00:29:41','No');
/*!40000 ALTER TABLE `users_events` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-06  7:17:37
