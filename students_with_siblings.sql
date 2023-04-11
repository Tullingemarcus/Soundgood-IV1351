/*EXPLAIN*/
SELECT 
    amount_of_siblings, COUNT(amount_of_siblings) as number_of_students
FROM
(
    SELECT 
        st.name, COUNT(si.name) as amount_of_siblings
    FROM 
        student as st
    LEFT JOIN 
    sibling as si
    ON 
        si.student_id = st.student_id
    GROUP BY st.name
) as table1
GROUP BY amount_of_siblings

