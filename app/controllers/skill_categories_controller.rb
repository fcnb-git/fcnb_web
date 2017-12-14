class SkillCategoriesController < ApplicationController

  def get_specific_skills
    puts "GETTING SPECIFIC SKILLS"
    @skill_category = SkillCategory.find_by_id params[:skill_category_id]
    @skill_inventories = @skill_category.skill_inventories    
  end

end  