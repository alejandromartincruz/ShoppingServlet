drop database if exists shopdb;
create database shopdb;

use shopdb;

create table CD (

	albumid 			int(11) NOT NULL AUTO_INCREMENT,
	album				varchar(30) NOT NULL,
  	artist				varchar(30) NOT NULL,
  	country				varchar(20) NOT NULL,
  	price				varchar(20) NOT NULL,
  	quantity			varchar(20) NOT NULL,
  	
  	PRIMARY KEY (albumid)

);