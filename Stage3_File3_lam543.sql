USE it330mc_SP19_group6;

--  Generate SQL to "Add a TV Show Category".  Provide example data.
-- The added category is testCategory
insert into `it330mc_SP19_group6`.`categories` 
	(`categoryName`)
Values('testCategory'); 

-- Generate SQL to "Delete a TV Show Category".  Provide example data.
-- The deleted category is ratsBooty
delete from `it330mc_SP19_group6`.`categories`
where (`categoryName` = 'testCategory');

-- Generate SQL to "Add A TV Show".  Provide example data.
-- The added TV show is Criminal Minds. 
insert into `it330mc_SP19_group6`.`tvShows` 
	(`showName`,`status`,`startYear`,`company`,`IMDBrating`)
Values ('Criminal Minds','ongoing','2005','CBS','8.1');

-- Generate SQL to "Delete A TV Show".  Provide example data.
-- The deleted show is Criminal Minds. 
delete from `it330mc_SP19_group6`.`tvShows` 
where (`showName` = 'Criminal Minds');

-- Generate SQL to "Produce searchable TV Show directory (search all characteristics). 
--  Display all characteristic per TV Show in output. Sort ascending by TV Show Name.". 
--  Provide example data.
select 
	* 
from 
	tvShows 
order by 
	showName;

-- Generate SQL to "Add a TV Show Viewing".  Provide example data. 
-- The example data is under view ID 41.
INSERT INTO `it330mc_SP19_group6`.`viewing` 
	(`showID`,`watcherID`, `season`, `episode`, `date`, `rating`)
VALUES ('8','4','2','3','2019-04-20 04:45:00', '7');
 
-- Generate SQL to "Delete a TV Show Viewing".  Provide example data.
-- The deleted viewing is also viewID 41.
DELETE FROM `it330mc_SP19_group6`.`viewing` 
WHERE (viewID = '41');


-- Generate SQL to "Produce viewing statement between two times of day (if the viewing starts between these times). 
-- Show all viewing characteristics in output. 
-- Sort by date and time. 
-- Calculate the total length of time for these viewings as well as the percentage that this length is of all viewings

select * from viewing
where date between '2019-04-14 07:00:00' AND '2019-04-23 06:00:00'
order by date ASC;

select count(showID) as total_length from viewing
where date between '2019-04-14 07:00:00' AND '2019-04-23 06:00:00';

select (select count(showID) from viewing
where date between '2019-04-14 07:00:00' AND '2019-04-23 06:00:00')/count(showID) * 100 as percentage from viewing;

-- "Produce a TV Category report.
-- Show: Category, Number of shows per Category, Total length of time per Category, Percentage of this time per Category are of all-time viewed
-- Sort by Percentage Length of Viewings in each Category.
-- if anyone sees this please SEND HELP IM GOING TO CRYYYYY, sorry im dramatic okay :)
select 
	  distinct t.categoryID, count(c.categoryName) as shows_per_category, count(t.categoryID)/40 as percentage
from  tvShowCategory as t JOIN categories as c
	group by  categoryName, t.categoryID
order by count(c.categoryID)/40 desc
;

