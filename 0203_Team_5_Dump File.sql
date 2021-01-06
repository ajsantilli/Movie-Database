CREATE DATABASE  IF NOT EXISTS `moviesdb2` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `moviesdb2`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: moviesdb2
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `actor_id` int NOT NULL AUTO_INCREMENT,
  `actor_name` varchar(45) NOT NULL,
  `actor_fb_likes` int DEFAULT NULL,
  PRIMARY KEY (`actor_id`),
  UNIQUE KEY `actor_id_UNIQUE` (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='			';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Sam Worthington',1000),(2,'Johnny Depp',40000),(3,'Christoph Waltz',11000),(4,'Tom Hardy',27000),(5,'Daryl Sabara',640),(6,'J.K. Simmons',24000),(7,'Brad Garrett',799),(8,'Chris Hemsworth',26000),(9,'Alan Rickman',25000),(10,'Henry Cavill',15000),(11,'Kevin Spacey',18000),(12,'Giancarlo Giannini',451),(13,'Henry Cavill',15000),(14,'Peter Dinklage',22000),(15,'Will Smith',10000),(16,'Emma Stone',15000),(17,'Mark Addy',891),(18,'Aidan Turner',5000),(19,'Christopher Lee',16000),(20,'Leonardo DiCaprio',29000),(21,'Liam Neeson',14000),(22,'Bryce Dallas Howard',3000),(23,'Albert Finney',883),(24,'Robert Downey Jr.',21000),(25,'Steve Buscemi',12000),(26,'Glenn Morshower',894),(27,'Bingbing Li',974);
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `avg_film_budget_by_actor`
--

DROP TABLE IF EXISTS `avg_film_budget_by_actor`;
/*!50001 DROP VIEW IF EXISTS `avg_film_budget_by_actor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_film_budget_by_actor` AS SELECT 
 1 AS `Actor Name`,
 1 AS `Average Budget for Films Featuring this Actor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `budget_vs_gross`
--

DROP TABLE IF EXISTS `budget_vs_gross`;
/*!50001 DROP VIEW IF EXISTS `budget_vs_gross`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `budget_vs_gross` AS SELECT 
 1 AS `Film Title`,
 1 AS `Film Budget`,
 1 AS `Film Gross Earnings`,
 1 AS `Budget Vs. Gross Earnings Ratio`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `content_rating`
--

DROP TABLE IF EXISTS `content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content_rating` (
  `content_rating_id` int NOT NULL AUTO_INCREMENT,
  `content_rating` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`content_rating_id`),
  UNIQUE KEY `content_rating_id_UNIQUE` (`content_rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_rating`
--

LOCK TABLES `content_rating` WRITE;
/*!40000 ALTER TABLE `content_rating` DISABLE KEYS */;
INSERT INTO `content_rating` VALUES (1,'G'),(2,'PG'),(3,'PG-13'),(4,'R'),(5,'NC-17');
/*!40000 ALTER TABLE `content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `director_id` int NOT NULL AUTO_INCREMENT,
  `director_name` varchar(45) NOT NULL,
  `director_fb_likes` int DEFAULT NULL,
  PRIMARY KEY (`director_id`),
  UNIQUE KEY `director_id_UNIQUE` (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'James Cameron',0),(2,'Gore Verbinski',563),(3,'Sam Mendes',0),(4,'Christopher Nolan',22000),(5,'Andrew Stanton',475),(6,'Sam Raimi',0),(7,'Nathan Greno',15),(8,'Joss Whedon',0),(9,'David Yates',282),(10,'Zack Snyder',0),(11,'Bryan Singer',0),(12,'Marc Forster',395),(13,'Andrew Adamson',80),(14,'Rob Marshall',252),(15,'Barry Sonnenfeld',188),(16,'Marc Webb',464),(17,'Ridley Scott',0),(18,'Peter Jackson',0),(19,'Chris Weitz',129),(20,'Anthony Russo',94),(21,'Peter Berg',532),(22,'Colin Trevorrow',365),(23,'Shane Black',1000),(24,'Tim Burton',13000),(25,'Dan Scanlon',37),(26,'Michael Bay',0);
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance`
--

DROP TABLE IF EXISTS `finance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finance` (
  `finance_id` int NOT NULL,
  `budget` int DEFAULT NULL,
  `gross_earnings` int DEFAULT NULL,
  `movie_id` int NOT NULL,
  PRIMARY KEY (`finance_id`),
  KEY `fk_finance_movie1_idx` (`movie_id`),
  CONSTRAINT `fk_finance_movie1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance`
--

LOCK TABLES `finance` WRITE;
/*!40000 ALTER TABLE `finance` DISABLE KEYS */;
INSERT INTO `finance` VALUES (1,237000000,760505847,1),(2,300000000,309404152,2),(3,245000000,200074175,3),(4,250000000,448130642,4),(5,264000000,73058679,5),(6,258000000,336530303,6),(7,260000000,200807262,7),(8,250000000,458991599,8),(9,250000000,301956980,9),(10,250000000,330249062,10),(11,209000000,200069408,11),(12,200000000,168368427,12),(13,225000000,423032628,13),(14,215000000,89289910,14),(15,225000000,291021565,15),(16,225000000,141614023,16),(17,220000000,623279547,17),(18,250000000,241063875,18),(19,225000000,179020854,19),(20,230000000,262030663,20),(21,200000000,105219735,21),(22,225000000,258355354,22),(23,180000000,70083519,23),(24,200000000,658672302,24),(25,250000000,407197282,25),(26,209000000,65173160,26),(27,150000000,652177271,27),(28,200000000,304360277,28),(29,200000000,373377893,29),(30,200000000,408992272,30),(31,200000000,334185206,31),(32,200000000,268488329,32),(33,200000000,402076689,33),(34,210000000,245428137,34);
/*!40000 ALTER TABLE `finance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `genre_id` int NOT NULL,
  `genre_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Action'),(2,'Fantasy'),(3,'Thriller'),(4,'Sci-Fi'),(5,'Comedy'),(6,'Mystery'),(7,'Revenge'),(8,'Western'),(9,'Drama'),(10,'Adventure');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `imdb_score_by_director`
--

DROP TABLE IF EXISTS `imdb_score_by_director`;
/*!50001 DROP VIEW IF EXISTS `imdb_score_by_director`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `imdb_score_by_director` AS SELECT 
 1 AS `Director`,
 1 AS `Average IMDB Score`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(45) NOT NULL,
  `duration` int DEFAULT NULL,
  `title_year` int DEFAULT NULL,
  `director_id` int NOT NULL,
  PRIMARY KEY (`movie_id`),
  UNIQUE KEY `movie_id_UNIQUE` (`movie_id`),
  KEY `director_id_fk_idx` (`director_id`),
  CONSTRAINT `director_id_fk` FOREIGN KEY (`director_id`) REFERENCES `director` (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'Avatar',178,2009,1),(2,'Pirates of the Caribbean: At World\'s End',169,2007,2),(3,'Spectre',148,2015,3),(4,'The Dark Knight Rises',164,2012,4),(5,'John Carter',132,2012,5),(6,'Spider-Man 3',156,2007,6),(7,'Tangled',100,2010,7),(8,'Avengers: Age of Ultron',141,2015,8),(9,'Harry Potter and the Half-Blood Prince',153,2009,9),(10,'Batman v Superman: Dawn of Justice',183,2016,10),(11,'Superman Returns',169,2006,11),(12,'Quantum of Solace',106,2008,12),(13,'Pirates of the Caribbean: Dead Man\'s Chest',151,2006,2),(14,'The Lone Ranger',150,2013,2),(15,'Man of Steel',143,2013,10),(16,'The Chronicles of Narnia: Prince Caspian',150,2008,13),(17,'The Avengers',173,2012,8),(18,'Pirates of the Caribbean: On Stranger Tides',136,2011,14),(19,'Men in Black 3',106,2012,15),(20,'The Amazing Spider-Man',153,2012,16),(21,'Robin Hood',156,2010,17),(22,'The Hobbit: The Desolation of Smaug',186,2013,18),(23,'The Golden Compass',113,2007,19),(24,'Titanic',194,2000,1),(25,'Captain America: Civil War',147,2016,20),(26,'Battleship',131,2012,21),(27,'Jurassic World',124,2015,22),(28,'Skyfall',143,2012,3),(29,'Spider-Man 2',135,2004,6),(30,'Iron Man 3',195,2013,23),(31,'Alice in Wonderland',108,2010,24),(32,'Monsters University',104,2013,25),(33,'Transformers: Revenge of the Fallen',150,2009,26),(34,'Transformers: Age of Extinction',165,2014,26);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_actors`
--

DROP TABLE IF EXISTS `movie_actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_actors` (
  `movie_id` int NOT NULL,
  `actor_id` int NOT NULL,
  PRIMARY KEY (`movie_id`,`actor_id`),
  KEY `fk_movie_has_actor_actor1_idx` (`actor_id`),
  KEY `fk_movie_has_actor_movie1_idx` (`movie_id`),
  CONSTRAINT `fk_movie_has_actor_actor1` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`),
  CONSTRAINT `fk_movie_has_actor_movie1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_actors`
--

LOCK TABLES `movie_actors` WRITE;
/*!40000 ALTER TABLE `movie_actors` DISABLE KEYS */;
INSERT INTO `movie_actors` VALUES (1,1),(2,2),(13,2),(14,2),(18,2),(31,2),(3,3),(4,4),(5,5),(6,6),(29,6),(7,7),(8,8),(17,8),(9,9),(10,10),(11,11),(12,12),(15,13),(16,14),(19,15),(20,16),(21,17),(22,18),(23,19),(24,20),(26,21),(27,22),(28,23),(25,24),(30,24),(32,25),(33,26),(34,27);
/*!40000 ALTER TABLE `movie_actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_genres`
--

DROP TABLE IF EXISTS `movie_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_genres` (
  `movie_id` int NOT NULL,
  `genre_id` int NOT NULL,
  PRIMARY KEY (`movie_id`,`genre_id`),
  KEY `fk_movie_has_genres_genres1_idx` (`genre_id`),
  KEY `fk_movie_has_genres_movie1_idx` (`movie_id`),
  CONSTRAINT `fk_movie_has_genres_genres1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`),
  CONSTRAINT `fk_movie_has_genres_movie1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genres`
--

LOCK TABLES `movie_genres` WRITE;
/*!40000 ALTER TABLE `movie_genres` DISABLE KEYS */;
INSERT INTO `movie_genres` VALUES (1,1),(3,1),(6,1),(10,1),(11,1),(15,1),(19,1),(25,1),(28,1),(2,2),(13,2),(16,2),(18,2),(22,2),(31,2),(4,3),(26,3),(5,4),(8,4),(17,4),(27,4),(30,4),(33,4),(34,4),(7,5),(32,5),(9,6),(12,7),(14,8),(21,9),(24,9),(20,10),(23,10),(29,10);
/*!40000 ALTER TABLE `movie_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `pg_13_films_by_actor`
--

DROP TABLE IF EXISTS `pg_13_films_by_actor`;
/*!50001 DROP VIEW IF EXISTS `pg_13_films_by_actor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pg_13_films_by_actor` AS SELECT 
 1 AS `Film`,
 1 AS `Actor`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `rating_id` int NOT NULL,
  `critic_reviews` int DEFAULT NULL,
  `user_reviews` int DEFAULT NULL,
  `imdb_votes` int DEFAULT NULL,
  `imdb_score` decimal(10,1) DEFAULT NULL,
  `content_rating_id` int DEFAULT NULL,
  `movie_id` int NOT NULL,
  PRIMARY KEY (`rating_id`),
  KEY `content_rating_id_fk_idx` (`content_rating_id`),
  KEY `fk_ratings_movie1_idx` (`movie_id`),
  CONSTRAINT `content_rating_id_fk` FOREIGN KEY (`content_rating_id`) REFERENCES `content_rating` (`content_rating_id`),
  CONSTRAINT `fk_ratings_movie1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,723,3054,886204,7.9,3,1),(2,302,1238,471220,7.1,3,2),(3,602,994,275868,6.8,3,3),(4,813,2701,1144337,8.5,3,4),(5,462,738,212204,6.6,3,5),(6,392,1902,383056,6.2,3,6),(7,324,387,294810,7.8,2,7),(8,635,1117,462669,7.5,3,8),(9,375,973,321795,7.5,2,9),(10,673,3018,371639,6.9,3,10),(11,434,2367,240396,6.1,3,11),(12,403,1243,330784,6.7,3,12),(13,313,1832,522040,7.3,3,13),(14,450,711,181792,6.5,3,14),(15,733,2536,548573,7.2,3,15),(16,258,438,149922,6.6,2,16),(17,703,1722,995415,8.1,3,17),(18,448,484,370704,6.7,3,18),(19,451,341,268154,6.8,3,19),(20,599,1225,451803,7.0,3,20),(21,343,546,211765,6.7,3,21),(22,509,951,483540,7.9,3,22),(23,251,666,149019,6.1,3,23),(24,315,2528,793059,7.7,3,24),(25,516,1022,272670,8.2,3,25),(26,377,751,202382,5.9,3,26),(27,644,1290,418214,7.0,3,27),(28,750,1498,522030,7.8,3,28),(29,300,1303,411164,7.3,3,29),(30,608,1187,557489,7.2,3,30),(31,451,736,306320,6.5,2,31),(32,376,265,235025,7.3,1,32),(33,366,1439,323207,6.0,3,33),(34,378,918,242420,5.7,3,34);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `reviews_ratio`
--

DROP TABLE IF EXISTS `reviews_ratio`;
/*!50001 DROP VIEW IF EXISTS `reviews_ratio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reviews_ratio` AS SELECT 
 1 AS `Film Title`,
 1 AS `User Reviews`,
 1 AS `Critic Reviews`,
 1 AS `Review Ratio`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'moviesdb2'
--

--
-- Final view structure for view `avg_film_budget_by_actor`
--

/*!50001 DROP VIEW IF EXISTS `avg_film_budget_by_actor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_film_budget_by_actor` AS select `a`.`actor_name` AS `Actor Name`,concat('$',convert(format(avg(`f`.`budget`),2) using utf8mb4)) AS `Average Budget for Films Featuring this Actor` from ((`actor` `a` join `movie_actors` on((`a`.`actor_id` = `movie_actors`.`actor_id`))) join `finance` `f` on((`movie_actors`.`movie_id` = `f`.`movie_id`))) group by `a`.`actor_name` having (sum(`f`.`budget`) > 220000000) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `budget_vs_gross`
--

/*!50001 DROP VIEW IF EXISTS `budget_vs_gross`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `budget_vs_gross` AS select `m`.`movie_name` AS `Film Title`,concat('$',convert(format(`f`.`budget`,2) using utf8mb4)) AS `Film Budget`,concat('$',convert(format(`f`.`gross_earnings`,2) using utf8mb4)) AS `Film Gross Earnings`,round((`f`.`gross_earnings` / `f`.`budget`),2) AS `Budget Vs. Gross Earnings Ratio` from (`movie` `m` join `finance` `f` on((`m`.`movie_id` = `f`.`movie_id`))) order by `f`.`budget` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `imdb_score_by_director`
--

/*!50001 DROP VIEW IF EXISTS `imdb_score_by_director`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `imdb_score_by_director` AS select `d`.`director_name` AS `Director`,avg(`ratings`.`imdb_score`) AS `Average IMDB Score` from ((`director` `d` join `movie` `m` on((`d`.`director_id` = `m`.`director_id`))) join `ratings` on((`m`.`movie_id` = `ratings`.`movie_id`))) group by `d`.`director_id` order by `Average IMDB Score` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pg_13_films_by_actor`
--

/*!50001 DROP VIEW IF EXISTS `pg_13_films_by_actor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pg_13_films_by_actor` AS select `m`.`movie_name` AS `Film`,`a`.`actor_name` AS `Actor` from ((`movie` `m` join `movie_actors` on((`m`.`movie_id` = `movie_actors`.`movie_id`))) join `actor` `a` on((`movie_actors`.`actor_id` = `a`.`actor_id`))) where `m`.`movie_id` in (select `movie`.`movie_id` from ((`movie` join `ratings` on((`movie`.`movie_id` = `ratings`.`movie_id`))) join `content_rating` `cr` on((`ratings`.`content_rating_id` = `cr`.`content_rating_id`))) where (`cr`.`content_rating` = 'PG-13')) order by `m`.`movie_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reviews_ratio`
--

/*!50001 DROP VIEW IF EXISTS `reviews_ratio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reviews_ratio` AS select `m`.`movie_name` AS `Film Title`,`r`.`user_reviews` AS `User Reviews`,`r`.`critic_reviews` AS `Critic Reviews`,round((`r`.`user_reviews` / `r`.`critic_reviews`),2) AS `Review Ratio` from (`movie` `m` join `ratings` `r` on((`m`.`movie_id` = `r`.`movie_id`))) having (`Review Ratio` >= 3) order by `m`.`movie_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-14 19:17:34
