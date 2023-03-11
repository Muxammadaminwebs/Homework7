DROP TABLE if EXISTS cars;
create table cars (
    id serial,
    car_model VARCHAR(25) NOT NULL UNIQUE,
    color VARCHAR(15) NOT NULL,
    price INT NOT NULL,
    country VARCHAR(50),
    car_year INT NOT NULL
);

insert into
    cars (car_model, car_year, color, price)
values
    ('Damas', 2011, 'Yellow', 6000),
    ('Gentra', 2021, 'Orange', 9000),
    ('Nexia', 2011, 'Blue', 8000),
    ('Cobolt', 2018, 'Gray', 16000),
    ('Captiva', 2007, 'Black', 24000),
    ('Lasetti', 2009, 'Blue', 7500),
    ('Orlando', 2012, 'Black', 14000),
    ('Matiz', 1999, 'Orange', 5000),
    ('Spark', 2008, 'Blue', 7000),
    ('Tiko', 1996, 'Yellow', 3000),
    ('Ravon', 2006, 'Orange', 8000),
    ('Cruz', 2001, 'Yellow', 15000),
    ('Tacuma', 2004, 'Yellow', 17000),
    ('Malibu', 2021, 'Orange', 25000),
    ('Tahoe', 2021, 'Yellow', 8600),
    ('Traiblazer', 2023, 'Red', 6300),
    ('Equonix', 2018, 'Black', 2200),
    ('Treker', 2022, 'Black', 2300),
    ('Epica', 2006, 'Blue', 9600),
    ('Traverce', 2020, 'Orange', 42000);

DROP TABLE if EXISTS users;

create table users(
    id SERIAL,
    username VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    car_id INT
);

insert into
    users(username, age, car_id)
values
    ('Ivan', 33, null),
    ('Blisse', 37, 3),
    ('Jemmie', 55, 8),
    ('Ky', 65, 13),
    ('Sharon', 59, 10),
    ('Murielle', 72, 8),
    ('Karalynn', 67, null),
    ('Killy', 70, 6),
    ('Rochell', 26, 9),
    ('Emmaline', 45, null),
    ('Caritta', 43, 5),
    ('Barri', 40, null),
    ('Yolanthe', 21, 8),
    ('Jackson', 39, 20),
    ('Eugine', 50, null),
    ('Emlyn', 50, 9),
    ('Bonny', 21, null),
    ('Paten', 20, 7),
    ('Lindsey', 36, 13),
    ('Kandy', 75, 4),
    ('Ertha', 52, 17),
    ('Dolf', 69, 12),
    ('Sarita', 19, null),
    ('Clarey', 65, null),
    ('Dolley', 42, null),
    ('Alexandr', 29, null),
    ('Paulette', 60, null),
    ('Aindrea', 38, 5),
    ('Ambrosio', 49, null),
    ('Kevyn', 31, 12),
    ('Griswold', 58, 8),
    ('Orelee', 68, 7),
    ('Valaree', 69, 1),
    ('Grayce', 70, 5),
    ('Federico', 31, null),
    ('Penelopa', 31, 12),
    ('Raynor', 31, null),
    ('Alexis', 28, 12),
    ('Rosemaria', 73, null),
    ('Josephine', 37, 6),
    ('Collen', 47, 4),
    ('Justen', 73, null),
    ('Loree', 22, 5),
    ('Cynthia', 54, 20),
    ('Garner', 54, 9),
    ('Wilhelm', 19, 5),
    ('Jules', 21, null),
    ('Teodora', 62, 5),
    ('Dominick', 69, null),
    ('Stella', 27, null),
    ('Pip', 36, 6),
    ('Meghann', 38, null),
    ('Rodie', 45, 17),
    ('Nara', 62, null),
    ('Ross', 71, null),
    ('Greggory', 31, 5),
    ('Barbara', 43, null),
    ('Deanne', 73, null),
    ('Sandi', 64, 13),
    ('Aguste', 44, 6),
    ('Hugibert', 7, 1),
    ('Cammi', 71, null),
    ('Timotheus', 51, null),
    ('Ryun', 66, 4),
    ('Zeb', 34, 1),
    ('Stanly', 37, null),
    ('Hilliard', 60, 2),
    ('Fay', 46, null),
    ('Corenda', 38, 12),
    ('Gene', 43, null),
    ('Johnathan', 46, 5),
    ('Yale', 61, 9),
    ('Devora', 49, 9),
    ('Adrianne', 53, 10),
    ('Saw', 31, null),
    ('Allis', 41, 2),
    ('Rowena', 64, 6),
    ('Elisa', 40, 10),
    ('Dannye', 38, 5),
    ('Carlyle', 72, 12),
    ('Gilligan', 54, 9),
    ('Austen', 46, null),
    ('Ryley', 20, 9),
    ('Kim', 37, 14),
    ('Nanine', 60, 8),
    ('Willette', 39, 10),
    ('Denice', 28, null),
    ('Freedman', 54, null),
    ('Stanly', 70, 8),
    ('Hayward', 53, null),
    ('Man', 58, null),
    ('Marya', 28, 6),
    ('Carmelita', 68, 4),
    ('Fran', 56, 7),
    ('Rudolph', 36, 9),
    ('Elmo', 53, 6),
    ('Corty', 29, 5),
    ('Dorothea', 49, 5),
    ('Mala', 51, 1),
    ('Chiarra', 50, 5);

