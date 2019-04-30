use it330mc_SP19_mab687;

drop table if exists address;
drop table if exists city;

CREATE TABLE `city` (
  `city_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(50) NOT NULL,
  `country_id` smallint(5) unsigned NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`city_id`),
  KEY `idx_fk_country_id` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8;

CREATE TABLE `address` (
  `address_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(50) NOT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `district` varchar(20) NOT NULL,
  `city_id` smallint(5) unsigned NOT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`address_id`),
  KEY `idx_fk_city_id` (`city_id`),
  CONSTRAINT `fk_address_city` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=606 DEFAULT CHARSET=utf8;


INSERT INTO `it330mc_SP19_mab687`.`city` (`city`, `country_id`) VALUES ('clifton', '1');
INSERT INTO `it330mc_SP19_mab687`.`city` (`city`, `country_id`) VALUES ('irvine', '1');
INSERT INTO `it330mc_SP19_mab687`.`city` (`city`, `country_id`) VALUES ('wayne', '1');

INSERT INTO `it330mc_SP19_mab687`.`address` (`address`, `city_id`, `postal_code`, `phone`) VALUES ('2 a ave', '602', '100000', '1000000002');
INSERT INTO `it330mc_SP19_mab687`.`address` (`address`, `city_id`, `postal_code`, `phone`) VALUES ('2 b ave', '602', '100000', '1000000003');
INSERT INTO `it330mc_SP19_mab687`.`address` (`address`, `city_id`, `postal_code`, `phone`) VALUES ('3 a ave', '602', '100000', '1000000004');

select 
	a.address,
    c.city,
    a.postal_code,
    a.phone
from
	address as a
inner join
	city as c on c.city_id = a.city_id
;

select 
	a.address,
    c.city,
    a.postal_code,
    a.phone
from
	city as c
left outer join
	address as a on a.city_id = c.city_id
;
