class CreateSkillInventories < ActiveRecord::Migration[5.1]
  def change
    create_table :skill_inventories do |t|
      t.string :specific_skill
      t.string :remarks, null: false, default: ""  
      t.timestamps
    end
  end
end
