CREATE DATABASE ikiKasımDemo;

USE ikiKasımDemo;

CREATE TABLE PizzaCompany(
    CompanyId int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    CompanyName VARCHAR(100),
    CompanyCity VARCHAR(100)
);

-- Veri ekleme sorguları
INSERT INTO PizzaCompany (CompanyName, CompanyCity) VALUES ('Pizzeria', 'Boston');
INSERT INTO PizzaCompany (CompanyName, CompanyCity) VALUES ('Ah Pizz', 'Fremont');
INSERT INTO PizzaCompany (CompanyName, CompanyCity) VALUES ('Dominos', 'Los Angeles');

-- PizzaCompany tablosunu sorgula
SELECT * FROM PizzaCompany;

CREATE TABLE foods(
    ItemId INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    UnitSolds int,
    CompanyId int,
    ItemName VARCHAR(100),
    FOREIGN KEY(CompanyId) REFERENCES PizzaCompany(CompanyId)
);

-- Şimdi yiyecekleri ekleyin
INSERT INTO foods (ItemName, UnitSolds, CompanyId) VALUES ('Small Pizza', 9, 6);
INSERT INTO foods (ItemName, UnitSolds, CompanyId) VALUES ('Medium Pizza', 8, 4);
INSERT INTO foods (ItemName, UnitSolds, CompanyId) VALUES ('Breadsticks', 7, 1);
INSERT INTO foods (ItemName, UnitSolds, CompanyId) VALUES ('Medium Pizza', 11, 1);

--SORU-1 CEVAP
SELECT PizzaCompany.CompanyId,PizzaCompany.CompanyCity,PizzaCompany.CompanyName, foods.ItemName, foods.UnitSolds
FROM PizzaCompany
INNER JOIN foods ON PizzaCompany.CompanyId = foods.CompanyId
WHERE foods.UnitSolds > 6;

--SORU-2 CEVAP
-- Şirketlere ait pizzaların adını ve toplam satış sayısını getir
SELECT P.CompanyName, P.CompanyCity, F.ItemName, F.UnitSolds
FROM PizzaCompany AS P 
INNER JOIN foods AS F ON F.CompanyId = P.CompanyId
WHERE F.UnitSolds >= 6;

-- Şirketlerin satış toplamını getir
SELECT P.CompanyCity, P.CompanyName, SUM(F.UnitSolds) AS TOTAL
FROM PizzaCompany AS P 
INNER JOIN foods AS F ON F.CompanyId = P.CompanyId
GROUP BY P.CompanyCity, P.CompanyName;

