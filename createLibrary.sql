drop table if exists books;
drop table if exists authors;


create table if not exists authors(
author_id int not null primary key auto_increment,
first_name varchar(30)
);	
create table if not exists books(
book_id int not null primary key auto_increment,
author_id int not null,
publish_date date,
isbn varchar(30),
category varchar(20),
page_count int,
publisher varchar(40),
price decimal,
foreign key (author_id) references authors(author_id)
);

insert into authors
values(NULL,"Mike");

insert into books
values(
NULL,1,"2015-08-13","1123-13-12-1-12-12-2",
"Programowanie Java",624,"Helion",89.0
);

select * from books;