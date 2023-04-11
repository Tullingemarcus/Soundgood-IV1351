SELECT 
    date, 
    genre,
    number_of_students 
FROM 
    ensemble
WHERE number_of_students > 0 AND date BETWEEN 
    (SELECT CURRENT_DATE + INTERVAL '7 day') AND 
    (SELECT CURRENT_DATE + INTERVAL '14 day') 
GROUP BY genre, date, number_of_students;