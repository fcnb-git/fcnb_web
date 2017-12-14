class CreateSkillCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :skill_categories do |t|
      t.string :description

      t.timestamps
    end
  end
end
