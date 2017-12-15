class UserWorkSkillsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user_work_skill, only: [:show, :edit, :update, :destroy]
  layout "home", only: [:new, :create,:destroy]
  layout "home", only: [:edit, :update]
  # GET /user_work_skills
  # GET /user_work_skills.json
  def index
    @user_work_experience_role = UserWorkExperienceRole.find_by(id: params[:user_work_experience_role_id])
    @user_work_experience = UserWorkExperience.find_by(id: @user_work_experience_role.user_work_experience_id)
    @skill_inventories = SkillInventory.includes(:user_work_skills,:skill_category).where(:"user_work_skills.user_work_experience_role_id" => @user_work_experience_role.id)
     render layout: 'home'
  end

  # GET /user_work_skills/1
  # GET /user_work_skills/1.json
  def show
     render layout: 'home'
  end

  # GET /user_work_skills/new
  def new
    @skill_categories = SkillCategory.all
    # @skill_inventories = SkillInventory.all.order("specific_skill ASC")
    @skill_inventories = SkillInventory.joins(:skill_category).order("skill_categories.description ASC")
    puts "COUNT : #{@skill_inventories.count}"       
    @user_work_skill = UserWorkSkill.new
     render layout: 'home'
  end

  # GET /user_work_skills/1/edit
  def edit
    @skill_categories = SkillCategory.all
    @skill_inventories = SkillInventory.all    
     render layout: 'home'
  end

  # POST /user_work_skills
  # POST /user_work_skills.json
  def create
    user_work_experience_role_id = params[:user_work_skill][:user_work_experience_role_id]

    @user_work_experience_role = UserWorkExperienceRole.find_by_id(user_work_experience_role_id)
    @user_work_skill = @user_work_experience_role.user_work_skills.new(user_work_skill_params)

    respond_to do |format|
      puts "ACTION: ATTEMPTING TO SAVE" 
      
      if @user_work_skill.save
        puts "SAVED: SAVED SUCCESS"
        format.html { redirect_to action: "index", :user_work_experience_role_id => user_work_experience_role_id}
        format.json { render :show, status: :created, location: @user_work_skill }
      else
        @user_work_skill.errors.full_messages.each do |message|
          puts "ERROR : #{message}"
        end


        format.html { render :new }
        format.json { render json: @user_work_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_work_skills/1
  # PATCH/PUT /user_work_skills/1.json
  def update
    respond_to do |format|
      if @user_work_skill.update(user_work_skill_params)
        format.html { redirect_to action:"index",:user_work_experience_role_id=>@user_work_skill.user_work_experience_role_id }
        format.json { render :show, status: :ok, location: @user_work_skill }
      else
        format.html { render :edit }
        format.json { render json: @user_work_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_work_skills/1
  # DELETE /user_work_skills/1.json
  def destroy
    @user_work_skill.destroy
    respond_to do |format|
      format.html { redirect_to action:"index", :user_work_experience_role_id=> @user_work_skill.user_work_experience_role_id }
      format.json { head :no_content }
    end
  end
  
  def get_skill_inventories
      puts "GET SKILL METHOD : CALLED"
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_work_skill
      @user_work_skill = UserWorkSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_work_skill_params
      params.require(:user_work_skill).permit(:total_experience, :last_time_used, :last_time_used_duration_years, :refresher, :notes,:user_work_experience_role_id,:skill_inventory_id,:id)
    end
end
