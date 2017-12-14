class AddSkillCategoryRefToSkillInventory < ActiveRecord::Migration[5.1]
  def change
    add_reference :skill_inventories, :skill_category, foreign_key: true
  end
end
