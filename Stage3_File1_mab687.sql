USE it330mc_SP19_group6;

DROP TABLE IF EXISTS `viewing`;
DROP TABLE IF EXISTS `watcher`;
DROP TABLE IF EXISTS `tvShowCategory`;
DROP TABLE IF EXISTS `categories`;
DROP TABLE IF EXISTS `tvShows`;

CREATE TABLE `tvShows` (
  `showID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `showName` VARCHAR(45),
  `status` VARCHAR(10),
  `startYear` YEAR,
  `company` VARCHAR(45),
  `IMDBrating` FLOAT(3,1),
  `lastUpdate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`showID`)
) ENGINE=INNODB DEFAULT CHARSET=UTF8;

CREATE TABLE `categories` (
  `categoryID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `categoryName` VARCHAR(20),
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`categoryID`)
) ENGINE=INNODB DEFAULT CHARSET=UTF8;

CREATE TABLE `tvShowCategory` (
  `categoryID` INT UNSIGNED NOT NULL,
  `showID` INT UNSIGNED NOT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  CONSTRAINT `fk_tvShowCategory_categories` FOREIGN KEY (`categoryID`) REFERENCES `categories` (`categoryID`),
  CONSTRAINT `fk_tvShowCategory_tvShows` FOREIGN KEY (`showID`) REFERENCES `tvShows` (`showID`)
) ENGINE=INNODB DEFAULT CHARSET=UTF8;

CREATE TABLE `watcher` (
  `watcherID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(45),
  `lastName` VARCHAR(45),
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`watcherID`)
) ENGINE=INNODB DEFAULT CHARSET=UTF8;

CREATE TABLE `viewing` (
  `viewID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `showID` INT UNSIGNED,
  `watcherID` INT UNSIGNED,
  `season` INT UNSIGNED,
  `episode` INT UNSIGNED,
  `date` DATETIME,
  `rating` FLOAT(3,1) UNSIGNED,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`viewID`),
  CONSTRAINT `fk_viewing_tvShows` FOREIGN KEY (`showID`) REFERENCES `tvShows` (`showID`),
  CONSTRAINT `fk_viewing_watcher` FOREIGN KEY (`watcherID`) REFERENCES `watcher` (`watcherID`)
) ENGINE=INNODB DEFAULT CHARSET=UTF8;