create database menaga;
use menaga;
CREATE OR REPLACE FUNCTION count_students
(
    p_dept_id IN NUMBER
)
RETURN NUMBER
IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Student
    WHERE DepartmentID = p_dept_id;

    RETURN v_count;
END;
/
DECLARE
    v_result NUMBER;
BEGIN
    v_result := count_students(10);

    DBMS_OUTPUT.PUT_LINE(
        'Number of students = ' || v_result
    );
END;
/
