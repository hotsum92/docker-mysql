DROP DATABASE IF EXISTS test;
CREATE DATABASE test;

CREATE TABLE `test`.`t3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tcol01` tinyint(4) DEFAULT NULL,
  `tcol02` smallint(6) DEFAULT NULL,
  `tcol03` mediumint(9) DEFAULT NULL,
  `tcol04` int(11) DEFAULT NULL,
  `tcol05` bigint(20) DEFAULT NULL,
  `tcol06` float DEFAULT NULL,
  `tcol07` double DEFAULT NULL,
  `tcol08` decimal(10,2) DEFAULT NULL,
  `tcol09` date DEFAULT NULL,
  `tcol10` datetime DEFAULT NULL,
  `tcol11` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tcol12` time DEFAULT NULL,
  `tcol13` year(4) DEFAULT NULL,
  `tcol14` varchar(100) DEFAULT NULL,
  `tcol15` char(2) DEFAULT NULL,
  `tcol16` blob,
  `tcol17` text,
  `tcol18` mediumtext,
  `tcol19` mediumblob,
  `tcol20` longblob,
  `tcol21` longtext,
  `tcol22` mediumtext,
  `tcol23` varchar(3) DEFAULT NULL,
  `tcol24` varbinary(10) DEFAULT NULL,
  `tcol25` enum('a','b','c') DEFAULT NULL,
  `tcol26` set('red','green','blue') DEFAULT NULL,
  `tcol27` float(5,3) DEFAULT NULL,
  `tcol28` double(4,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;
