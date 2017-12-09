class CreateUserWorkExperienceRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_work_experience_roles do |t|
      t.belongs_to :user_work_experience, index: true
      t.string :role
      t.date :date_from
      t.date :date_to
      t.string :project_name
      t.text :notes

      t.timestamps
    end
  end
end
