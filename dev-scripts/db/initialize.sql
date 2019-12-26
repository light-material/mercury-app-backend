CREATE SCHEMA IF NOT EXISTS `mercury_db` DEFAULT CHARACTER SET utf8;
USE mercury_db;

create table contract
(
	id BIGINT auto_increment,
	title VARCHAR(128) not null,
	description VARCHAR(2048),
	sender_name VARCHAR(128) not null,
	sender_msisdn VARCHAR(11) not null,
	sender_email VARCHAR(64) not null,
	receiver_name VARCHAR(128) not null,
	receiver_msisdn VARCHAR(11) not null,
	receiver_email VARCHAR(128) not null,
	status VARCHAR(12) not null,
	date_created DATETIME not null,
	date_updated DATETIME not null,
	deadline DATETIME not null,
	version int not null,
	constraint contract_pk
		primary key (id)
);
