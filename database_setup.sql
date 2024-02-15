CREATE DATABASE `project`;

CREATE TABLE `metadata` (
  `ID` int NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Parent` int DEFAULT NULL,
  `File` tinyint(1) NOT NULL,
  `Partitions` json DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `partition_1` (
  `ID` int NOT NULL,
  `Content` text(30000) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `partition_1_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `metadata` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `partition_2` (
  `ID` int NOT NULL,
  `Content` text(30000) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `partition_2_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `metadata` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `partition_3` (
  `ID` int NOT NULL,
  `Content` text(30000) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `partition_3_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `metadata` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET SQL_SAFE_UPDATES = 0;