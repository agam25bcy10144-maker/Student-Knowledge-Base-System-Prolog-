student(john, 21, computer_science).
student(sara, 22, mathematics).
student(ali, 20, engineering).
student(mary, 23, physics).
students_in_course(Course, Student) :-
    student(Student, _, Course).
student_details(Name, Age, Course) :-
    student(Name, Age, Course).
:- dynamic student/3.

% Add a new student
add_student(Name, Age, Course) :-
    assertz(student(Name, Age, Course)).
remove_student(Name) :-
    retract(student(Name, _, _)).
count_students(Count) :-
    findall(Name, student(Name, _, _), List),
    length(List, Count).
list_all_students :-
    student(Name, Age, Course),
    format("~w (~w years old) - Course: ~w~n", [Name, Age, Course]),
    fail.
list_all_students.
