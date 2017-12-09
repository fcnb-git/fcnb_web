class UserWorkSkillsController < ApplicationController
  before_action :set_user_work_skill, only: [:show, :edit, :update, :destroy]

  # GET /user_work_skills
  # GET /user_work_skills.json
  def index
    @user_work_skills = UserWorkSkill.all
  end

  # GET /user_work_skills/1
  # GET /user_work_skills/1.json
  def show
  end

  # GET /user_work_skills/new
  def new
    @user_work_skill = UserWorkSkill.new
  end

  # GET /user_work_skills/1/edit
  def edit
  end

  # POST /user_work_skills
  # POST /user_work_skills.json
  def create
    @user_work_skill = UserWorkSkill.new(user_work_skill_params)

    respond_to do |format|
      if @user_work_skill.save
        format.html { redirect_to @user_work_skill, notice: 'User work skill was successfully created.' }
        format.json { render :show, status: :created, location: @user_work_skill }
      else
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
        format.html { redirect_to @user_work_skill, notice: 'User work skill was successfully updated.' }
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
      format.html { redirect_to user_work_skills_url, notice: 'User work skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_work_skill
      @user_work_skill = UserWorkSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_work_skill_params
      params.require(:user_work_skill).permit(:total_experience, :last_time_used, :last_time_used_duration_years, :refresher, :notes)
    end
end
