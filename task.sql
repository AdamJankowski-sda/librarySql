#1
Select count(*) as ksiazki_10_30 from book where price >= 10 and price <=30;
#2
select min(price) as najnizsza_cena from book;
#3
select max(price) as najwyzsza_cena from book;
#4
select title from book order by price desc limit 1  ;
#5
select * from book where published < '2000-01-01';
#6
select publisher,count(*) as liczba_wydanych_ksiazek_przed_2000 from book where published < '2000-01-01' group by publisher;
#7
select sum(page_count) from book where publisher='PWN';
#8
select category,price from (select * from book where price > 10.01 group by category having count(category)>1) as result;
#9
select title from book where category!='Lektury' and price > 20.0 order by title desc;

#Just for checking
select * from book;