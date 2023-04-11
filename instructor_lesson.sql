
SELECT *
FROM
(
    SELECT 
        COALESCE(month, '2023-03') AS date, 
        name, 
        (COALESCE(individual_lesson, 0) + COALESCE(group_lesson, 0) + COALESCE(ensemble, 0)) AS total
    FROM 
    (
    (
        SELECT 
            ins.name AS name, ins.instructor_id AS id
        FROM 
            instructor AS ins) AS m
        LEFT JOIN
        (
        SELECT
            LEFT(CAST(i.date AS VARCHAR(25)), 7) AS month,
            l.instructor_id,
            COUNT(*) AS individual_lesson 
        FROM 
            individual_lesson AS i 
        JOIN lesson AS l 
        ON l.lesson_id = i.lesson_id 
        WHERE 
            CAST(i.date AS VARCHAR(25)) LIKE '2023-03%'
        GROUP BY month, l.instructor_id
        ) AS m1 
        ON id = m1.instructor_id
        LEFT JOIN
        (
        SELECT
            LEFT(CAST(g.date AS VARCHAR(25)), 7) AS month2,
            g.instructor_id,
            COUNT(*) AS group_lesson
        FROM 
            group_lesson AS g 
        WHERE 
            CAST(g.date AS VARCHAR(25)) LIKE '2023-03%'
        GROUP BY month2, g.instructor_id) AS m2 
        ON id = m2.instructor_id
        LEFT JOIN
        (
        SELECT
            LEFT(CAST(e.date AS VARCHAR(25)), 7) AS month3,
            e.instructor_id,
            COUNT(*) AS ensemble
        FROM 
            ensemble AS e 
        WHERE 
            CAST(e.date AS VARCHAR(25)) LIKE '2023-03%'
        GROUP BY month3, e.instructor_id
        ) AS m3 
        ON id = m3.instructor_id
    ) 
    GROUP BY month, name, total
) as a
WHERE total > 8;
