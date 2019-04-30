use it330mc_SP19_mab687; -- grave accent

drop table if exists `student`;

-- create statement
CREATE TABLE `student` (
  `studentID` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` nvarchar(150) NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into student (first_name, last_name, email) values ('ali', 'bursal', 'a@b.c');
insert into student (first_name, last_name, email) values ('muh', 'green', 'b@b.c');
insert into student (first_name, last_name, email) values ('ike', 'blue', 'c@b.c');
insert into student (first_name, last_name, email) values ('lee', 'red', 'd@b.c');
insert into student (first_name, last_name, email) values ('joe', 'orange', 'e@b.c');
insert into student (first_name, last_name, email) values ('bob', 'guitar', 'f@b.c');

select * from student;
