drop table if exists book;
create table if not exists book(
title varchar(120),
author varchar(60),
published date not null,
isbn varchar(30) not null,
category varchar(20) not null,
page_count int not null,
publisher varchar(40),
price decimal not null
);