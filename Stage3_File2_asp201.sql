USE it330mc_SP19_group6;

DELETE from viewing;
DELETE from tvShowCategory;
DELETE from watcher;
DELETE from categories;
DELETE from tvShows;

ALTER TABLE viewing AUTO_INCREMENT = 1;
ALTER TABLE watcher AUTO_INCREMENT = 1;
ALTER TABLE categories AUTO_INCREMENT = 1;
ALTER TABLE tvShows AUTO_INCREMENT = 1;

INSERT INTO `it330mc_SP19_group6`.`tvShows`
(`showName`,`status`,`startYear`,`company`,`IMDBrating`)
VALUES ('africa','completed','2013','bbc','8.9');

INSERT INTO `it330mc_SP19_group6`.`tvShows`
(`showName`,`status`,`startYear`,`company`,`IMDBrating`)
VALUES ('dexter','completed','2006','showtime','8.7');

INSERT INTO `it330mc_SP19_group6`.`tvShows`
(`showName`,`status`,`startYear`,`company`,`IMDBrating`)
VALUES ('family guy','ongoing','1999','fox','8.2');

INSERT INTO `it330mc_SP19_group6`.`tvShows`
(`showName`,`status`,`startYear`,`company`,`IMDBrating`)
VALUES ('game of thrones','ongoing','2011','hbo','9.6');

INSERT INTO `it330mc_SP19_group6`.`tvShows`
(`showName`,`status`,`startYear`,`company`,`IMDBrating`)
VALUES ('mr. robot','ongoing','2015','usa','8.5');

INSERT INTO `it330mc_SP19_group6`.`tvShows`
(`showName`,`status`,`startYear`,`company`,`IMDBrating`)
VALUES ('that 70s show','completed','1998','fox','8.1');

INSERT INTO `it330mc_SP19_group6`.`tvShows`
(`showName`,`status`,`startYear`,`company`,`IMDBrating`)
VALUES ('the big bang theory','ongoing','2007','cbs','8.2');

INSERT INTO `it330mc_SP19_group6`.`tvShows`
(`showName`,`status`,`startYear`,`company`,`IMDBrating`)
VALUES ('the office','completed','2005','nbc','8.8');

INSERT INTO `it330mc_SP19_group6`.`tvShows`
(`showName`,`status`,`startYear`,`company`,`IMDBrating`)
VALUES ('two and a half men','completed','2003','cbs','7.1');

INSERT INTO `it330mc_SP19_group6`.`categories`
(`categoryName`)
VALUES ('Action');

INSERT INTO `it330mc_SP19_group6`.`categories`
(`categoryName`)
VALUES ('Adventure');

INSERT INTO `it330mc_SP19_group6`.`categories`
(`categoryName`)
VALUES ('Animation');

INSERT INTO `it330mc_SP19_group6`.`categories`
(`categoryName`)
VALUES ('Comedy');

INSERT INTO `it330mc_SP19_group6`.`categories`
(`categoryName`)
VALUES ('Crime');

INSERT INTO `it330mc_SP19_group6`.`categories`
(`categoryName`)
VALUES('Documentary');

INSERT INTO `it330mc_SP19_group6`.`categories`
(`categoryName`)
VALUES ('Drama');

INSERT INTO `it330mc_SP19_group6`.`categories`
(`categoryName`)
VALUES ('Mystery');

INSERT INTO `it330mc_SP19_group6`.`categories`
(`categoryName`)
VALUES ('Romance');

INSERT INTO `it330mc_SP19_group6`.`categories`
(`categoryName`)
VALUES ('Thriller');

INSERT INTO `it330mc_SP19_group6`.`tvShowCategory`
(`categoryID`,`showID`)
VALUES ('6', '1');

INSERT INTO `it330mc_SP19_group6`.`tvShowCategory`
(`categoryID`,`showID`)
VALUES ('5', '2');

INSERT INTO `it330mc_SP19_group6`.`tvShowCategory`
(`categoryID`,`showID`)
VALUES ('7', '2');

INSERT INTO `it330mc_SP19_group6`.`tvShowCategory`
(`categoryID`,`showID`)
VALUES ('8', '2');

INSERT INTO `it330mc_SP19_group6`.`tvShowCategory`
(`categoryID`,`showID`)
VALUES ('3', '3');

INSERT INTO `it330mc_SP19_group6`.`tvShowCategory`
(`categoryID`,`showID`)
VALUES ('4', '3');

INSERT INTO `it330mc_SP19_group6`.`tvShowCategory`
(`categoryID`,`showID`)
VALUES ('1', '4');

INSERT INTO `it330mc_SP19_group6`.`tvShowCategory`
(`categoryID`,`showID`)
VALUES ('2', '4');

INSERT INTO `it330mc_SP19_group6`.`tvShowCategory`
(`categoryID`,`showID`)
VALUES ('7', '4');

