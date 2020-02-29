create table if not exists books(
book_id int not null primary key,
author varchar(30),
publish_date date,
isbn varchar(13),
category varchar(20),
page_count int,
publisher varchar(40),
price decimal
);
