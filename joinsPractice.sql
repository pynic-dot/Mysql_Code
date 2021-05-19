CREATE DATABASE Joints;

CREATE TABLE students( id int not null AUTO_INCREMENT PRIMARY KEY,
                     name varchar(20));

CREATE TABLE papers( title varchar(100),
                   grade char(1),
                   student_id int,
                   FOREIGN KEY(student_id) REFERENCES students(id)
                   on DELETE CASCADE);
                   
INSERT INTO students (name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 'B'),
(1, 'My Second Book Report', 'B'),
(2, 'Russian Lit Through The Ages', 'A'),
(2, 'De Montaigne and The Art of The Essay', 'A'),
(4, 'Borges and Magical Realism', 'A');




SELECT name, title, grade from students
JOIN papers
on students.id = papers.student_id;


SELECT name, title, grade from students
LEFT JOIN papers
on students.id = papers.student_id;


SELECT name, ifnull(title,"Missing"), ifnull(grade, 0) AS GR from students
LEFT JOIN papers
on students.id = papers.student_id;













