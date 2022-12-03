use world;

DELIMITER $

CREATE PROCEDURE mostrar6(in pais varchar(155))
BEGIN

SELECT country.name, country.capital, city.name, countrylanguage.Language FROM city
 INNER JOIN country ON city.countrycode=country.code
 INNER JOIN         
 countrylanguage ON Countrylanguage.countrycode=country.code
 WHERE country.name=pais group by country.name;
 
END$

CALL mostrar6('chile')