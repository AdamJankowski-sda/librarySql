drop table if exists books;
drop table if exists authors;


create table if not exists authors(
author_id int not null primary key auto_increment,
first_name varchar(30)
);	
create table if not exists books(
book_id int not null primary key auto_increment,
author_id int,
title varchar(120),
publish_date date not null,
isbn varchar(30) not null,
category varchar(20) not null,
page_count int not null,
publisher varchar(40),
price decimal not null,
foreign key (author_id) references authors(author_id)
);

alter table books modify isbn varchar(30) not null;
alter table books modify author_id int not null;
alter table books modify title varchar(60) not null;
alter table books modify publisher varchar(60) not null default("nieznany");
alter table books add in_stock int not null default(0);

insert into authors
values(NULL,"Mike");

insert into books
values(
NULL,1,"Java od Betonowych Podstaw","2015-08-13","1123-13-12-1-12-12-2",
"Programowanie Java",624,"Helion",89.0,0
);

insert into books
values(
NULL,1,"Java od Sófitu","2015-08-13","1123-13-12-1-12-12-2",
"Programowanie Java",624,"Helion",123.0,0
);

insert into books
values(
NULL,1,"Java dla topornych","2015-08-13","1123-13-12-1-12-12-2",
"Programowanie Java",624,"Helion",101.0,0
);

insert into books
(book_id,
author_id,
title,
publish_date,
isbn,
category,
page_count,
price)
values(
NULL,1,"Beton i zelazo","2015-08-13","1123-13-12-1-12-12-2",
"Programowanie Java",624,11.0
);

select * from books where price < 100;
select distinct price from books;

select sum(page_count) as suma from books;
select * from books where exists(select * from books where price < 100);
