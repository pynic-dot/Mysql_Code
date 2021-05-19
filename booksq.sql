SELECT title from books WHERE released_year = 2005;
SELECT title from books where released_year != 2005;
SELECT title , author_fname FROM books where author_fname = 'Neil';

SELECT title FROM books where title LIKE 'W%';
SELECT title FROM books where title LIKE '%W%';
SELECT title FROM books where title NOT LIKE '%W%';


SELECT * FROM books;

SELECT book_id, title, released_year from books WHERE released_year IN (2016, 2005);


SELECT book_id, title , released_year from books where released_year BETWEEN 1990 AND 2005;


SELECT book_id, title, author_lname from books where author_lname IN ('Carver', 'Lahiri', 'Smith');

SELECT book_id, title, released_year from books WHERE released_year  NOT IN (2016, 2005);










SELECT title, released_year , 
CASE
WHEN released_year > 2001 THEN "Mornder Lit"
ELSE "20th century Lit"
END AS General
from books;




SELECT title, author_lname, COUNT(author_lname) AS count from books 
group by author_lname;
