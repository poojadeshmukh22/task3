
create database library_db

create table book(
	id int primary key, 
	title varchar(255),
	author varchar(255),
	genre varchar(100),
	publication_year int,
	pages int,
	borrowed boolean,
	borrower_name varchar(100) not null,
	borrow_date date not null
);


insert into books( title, author, genre, publication_year, pages, borrowed, borrower_name, borrow_date) values
('To Kill a Maockingbird','Harper Lee','Fiction', 1960, 281,True,'Alice Brown','2023-06-15');
('1984','George Orwell','Dystopian',1949,328,False,null,null),
('Moby Dick', 'Herman Melville', 'Adventure', 1851, 635, True, 'John Doe', '2023-06-20'),
('The Great Gatsby','F.Scott Fitzgerald','Tragedy', 1925, 180, False, null, null),
('Pride and Perjudice','Jane Austen','Romance', 1813, 279, True, 'Jane Smith','2023-06-25'),
('War and Peace','Leo Tolstoy', 'Historical', 1869, 1225, False, null, null),
('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 1951, 214, True, 'Emily Clark', '2023-07-01'),
('The Hobbit','J.R.R Tolkien','Fantasy',1937,310,False,null,null),
('Crime and Punishment', 'Fyodor Dostoevsky', 'Psychological', 1866, 430, True, 'Mike Davis', '2023-07-05'),
('The Odyssey','Homer','Epic', 800, 541, False, null, null);


select * from books;

select title,author,genre from books;

select * from books where genre = 'Fiction';

select * from books where publication_year < 1950;

select * from books where pages > 300;

select * from books where borrowed = True;

select * from books where author = 'George orwell';

select * from books where title like '%The%';

select sum(pages) from books;

select max(pages) from books genre = 'Adventure';

select b.title, a.name as author_name 
from books b
join authors a on b.author_id = a.author_id;

select * from books where length(title) > 20;

select avg(length(title)) as avereage_title_length from books;

select * from books where genre = 'Fantasy'
