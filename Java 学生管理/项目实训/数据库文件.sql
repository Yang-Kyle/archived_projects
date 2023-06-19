-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.28 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 database_of_ultra_card 的数据库结构
CREATE DATABASE IF NOT EXISTS `database_of_ultra_card` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `database_of_ultra_card`;

-- 导出  表 database_of_ultra_card.buslog 结构
CREATE TABLE IF NOT EXISTS `buslog` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Time` datetime DEFAULT NULL,
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `OpType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  database_of_ultra_card.buslog 的数据：~3 rows (大约)
REPLACE INTO `buslog` (`ID`, `Time`, `CreateTime`, `UpdateTime`, `OpType`) VALUES
	(1, '2022-09-20 21:14:04', '2022-09-20 13:14:04', '2022-09-20 13:14:04', 'Delete'),
	(2, '2022-09-20 21:18:01', '2022-09-20 13:18:01', '2022-09-20 13:18:01', 'Update'),
	(3, '2022-09-20 21:18:08', '2022-09-20 13:18:08', '2022-09-20 13:18:08', 'Update');

-- 导出  表 database_of_ultra_card.busm 结构
CREATE TABLE IF NOT EXISTS `busm` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `num` int DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `time` int DEFAULT NULL,
  `tel` int DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `balance` double(10,2) DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='busM Table structure may be changed later.';

-- 正在导出表  database_of_ultra_card.busm 的数据：~1 rows (大约)
REPLACE INTO `busm` (`ID`, `password`, `name`, `num`, `brand`, `time`, `tel`, `email`, `balance`) VALUES
	(2, NULL, 'Laoganma', NULL, NULL, NULL, NULL, NULL, 0.00);

-- 导出  表 database_of_ultra_card.rootlog 结构
CREATE TABLE IF NOT EXISTS `rootlog` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Time` datetime DEFAULT NULL,
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `OpType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  database_of_ultra_card.rootlog 的数据：~0 rows (大约)
REPLACE INTO `rootlog` (`ID`, `Time`, `CreateTime`, `UpdateTime`, `OpType`) VALUES
	(1, '2022-09-20 21:11:34', '2022-09-20 13:11:34', '2022-09-20 13:11:34', 'Insert');

-- 导出  表 database_of_ultra_card.rootm 结构
CREATE TABLE IF NOT EXISTS `rootm` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  database_of_ultra_card.rootm 的数据：~1 rows (大约)
REPLACE INTO `rootm` (`ID`, `password`, `name`) VALUES
	(5, 'root', 'UNDEFINED');

-- 导出  表 database_of_ultra_card.stulog 结构
CREATE TABLE IF NOT EXISTS `stulog` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Time` datetime DEFAULT NULL,
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `OpType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  database_of_ultra_card.stulog 的数据：~0 rows (大约)
REPLACE INTO `stulog` (`ID`, `Time`, `CreateTime`, `UpdateTime`, `OpType`) VALUES
	(1, '2022-09-20 21:13:23', '2022-09-20 13:13:23', '2022-09-20 13:13:23', 'Update'),
	(2, '2022-09-20 21:13:36', '2022-09-20 13:13:36', '2022-09-20 13:13:36', 'Update'),
	(3, '2022-09-20 21:15:26', '2022-09-20 13:15:26', '2022-09-20 13:15:26', 'Delete');

-- 导出  表 database_of_ultra_card.stum 结构
CREATE TABLE IF NOT EXISTS `stum` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `num` int DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `tel` int DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `balance` double(10,2) DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='stuM Table structure may be changed later.';

-- 正在导出表  database_of_ultra_card.stum 的数据：~0 rows (大约)
REPLACE INTO `stum` (`ID`, `password`, `name`, `num`, `sex`, `age`, `tel`, `email`, `balance`) VALUES
	(2, NULL, 'Doge', NULL, NULL, NULL, NULL, NULL, 0.00);

