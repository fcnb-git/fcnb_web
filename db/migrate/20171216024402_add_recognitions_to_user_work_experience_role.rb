class AddRecognitionsToUserWorkExperienceRole < ActiveRecord::Migration[5.1]
  def change
    add_column :user_work_experience_roles, :recognitions, :text, null: false, default:""
  end
end
