/* Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’ */
SELECT * FROM Student WHERE studentName LIKE "H%";

/* Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12. */
SELECT * FROM class WHERE EXTRACT(MONTH FROM StartDate) = 12;

/* Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5. */
SELECT * FROM Subject WHERE credit BETWEEN 3 and 5;

/* Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2. */
UPDATE  student
SET ClassID = 2 WHERE StudentName = "Hung";

/* Hiển thị các thông tin: StudentName, SubName, Mark. 
Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần. */
SELECT StudentName, SubName, Mark FROM
student INNER JOIN mark ON student.studentID = mark.studentID
INNER JOIN subject ON mark.subID = subject.subID
ORDER BY mark.Mark DESC, studentName ASC;




