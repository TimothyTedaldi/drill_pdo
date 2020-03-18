SELECT * FROM students;
-- Affiche toutes les données.

SELECT prenom FROM students; 
-- Affiche uniquement les prénoms.

SELECT * FROM students WHERE genre = 'F';

-- Affiche uniquement les élèves qui sont de sexe féminin.

SELECT * FROM students WHERE school IN (
    SELECT school
    FROM students
    WHERE nom = 'Addy'
);
-- Affiche uniwuement les élèves qui font partie de l'école Addy.

SELECT prenom FROM students ORDER BY prenom DESC LIMIT 2;

-- Affiche uniquement les prénoms des étudiants, par ordre inverse à l'alphabet (desc)
-- Ensuite, même chose mais en limitant les résultats à 2.

INSERT INTO students(nom, prenom, datenaissance, genre, school)
VALUES ('Dalor', 'Ginette', '1930-01-01', 'F', 1);	


-- Ajoute Ginette Dalor, née le 01/01/1930 et affecte-la à Central, toujours en SQL.

UPDATE students SET genre = 'M', prenom = 'Omer', school = 1 WHERE prenom = 'Ginette'

-- Modifie Ginette (toujours en SQL) et change son sexe et son prénom en “Omer”.

DELETE FROM students WHERE idStudent = 3

-- Supprimer la personne dont l’ID est 3.

ALTER TABLE students
MODIFY school varchar(20);	
UPDATE students SET school = 'Central' WHERE school = '1';
UPDATE students SET school = 'Anderlecht' WHERE school = '2';

-- Modifier le contenu de la colonne School de sorte que "1" soit remplacé par "Central" et "2" soit remplacé par "Anderlecht". (attention au type de la colonne !)


-- Faire d’autres manipulations pour voir si t’es bien compris.
