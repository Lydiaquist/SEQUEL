
use digital_africa; 

CREATE TABLE persons (id INTEGER PRIMARY KEY AUTO_INCREMENT, name TEXT, age
INTEGER);
-- populating TABLE persons 
INSERT INTO persons (name, age) VALUES ("Bobby McBobbyFace", 12);
INSERT INTO persons (name, age) VALUES ("Lucy BoBucie", 25);
INSERT INTO persons (name, age) VALUES ("Banana FoFanna", 14);
INSERT INTO persons (name, age) VALUES ("Shish Kabob", 20);
INSERT INTO persons (name, age) VALUES ("Fluffy Sparkles", 8);
INSERT INTO persons (name, age) VALUES ("Jerry Jay", 9);

-- creating a TABLE hobbies 
CREATE table hobbies (id INTEGER PRIMARY KEY AUTO_INCREMENT, person_id INTEGER,
name TEXT);

-- populating TABLE hobbies 
INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");
INSERT INTO hobbies (person_id, name) VALUES (5, "hunting");

-- querying from the tables created
select * from persons;
select * from hobbies;

-- Adding a new record into TABLE Persons
INSERT INTO persons (name, age) VALUES ("Chris Murgan", 19);
-- Adding a new record into TABLE hobbies
INSERT INTO hobbies (person_id, name) VALUES (7, "Fishing");

--  querying hobbies and name from TABLE persons and hobbies using the JOIN CLAUSE
SELECT persons.name, hobbies.name AS "hobbies" from persons JOIN hobbies on persons.id = hobbies.person_id;

-- querying name and hobbies of Bobby McBobbyFace 
SELECT persons.name, hobbies.name AS "hobbies" from persons JOIN hobbies on persons.id = hobbies.person_id WHERE persons.name = "Bobby McBobbyFace";


