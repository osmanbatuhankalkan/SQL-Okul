CREATE DATABASE company;
-- Burada veri tabanı" oluşturduk" "company" isminde yaratırlen "create" kullandık.

DROP DATABASE company;
-- Buradan ise siliyoruz "silme" işlemi yaparken "drop" kullandık.

CREATE TABLE persons(
    personId int,
    firstName VARCHAR(255), --255 max alabileceği
    lastName VARCHAR(255),
    Adress VARCHAR(5)
);
-- Yukarıda bir tablo yarattık. İçerisinde karakterlerimizin türlerini, isimlerini ve mac adedini yazdık.
-- Aynı veri tabanında aynı isimden 2 yane tablo olamaz dropbox dan her zaman nerede olduğunu kontrol et.
-- Burada string yok ==> onun muadili "varchar" kullanacağız.
-- Bir veri tabanında aynı tablo olmaz.

DROP TABLE Persons;
-- Böylelikle oluşturmuş olduğumuz tabloyu "silmiş" olduk.

ALTER TABLE Persons
ADD Email VARCHAR(29);
-- Burada ise Tablomuza sonradan email ekledik "ekleme" yaparken "add" kullandık.

ALTER TABLE Persons
DROP COLUMN Adress;
-- "Drop Column" kullanarak persons tablomuzun içerisinde adress bloğunu "silmiş" olduk.

ALTER TABLE Persons
DROP COLUMN firstName;
-- "Drop Column" kullanarak persons tablomuzun içerisinde firstName bloğunu "silmiş" olduk.

CREATE TABLE Manager(
    ID int NOT NULL,
    Position NVARCHAR(255) NOT NULL, -- Belki poziyonunu belirtmez istemez.
    RoomNumber int,
    Gender NVARCHAR(255) -- Belki cinsiyetini belirtmek istemez
);

ALTER TABLE Manager
DROP COLUMN Gender;
-- "Drop Column" kullanarak persons tablomuzun içerisinde Gender bloğunu "silmiş" olduk.

--*** Genderin karakter sayısını ve dönme türünü değiştirme işlemi yapıyoruz. istersen türüde değiştirilebilir. taktik basit sil yeniden istediğin şekilde ekle.
ALTER TABLE Manager
ADD Gender VARCHAR(29) NULL;
-- Burada ise Tablomuza sonradan Gender ekledik "ekleme" yaparken "add" kullandık. Önce silip sonrasında tekrar ekledik ve NULL a çevirip karakter sayısınıda azaltmış olduk**

CREATE TABLE BUİLDİNG(
    Id int NOT NULL PRIMARY KEY,
    --Id int NOT NULL, olarakta yazılabilir aynı şeydir
    Adress NVARCHAR(53)

);
-- Bir colona PRİMARY KEY olacaksa NOTNULL olmalı
-- O kolon altındaki tüm verilerden 1 tane olabilir. Tablo 2. bir o dediğimiz veriden olmasına izin vermez.