result = User.joins(:user_work_experiences).find_by("users.id = 1")