-- 导出  视图 database_of_ultra_card.si_r 结构
-- 创建临时表以解决视图依赖性错误
CREATE TABLE `si_r` (
	`ID` INT(10) NOT NULL,
	`password` VARCHAR(100) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`name` VARCHAR(100) NULL COLLATE 'utf8mb4_0900_ai_ci'
) ENGINE=MyISAM;

-- 导出  视图 database_of_ultra_card.si_rn 结构
-- 创建临时表以解决视图依赖性错误
CREATE TABLE `si_rn` (
	`name` VARCHAR(100) NULL COLLATE 'utf8mb4_0900_ai_ci'
) ENGINE=MyISAM;

-- 导出  视图 database_of_ultra_card.sl_b 结构
-- 创建临时表以解决视图依赖性错误
CREATE TABLE `sl_b` (
	`ID` INT(10) NOT NULL,
	`password` VARCHAR(100) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`name` VARCHAR(100) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`num` INT(10) NULL,
	`brand` VARCHAR(100) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`time` INT(10) NULL,
	`tel` INT(10) NULL,
	`email` VARCHAR(50) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`balance` DOUBLE(10,2) NULL
) ENGINE=MyISAM;

-- 导出  视图 database_of_ultra_card.sl_bb 结构
-- 创建临时表以解决视图依赖性错误
CREATE TABLE `sl_bb` (
	`balance` DOUBLE(10,2) NULL
) ENGINE=MyISAM;

-- 导出  视图 database_of_ultra_card.sl_bp 结构
-- 创建临时表以解决视图依赖性错误
CREATE TABLE `sl_bp` (
	`password` VARCHAR(100) NULL COLLATE 'utf8mb4_0900_ai_ci'
) ENGINE=MyISAM;

-- 导出  视图 database_of_ultra_card.sl_b_t 结构
-- 创建临时表以解决视图依赖性错误
CREATE TABLE `sl_b_t` (
	`ID` INT(10) NOT NULL,
	`password` VARCHAR(100) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`name` VARCHAR(100) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`num` INT(10) NULL,
	`brand` VARCHAR(100) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`time` INT(10) NULL,
	`tel` INT(10) NULL,
	`email` VARCHAR(50) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`balance` DOUBLE(10,2) NULL
) ENGINE=MyISAM;

-- 导出  视图 database_of_ultra_card.sl_s 结构
-- 创建临时表以解决视图依赖性错误
CREATE TABLE `sl_s` (
	`ID` INT(10) NOT NULL,
	`password` VARCHAR(100) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`name` VARCHAR(100) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`num` INT(10) NULL,
	`sex` CHAR(1) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`age` INT(10) NULL,
	`tel` INT(10) NULL,
	`email` VARCHAR(50) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`balance` DOUBLE(10,2) NULL
) ENGINE=MyISAM;

-- 导出  视图 database_of_ultra_card.sl_sb 结构
-- 创建临时表以解决视图依赖性错误
CREATE TABLE `sl_sb` (
	`balance` DOUBLE(10,2) NULL
) ENGINE=MyISAM;

-- 导出  视图 database_of_ultra_card.sl_sp 结构
-- 创建临时表以解决视图依赖性错误
CREATE TABLE `sl_sp` (
	`password` VARCHAR(100) NULL COLLATE 'utf8mb4_0900_ai_ci'
) ENGINE=MyISAM;

-- 导出  存储过程 database_of_ultra_card.rootM_insert 结构
DELIMITER //
CREATE PROCEDURE `rootM_insert`()
BEGIN
INSERT INTO rootM (password,name) VALUES ("root","UNDEFINED");
END//
DELIMITER ;

