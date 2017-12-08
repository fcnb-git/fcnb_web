user = User.find_by(email: "fcnb.devteam@gmail.com")
user.user_work_experiences.create(employer_name: "NEC")
