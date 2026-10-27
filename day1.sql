-- how to create database
create database demoDB;

-- how to start using database
use demoDB;

-- how to stop using a database
use master;

-- disconnect everyone from database but not you.
-- any work onging by someone will rollback
alter database demoDb
set single_user with rollback immediate;

-- updated the name of database 
alter database demoDB
modify name = sampleDB;


-- remove database
drop database sampleDB;