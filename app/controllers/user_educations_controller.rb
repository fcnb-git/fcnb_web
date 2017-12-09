class UserEducationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user_education, only: [:show, :edit, :update, :destroy]
  layout "home", only: [:new, :create,:destroy]
  layout "home", only: [:edit, :update]  
  # GET /user_educations
  # GET /user_educations.json
  
  def index
    @user_educations = UserEducation.all.order("date_completed DESC")
    render layout: 'home'
  end

  # GET /user_educations/1
  # GET /user_educations/1.json
  def show
  end

  # GET /user_educations/new
  def new
    @user_education = UserEducation.new
    render layout: 'home'
  end

  # GET /user_educations/1/edit
  def edit
  end

  # POST /user_educations
  # POST /user_educations.json
  def create
    @current_user   = current_user
    @user_education = @current_user.user_educations.new(user_education_params)

    respond_to do |format|
      if @user_education.save
        format.html { redirect_to action: "index", notice: 'User education was successfully created.' }
        format.json { render :show, status: :created, location: @user_education }
      else
        format.html { render :new }
        format.json { render json: @user_education.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_educations/1
  # PATCH/PUT /user_educations/1.json
  def update
    respond_to do |format|
      if @user_education.update(user_education_params)
        format.html { redirect_to action: "index", notice: 'User education was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_education }
      else
        format.html { render :edit }
        format.json { render json: @user_education.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_educations/1
  # DELETE /user_educations/1.json
  def destroy
    @user_education.destroy
    respond_to do |format|
      format.html { redirect_to user_educations_url, notice: 'User education was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_education
      @user_education = UserEducation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_education_params
      params.require(:user_education).permit(:education_type, :institution, :degree, :program, :specialization, :date_started, :date_completed, :remarks)
    end
end
