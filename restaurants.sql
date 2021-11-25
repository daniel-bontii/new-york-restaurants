--view all data present in nonnon
SELECT
    *
FROM
    nomnom;

/*Selecting DISTINCT neignbourhoods*/
SELECT
    DISTINCT neighborhood
FROM
    nomnom;

/*Selecting DISTINCT cuisine*/
SELECT
    DISTINCT cuisine
FROM
    nomnom;

/*Selecting chineses cuisine*/
SELECT
    *
FROM
    nomnom
WHERE
    cuisine = 'Chinese';

/*Selecting restaurants with review  >= 4 */
SELECT
    *
FROM
    nomnom
WHERE
    review >= 4;

/*Selecting all Italian restaurants with price $$$*/
SELECT
    *
FROM
    nomnom
WHERE
    cuisine = 'Italian'
    AND price = '$$$';

/*Selecting restaurant names containing meatball*/
SELECT
    DISTINCT *
FROM
    nomnom
WHERE
    name LIKE '%meatball%';

/*Selecting close by spots in Midtown, Downtown or Chinatown*/
SELECT
    *
FROM
    nomnom
WHERE
    neighborhood = 'Midtown'
    OR neighborhood = 'Downtown'
    OR neighborhood = 'Chinatown';

/*Selecting grade pending restaurants*/
SELECT
    *
FROM
    nomnom
WHERE
    health IS NULL;

/*Selecting op 10 Restaurants Ranking based on review*/
SELECT
    *
FROM
    nomnom
ORDER BY
    review DESC
LIMIT
    10;

/*Using CASE statement to change the rating system*/
SELECT
    name,
    CASE
        WHEN review > 4.5 THEN 'Extraordinary'
        WHEN review > 4 THEN 'Excellent'
        WHEN review > 3 THEN 'Good'
        WHEN review > 2 THEN 'Fair'
        ELSE 'Poor'
    END AS 'Review'
FROM
    nomnom;