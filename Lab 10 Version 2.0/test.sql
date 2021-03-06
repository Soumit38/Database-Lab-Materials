CREATE TABLE STUDENT
(
roll_no number(4) PRIMARY KEY,
name varchar2(50) NOT NULL,
marks number(3),
grade char(1),
course_id number(4)
);


CREATE TRIGGER TR_GRADE 
BEFORE UPDATE OR INSERT ON STUDENT 
FOR EACH ROW 
BEGIN
IF :NEW.MARKS>80 THEN
:NEW.GRADE:='A';
ELSIF :NEW.MARKS>70 AND :NEW.MARKS<80 THEN
:NEW.GRADE:='B';
ELSIF :NEW.MARKS>60 AND :NEW.MARKS<70 THEN
:NEW.GRADE:='C';
ELSIF :NEW.MARKS>50 AND :NEW.MARKS<60 THEN
:NEW.GRADE:='D';
ELSIF :NEW.MARKS>40 AND :NEW.MARKS<50 THEN
:NEW.GRADE:='E';
ELSIF :NEW.MARKS<=40 THEN
:NEW.GRADE:='F';
END IF;
END TR_GRADE;
/
