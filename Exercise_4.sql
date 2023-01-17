--Задание
--Вывести студентов (различных студентов), имеющих максимальные результаты попыток. Информацию отсортировать в алфавитном порядке по фамилии студента.
--
--Максимальный результат не обязательно будет 100%, поэтому явно это значение в запросе не задавать.

select name_student, result
from student inner join attempt using(student_id)
where result = (
         SELECT MAX(result)
         FROM attempt
      )
order by name_student;