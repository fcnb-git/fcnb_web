class AddRoleSummaryToUserWorkExperienceRoles < ActiveRecord::Migration[5.1]
  def change
    add_column :user_work_experience_roles, :role_summary, :text, null: false, default:""
  end
end
