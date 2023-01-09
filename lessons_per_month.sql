/* \i c:/users/marcu/skrivbord/filer-pdf/datalagring/task3/soundgood3.sql */


/*a query that finds the total amount of individual lessons, group lessons and ensembles for each month in a year*/
SELECT 
    month, COALESCE(individual_lesson, 0) AS individual_lesson, 
    COALESCE(group_lesson, 0) AS group_lesson, 
    COALESCE(ensemble, 0) AS ensemble, 
    (COALESCE(individual_lesson, 0) + COALESCE(group_lesson, 0) + COALESCE(ensemble, 0)) as total
FROM 
(
    /*creates a table with the total individual lessons every month in a year*/
    SELECT
        LEFT(CAST(i.date AS VARCHAR(25)), 7) AS month, /*selects the month only caring about month and year*/
        COUNT(*) AS individual_lesson
    FROM 
        individual_lesson AS i 
    WHERE 
        CAST(i.date AS VARCHAR(25)) LIKE '2022%'
    GROUP BY month /*individual lesson month have the name 'month' to make it more easier to 
                    read later but it is interchangeble with the other lesson typ*/
) AS m1 
FULL OUTER JOIN
(
    /*creates a table with the total group lessons every month in a year*/
    SELECT
        LEFT(CAST(g.date AS VARCHAR(25)), 7) AS group_month, /*selects the month only caring about month and year*/
        COUNT(*) AS group_lesson
    FROM 
        group_lesson AS g 
    WHERE 
        CAST(g.date AS VARCHAR(25)) LIKE '2022%'
    GROUP BY group_month
) AS m2 
ON 
    LEFT(CAST(m1.month AS VARCHAR(25)), 7) = LEFT(CAST(m2.group_month AS VARCHAR(25)), 7) /*selects the month only caring about month and year*/
FULL OUTER JOIN
(
    /*creates a table with the total ensembles every month in a year*/
    SELECT
        LEFT(CAST(e.date AS VARCHAR(25)), 7) AS ensemble_month,
        COUNT(*) AS ensemble
    FROM 
        ensemble AS e 
    WHERE 
        CAST(e.date AS VARCHAR(25)) LIKE '2022%'
    GROUP BY ensemble_month
) AS m3 
ON 
    LEFT(CAST(m1.month AS VARCHAR(25)), 7) = LEFT(CAST(m3.ensemble_month AS VARCHAR(25)), 7)
GROUP BY 
    month, individual_lesson, group_lesson, ensemble, total;