-- 导出  触发器 database_of_ultra_card.busM_before_delete 结构
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `busM_before_delete` BEFORE DELETE ON `busm` FOR EACH ROW BEGIN
INSERT INTO busLog (time,OpType) VALUES (NOW(),"Delete");
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- 导出  触发器 database_of_ultra_card.busM_before_update 结构
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `busM_before_update` BEFORE UPDATE ON `busm` FOR EACH ROW BEGIN
 INSERT INTO busLog (time,OpType) VALUES (NOW(),"Update");
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- 导出  触发器 database_of_ultra_card.rootM_after_insert 结构
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `rootM_after_insert` AFTER INSERT ON `rootm` FOR EACH ROW BEGIN
INSERT INTO rootLog (time,OpType) VALUES (NOW(),"Insert");
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- 导出  触发器 database_of_ultra_card.stuM_before_delete 结构
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `stuM_before_delete` BEFORE DELETE ON `stum` FOR EACH ROW BEGIN
INSERT INTO stuLog (time,OpType) VALUES (NOW(),"Delete");
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- 导出  触发器 database_of_ultra_card.stuM_before_update 结构
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `stuM_before_update` BEFORE UPDATE ON `stum` FOR EACH ROW BEGIN
 INSERT INTO stuLog (time,OpType) VALUES (NOW(),"Update");
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- 导出  视图 database_of_ultra_card.si_r 结构
-- 移除临时表并创建最终视图结构
DROP TABLE IF EXISTS `si_r`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `si_r` AS select distinct `rootm`.`ID` AS `ID`,`rootm`.`password` AS `password`,`rootm`.`name` AS `name` from `rootm`;

-- 导出  视图 database_of_ultra_card.si_rn 结构
-- 移除临时表并创建最终视图结构
DROP TABLE IF EXISTS `si_rn`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `si_rn` AS select `rootm`.`name` AS `name` from `rootm`;

-- 导出  视图 database_of_ultra_card.sl_b 结构
-- 移除临时表并创建最终视图结构
DROP TABLE IF EXISTS `sl_b`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `sl_b` AS select `busm`.`ID` AS `ID`,`busm`.`password` AS `password`,`busm`.`name` AS `name`,`busm`.`num` AS `num`,`busm`.`brand` AS `brand`,`busm`.`time` AS `time`,`busm`.`tel` AS `tel`,`busm`.`email` AS `email`,`busm`.`balance` AS `balance` from `busm`;

-- 导出  视图 database_of_ultra_card.sl_bb 结构
-- 移除临时表并创建最终视图结构
DROP TABLE IF EXISTS `sl_bb`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `sl_bb` AS select `busm`.`balance` AS `balance` from `busm`;

-- 导出  视图 database_of_ultra_card.sl_bp 结构
-- 移除临时表并创建最终视图结构
DROP TABLE IF EXISTS `sl_bp`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `sl_bp` AS select `busm`.`password` AS `password` from `busm`;

-- 导出  视图 database_of_ultra_card.sl_b_t 结构
-- 移除临时表并创建最终视图结构
DROP TABLE IF EXISTS `sl_b_t`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `sl_b_t` AS select `busm`.`ID` AS `ID`,`busm`.`password` AS `password`,`busm`.`name` AS `name`,`busm`.`num` AS `num`,`busm`.`brand` AS `brand`,`busm`.`time` AS `time`,`busm`.`tel` AS `tel`,`busm`.`email` AS `email`,`busm`.`balance` AS `balance` from `busm` order by `busm`.`time` desc;

-- 导出  视图 database_of_ultra_card.sl_s 结构
-- 移除临时表并创建最终视图结构
DROP TABLE IF EXISTS `sl_s`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `sl_s` AS select `stum`.`ID` AS `ID`,`stum`.`password` AS `password`,`stum`.`name` AS `name`,`stum`.`num` AS `num`,`stum`.`sex` AS `sex`,`stum`.`age` AS `age`,`stum`.`tel` AS `tel`,`stum`.`email` AS `email`,`stum`.`balance` AS `balance` from `stum`;

-- 导出  视图 database_of_ultra_card.sl_sb 结构
-- 移除临时表并创建最终视图结构
DROP TABLE IF EXISTS `sl_sb`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `sl_sb` AS select `busm`.`balance` AS `balance` from `busm`;

-- 导出  视图 database_of_ultra_card.sl_sp 结构
-- 移除临时表并创建最终视图结构
DROP TABLE IF EXISTS `sl_sp`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `sl_sp` AS select `busm`.`password` AS `password` from `busm`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
