--   1-TASK
SELECT
    car_model,
    count(*) Sotilgan
from
    cars c
    LEFT JOIN users u ON c.id = u.car_id
GROUP BY
    car_model
ORDER BY
    count(*) DESC
LIMIT
    1;

--   2-TASK
SELECT
    *
from
    cars c
    LEFT JOIN users u ON c.id = u.car_id
WHERE
    username IS NULL;

--   3-TASK
SELECT
    SUM(COALESCE(age, 0)) / count(*) as age
from
    cars c
    LEFT JOIN users u ON c.id = u.car_id;

--   4-TASK
SELECT
    username,
    age
from
    cars c
    LEFT JOIN users u ON c.id = u.car_id
WHERE
    age IS NOT NULL
ORDER BY
    age DESC
LIMIT
    1;

--   5-TASK
SELECT
    u.id,
    username,
    age
from
    cars c
    RIGHT JOIN users u ON c.id = u.car_id
WHERE
    car_model IS NULL;

--   6-TASK
SELECT
    car_model,
    count(*) Sotilgan
from
    cars c
    LEFT JOIN users u ON c.id = u.car_id
WHERE
    username IS NOT NULL
GROUP BY
    car_model
ORDER BY
    count(*);

--   7-TASK
SELECT
    username,
    age
from
    cars c
    RIGHT JOIN users u ON c.id = u.car_id
WHERE
    age IS NOT NULL
    AND car_model IS NULL
ORDER BY
    age
LIMIT
    1;

--   8-TASK
SELECT
    count(*) / 100 * count(car_model)
from
    cars c
    RIGHT JOIN users u ON c.id = u.car_id;

--   9-TASK
SELECT
    username,
    car_model,
    price
from
    cars c
    LEFT JOIN users u ON c.id = u.car_id
WHERE
    price IS NOT NULL
ORDER BY
    price DESC
LIMIT
    1;

--   10-TASK
SELECT
    username,
    car_model,
    price
from
    cars c
    LEFT JOIN users u ON c.id = u.car_id
ORDER BY
    price
LIMIT
    1;

--   11-TASK
SELECT
    color,
    count(*) s
from
    cars c
    LEFT JOIN users u ON c.id = u.car_id
GROUP BY
    color
ORDER BY
    s DESC
LIMIT
    1;

--   12-TASK
SELECT
    *
from
    cars c
    LEFT JOIN users u ON c.id = u.car_id
ORDER BY
    car_year
LIMIT
    1;

--   13-TASK
SELECT
    *
from
    cars c
    LEFT JOIN users u ON c.id = u.car_id
ORDER BY
    price
LIMIT
    1;

--   14-TASK
SELECT
    *
from
    cars c
    LEFT JOIN users u ON c.id = u.car_id
WHERE
    username IS NOT NULL
ORDER BY
    car_year
LIMIT
    1;

--   15-TASK
SELECT
    *
from
    cars c
    LEFT JOIN users u ON c.id = u.car_id
WHERE
    username IS NOT NULL
    and price IS NOT NULL
ORDER BY
    price
LIMIT
    1;

--   16-TASK
SELECT
    *
from
    cars c
    LEFT JOIN users u ON c.id = u.car_id
WHERE
    username IS NULL
    and price IS NOT NULL
ORDER BY
    price DESC
LIMIT
    1;

--   17-TASK
SELECT
    count(car_model)
from
    cars c
    LEFT JOIN users u ON c.id = u.car_id
WHERE
    username IS NOT NULL;

--   18-TASK
SELECT
    count(DISTINCT car_model) types
from
    cars c
    LEFT JOIN users u ON c.id = u.car_id
WHERE
    username IS NULL;




    SELECT round(avg(u.age))
    from cars c LEFT JOIN users.u  on c.id= u.car_id;