class UserWorkExperiencesController < ApplicationController
  before_action :set_user_work_experience, only: [:show, :edit, :update, :destroy]

  # GET /user_work_experiences
  # GET /user_work_experiences.json
  def index
    @user_work_experiences = UserWorkExperience.all
  end

  # GET /user_work_experiences/1
  # GET /user_work_experiences/1.json
  def show
  end

  # GET /user_work_experiences/new
  def new
    @user_work_experience = UserWorkExperience.new
  end

  # GET /user_work_experiences/1/edit
  def edit
  end

  # POST /user_work_experiences
  # POST /user_work_experiences.json
  def create
    @user_work_experience = UserWorkExperience.new(user_work_experience_params)

    respond_to do |format|
      if @user_work_experience.save
        format.html { redirect_to @user_work_experience, notice: 'User work experience was successfully created.' }
        format.json { render :show, status: :created, location: @user_work_experience }
      else
        format.html { render :new }
        format.json { render json: @user_work_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_work_experiences/1
  # PATCH/PUT /user_work_experiences/1.json
  def update
    respond_to do |format|
      if @user_work_experience.update(user_work_experience_params)
        format.html { redirect_to @user_work_experience, notice: 'User work experience was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_work_experience }
      else
        format.html { render :edit }
        format.json { render json: @user_work_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_work_experiences/1
  # DELETE /user_work_experiences/1.json
  def destroy
    @user_work_experience.destroy
    respond_to do |format|
      format.html { redirect_to user_work_experiences_url, notice: 'User work experience was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_work_experience
      @user_work_experience = UserWorkExperience.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_work_experience_params
      params.require(:user_work_experience).permit(:company_name, :address, :city, :province, :country, :industry, :position, :date_from, :date_to)
    end
end
