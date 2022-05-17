use HeyBuddy;
select * from hybdMember;
select * from infrCodeGroup;
select * from infrCode;

CREATE TABLE IF NOT EXISTS `HeyBuddy`.`hybdMemberUploaded` (
  `seq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `typeCd` TINYINT NULL,
  `defaultNy` TINYINT NULL,
  `sort` VARCHAR(50) NULL,
  `originalFileName` VARCHAR(100) NULL,
  `uuidFileName` VARCHAR(100) NULL,
  `ext` VARCHAR(45) NULL,
  `pseq` INT NULL,
  `path` VARCHAR(100) NULL,
  `delNy` TINYINT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `HeyBuddy`.`hybdFileUploaded` (
  `seq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `typeCd` TINYINT NULL,
  `defaultNy` TINYINT NULL,
  `hybdfuSort` VARCHAR(50) NULL,
  `originalFileName` VARCHAR(100) NULL,
  `uuidFileName` VARCHAR(100) NULL,
  `ext` VARCHAR(45) NULL,
  `delNy` TINYINT NULL,
  `pseq` INT NULL,
  `path` VARCHAR(100) NULL,
  `hybdDelNy` TINYINT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;