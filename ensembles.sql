SELECT 
    date, 
    genre,
    number_of_students 
FROM 
    ensemble
WHERE number_of_students > 0 AND date BETWEEN '2023-01-09' AND '2023-01-15' 
GROUP BY genre, date, number_of_students;


/*'2022-03-20' AND '2022-03-26'*/