INSERT INTO `it330mc_SP19_group6`.`tvShowCategory`
(`categoryID`,`showID`)
VALUES ('5', '5');

INSERT INTO `it330mc_SP19_group6`.`tvShowCategory`
(`categoryID`,`showID`)
VALUES ('7', '5');

INSERT INTO `it330mc_SP19_group6`.`tvShowCategory`
(`categoryID`,`showID`)
VALUES ('10', '5');

INSERT INTO `it330mc_SP19_group6`.`tvShowCategory`
(`categoryID`,`showID`)
VALUES ('4', '6');

INSERT INTO `it330mc_SP19_group6`.`tvShowCategory`
(`categoryID`,`showID`)
VALUES ('9', '6');

INSERT INTO `it330mc_SP19_group6`.`tvShowCategory`
(`categoryID`,`showID`)
VALUES('4', '7');

INSERT INTO `it330mc_SP19_group6`.`tvShowCategory`
(`categoryID`,`showID`)
VALUES ('9', '7');

INSERT INTO `it330mc_SP19_group6`.`tvShowCategory`
(`categoryID`,`showID`)
VALUES ('4', '8');

INSERT INTO `it330mc_SP19_group6`.`tvShowCategory`
(`categoryID`,`showID`)
VALUES ('4', '9');

INSERT INTO `it330mc_SP19_group6`.`tvShowCategory`
(`categoryID`,`showID`)
VALUES ('9', '9');

INSERT INTO `it330mc_SP19_group6`.`watcher`
(`firstName`,`lastName`)
VALUES ('muhammed', 'bursal');

INSERT INTO `it330mc_SP19_group6`.`watcher`
(`firstName`,`lastName`)
VALUES ('sunil', 'kotagiri');

INSERT INTO `it330mc_SP19_group6`.`watcher`
(`firstName`,`lastName`)
VALUES ('leslie', 'mujica');

INSERT INTO `it330mc_SP19_group6`.`watcher`
(`firstName`,`lastName`)
VALUES ('amogh', 'prabhu');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('4', '1', '7', '1','2019-04-14 07:00:00','8');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('4', '1', '7', '2','2019-04-14 08:00:00','8');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('4', '1', '7', '3','2019-04-14 09:30:00','8');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('4', '1', '7', '4','2019-04-15 04:00:00','8');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('4', '1', '7', '5','2019-04-15 05:00:00','8');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('4', '1', '7', '6','2019-04-15 06:00:00','8');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('4', '1', '7', '7','2019-04-15 07:30:00','8');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('4', '1', '8', '1','2019-04-16 04:00:00','8');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('4', '1', '8', '2','2019-04-23 06:00:00','8');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('4', '1', '8', '3','2019-04-29 12:30:00','8');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('5', '2', '1', '1','2019-04-22 07:00:00','10');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('5', '2', '1', '2','2019-04-22 08:00:00','8');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('5', '2', '1', '3','2019-04-24 09:00:00','9');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('5', '2', '1', '4','2019-04-24 09:30:00','8');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('5', '2', '1', '5','2019-04-26 10:00:00','9');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('5', '2', '1', '6','2019-04-26 10:30:00','7');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('4', '2', '8', '1','2019-04-14 09:00:00','7');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('4', '2', '8', '2','2019-04-21 09:00:00','8');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('4', '2', '8', '3','2019-04-28 09:00:00','10');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('8', '2', '5', '6','2019-04-27 06:30:00','5');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('8', '3', '2', '13','2019-04-15 09:15:00','5');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('8', '3', '3', '19','2019-04-15 09:40:00','10');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('1', '3', '1', '1','2019-04-15 11:20:00','8');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('2', '3', '7', '1','2019-04-17 05:10:00','8');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('2', '3', '7', '2','2019-04-17 10:30:00','2');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('2', '3', '7', '3','2019-04-17 11:25:00','5');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('6', '3', '5', '4','2019-04-18 10:00:00','7');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('6', '3', '5', '5','2019-04-19 10:30:00','7');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('6', '3', '5', '6','2019-04-19 02:15:00','3');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('8', '3', '3', '20','2019-04-27 04:30:00','8');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('3', '4', '2', '9','2019-04-24 06:00:00','9');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('3', '4', '2', '10','2019-04-24 06:30:00','9');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('3', '4', '16', '4','2019-04-24 07:00:00','9');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('3', '4', '16', '5','2019-04-24 07:30:00','9');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('7', '4', '6', '3','2019-04-24 11:00:00','8');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('7', '4', '11', '22','2019-04-24 11:30:00','8');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('9', '4', '9', '22','2019-04-25 02:00:00','9');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('9', '4', '9', '23','2019-04-25 02:30:00','9');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('9', '4', '9', '24','2019-04-25 03:00:00','9');

INSERT INTO `it330mc_SP19_group6`.`viewing`
(`showID`,`watcherID`,`season`,`episode`,`date`,`rating`)
VALUES ('9', '4', '10', '1','2019-04-25 03:30:00','9');