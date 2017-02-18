# TODO complete the entire seeds as we have completed only the required as of now

User.seed do |s|
  s.activated            = true
  s.activated_at         = DateTime.now
  s.admin                = true
  s.email                = 'admin1@demo_app.com'
  s.name                 = 'Admin'
  s.password_digest      = '$2a$04$2hmJd.uiWgKzlRDAv.693e9G9oIFykpbElOt6RSWhHx1soKHk0DiK'
  s.remember_digest      = ''
  s.reset_digest         = ''
end

staff_user = User.seed do |s|
  s.activated            = true
  s.activated_at         = DateTime.now
  s.admin                = false
  s.email                = 'staff1@demo_app.com'
  s.name                 = 'Staff'
  s.password_digest      = '$2a$04$2hmJd.uiWgKzlRDAv.693e9G9oIFykpbElOt6RSWhHx1soKHk0DiK'
  s.remember_digest      = ''
  s.reset_digest         = ''
end

student_user = User.seed do |s|
  s.activated            = true
  s.activated_at         = DateTime.now
  s.admin                = false
  s.email                = 'student1@demo_app.com'
  s.name                 = 'Student'
  s.password_digest      = '$2a$04$2hmJd.uiWgKzlRDAv.693e9G9oIFykpbElOt6RSWhHx1soKHk0DiK'
  s.remember_digest      = ''
  s.reset_digest         = ''
end

student_user1 = User.seed do |s|
  s.activated            = true
  s.activated_at         = DateTime.now
  s.admin                = false
  s.email                = 'student2@demo_app.com'
  s.name                 = 'Student'
  s.password_digest      = '$2a$04$2hmJd.uiWgKzlRDAv.693e9G9oIFykpbElOt6RSWhHx1soKHk0DiK'
  s.remember_digest      = ''
  s.reset_digest         = ''
end

student_user2 = User.seed do |s|
  s.activated            = true
  s.activated_at         = DateTime.now
  s.admin                = false
  s.email                = 'student3@demo_app.com'
  s.name                 = 'Student'
  s.password_digest      = '$2a$04$2hmJd.uiWgKzlRDAv.693e9G9oIFykpbElOt6RSWhHx1soKHk0DiK'
  s.remember_digest      = ''
  s.reset_digest         = ''
end


Department.seed do |s|
  s.name = "IX"
  s.section = "B"
end

Department.seed do |s|
  s.name = "IX"
  s.section = "C"
end

Department.seed do |s|
  s.name = "X"
  s.section = "A"
end

dept1 = Department.seed do |s|
  s.name = "XI"
  s.section = "B"
end

dept2 = Department.seed do |s|
  s.name = "XII"
  s.section = "C"
end

staff = Staff.seed do |s|
  s.first_name = "Mohan"
  s.user_id = staff_user.first().id
end

Student.seed do |s|
  s.first_name = "Ram"
  s.user_id = student_user.first().id
  s.department_id = dept1.first().id
end

Student.seed do |s|
  s.first_name = "Mano"
  s.user_id = student_user1.first().id
  s.department_id = dept1.first().id
end


Student.seed do |s|
  s.first_name = "Rahim"
  s.user_id = student_user2.first().id
  s.department_id = dept1.first().id
end

Subject.seed do |s|
  s.name = "Commerce"
  s.department_id = dept2.first().id
end

subject = Subject.seed do |s|
  s.name = "Maths"
  s.department_id = dept1.first().id
end

StaffSubject.seed do |s|
  s.staff_id = staff.first().id
  s.subject_id = subject.first().id
end
