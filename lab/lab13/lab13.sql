.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students Where color = 'blue' AND pet = 'dog';

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students Where color ="blue" AND pet = "dog";


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color FROM students AS a, students AS b 
    Where a.time < b.time AND a.pet = b.pet AND a.song = b.song;


CREATE TABLE sevens AS
  SELECT students.seven FROM students, numbers 
    Where students.time = numbers.time
    AND students.seven != "I find this question condescending" 
    AND numbers."7" = "True"
    AND students.number = 7;


CREATE TABLE favpets AS
  SELECT pet, COUNT(*) AS count FROM students 
    Group By pet Order By count Desc Limit 10;

CREATE TABLE dog AS
  SELECT pet, count(*) FROM students Where pet = "dog";


CREATE TABLE bluedog_agg AS
  SELECT song, count(*) as count FROM bluedog_songs GROUP BY song
  Order by count Desc ;


CREATE TABLE instructor_obedience AS
  SELECT seven, instructor, count(*) FROM students Where seven = "7" GROUP BY instructor;

