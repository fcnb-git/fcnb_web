class CreateUserWorkSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :user_work_skills do |t|
      t.belongs_to :skill_inventory, index: true
      t.belongs_to :user_work_experience_role, index: true      
      t.integer :total_experience
      t.date :last_time_used
      t.integer :last_time_used_duration_years
      t.string :refresher
      t.text :notes

      t.timestamps
    end
  end
end
