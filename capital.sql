use world;

DELIMITER $

CREATE PROCEDURE mostrar4(in pais varchar(155))
BEGIN

SELECT country.name, country.capital, city.name, countrylanguage.Language FROM city
 INNER JOIN country ON city.countrycode=country.code
 INNER JOIN         
 countrylanguage ON Countrylanguage.countrycode=country.code
 WHERE country.name=pais;
 
END$

CALL mostrar4('china')