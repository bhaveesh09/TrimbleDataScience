-- create
CREATE TABLE name_table (
  StudentId varchar(4) PRIMARY KEY,
  Name TEXT NOT NULL
);

CREATE TABLE mark_table (
  StudentId varchar(4),
  Total_marks int NOT NULL,
  foreign KEY(StudentId) references name_table(StudentId)
);
-- insert
INSERT INTO name_table VALUES ('V001', 'Abe');
INSERT INTO name_table VALUES ('V002', 'Abhay');
INSERT INTO name_table VALUES ('V003', 'Acelin');
INSERT INTO name_table VALUES ('V004', 'Adelphos');

INSERT INTO mark_table VALUES ('V001', 95);
INSERT INTO mark_table VALUES ('V002', 80);
INSERT INTO mark_table VALUES ('V003', 74);
INSERT INTO mark_table VALUES ('V004', 81);



--1A ANSWER (Returns studentId and Name of Students with Total_marks> Total_marks of Studentid="V002" 
SELECT Tname.studentId, Tname.Name 
FROM name_table Tname, mark_table Tmarks
WHERE Tname.StudentId = Tmarks.StudentId AND Tmarks.Total_marks >
(SELECT Total_marks
FROM mark_table
WHERE StudentId = 'V002');
