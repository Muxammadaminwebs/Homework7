-- 1: eng kop sotilgan mashina
 select cars.carModel, count(*) from cars
left join users
on cars.id=users.car_id
group by carModel order by count(*) desc limit 1;

-- 2: sotilmay qolgan mashinalar
 select * from cars
full join users
on cars.id=users.car_id
where username is null;

-- 3: userlarning mashina sotib oluvchilarining o''rtacha yoshi
select round(avg(age))as orta_yosh from users
left join cars
on cars.id=users.car_id
where users.car_id is not null;

-- 4-eng keksa mashina sotib olgan shaxs 
select users.username, users.age, cars.carModel, cars.price from users
inner join cars
on cars.id=users.car_id
where users.age=(select max(age) from users);

-- 5:mashina olmagan userlar
select users.username from users 
full join cars 
on cars.id=users.car_id
where users.car_id is null;

-- 6: mashinalar nechtadan sotilganligi
select cars.carModel, count(*) from cars
inner join users
on users.car_id=cars.id
group by carModel;

--7: mashina olmaganlar ichidagi eng yosh haridor
select users.username, users.age from users
left join cars
on cars.id=users.car_id
where car_id is null 
order by users.age limit 1;

-- 8 :jami userlarning necha foizida mashina bor
select count(cars.id)*100/count(users.id) || '% mashina olgan' as foiz from users
left JOIN cars on users.car_id=cars.id;

-- 9 :eng qimmat mashinani kim olgan
select users.username, cars.carModel, cars.price from cars
RIGHT join users
on cars.id=users.car_id
where cars.price=(select max(price) from cars) and username is not null;

-- 10: eng arzon mashinani kim olgan
SELECT users.username, cars.carModel, cars.price FROM cars
RIGHT JOIN users
ON cars.id=users.car_id
WHERE cars.price=(SELECT MIN(price) FROM cars) AND username IS NOT NULL;

-- 11:qaysi rangli mashina kop sotilgan
SELECT color, COUNT(*) FROM cars
INNER JOIN users
ON cars.id=users.car_id
group by color order by count(*) desc limit 1;

-- 12:eng yili eski mashina
SELECT * FROM cars WHERE car_year = (SELECT min(car_year) FROM cars);

-- 13:eng arzon mashina
SELECT * FROM cars WHERE price = (SELECT min(price) FROM cars);

-- 14: sotilgan mashinalarning eng yili eskisi
SELECT cars.carModel AS sotilgan, cars.car_year AS eski FROM cars
INNER JOIN users
on cars.id=users.car_id
where cars.car_year=(select min(car_year) from cars);

-- 15:sotilgan mashinalarning eng arzoni
SELECT cars.carModel AS sotilgan, cars.price AS arzon  FROM cars
INNER JOIN users
on cars.id=users.car_id
where cars.price=(select min(price) from cars);

-- 16:sotilmay qolgan mashinalarning eng qimmati
SELECT cars.carModel AS sotilmagan , cars.price AS qimmat FROM cars
LEFT JOIN users
ON users.car_id=cars.id
where username is null 
ORDER by price desc limit 1;

-- 17: nechta mashina sotilgan
SELECT count(*) from cars 
JOIN users
ON users.car_id=cars.id;

-- 18:nechta turdagi mashina sotilmayapti
SELECT count(*) AS sotilmayapt from cars 
FULL JOIN users
ON users.car_id=cars.id
WHERE username is null;