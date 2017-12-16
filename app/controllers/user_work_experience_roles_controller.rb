class UserWorkExperienceRolesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user_work_experience_role, only: [:show, :edit, :update, :destroy]
  layout "home", only: [:new, :create,:destroy]
  layout "home", only: [:edit, :update]  
  # GET /user_work_experience_roles
  # GET /user_work_experience_roles.json
  def index
    @user_work_experience= UserWorkExperience.find_by_id(params[:id])
    @user_work_experience_roles = UserWorkExperienceRole.where(user_work_experience_id: @user_work_experience.id)
    render layout: 'home'
  end

  # GET /user_work_experience_roles/1
  # GET /user_work_experience_roles/1.json
  def show
    render layout: 'home'
  end

  # GET /user_work_experience_roles/new
  def new
    @user_work_experience_role = UserWorkExperienceRole.new
    render layout: 'home'
  end

  # GET /user_work_experience_roles/1/edit
  def edit
    render layout: 'home'
  end

  # POST /user_work_experience_roles
  # POST /user_work_experience_roles.json
  def create
    user_work_experience_id = params[:user_work_experience_role][:user_work_experience_id]
    @user_work_experience = UserWorkExperience.find_by_id(user_work_experience_id)
    @user_work_experience_role = @user_work_experience.user_work_experience_roles.new(user_work_experience_role_params)

    respond_to do |format|
      if @user_work_experience_role.save
        format.html { redirect_to action: "index",:id=>user_work_experience_id}
        format.json { render :show, status: :created, location: @user_work_experience_role }
      else
        format.html { render :new , notice: 'Failed to save.'}
        format.json { render json: @user_work_experience_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_work_experience_roles/1
  # PATCH/PUT /user_work_experience_roles/1.json
  def update
    respond_to do |format|
      
      if @user_work_experience_role.update(user_work_experience_role_params)
        format.html { redirect_to action: "index", :id=> @user_work_experience_role.user_work_experience_id}
        format.json { render :show, status: :ok, location: @user_work_experience_role }
      else
        format.html { render :edit }
        format.json { render json: @user_work_experience_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_work_experience_roles/1
  # DELETE /user_work_experience_roles/1.json
  def destroy
    user_work_experience_id = @user_work_experience_role.user_work_experience_id
    @user_work_experience_role.destroy
    respond_to do |format|
      format.html { redirect_to action: "index", :id => user_work_experience_id }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_work_experience_role
      @user_work_experience_role = UserWorkExperienceRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_work_experience_role_params
      params.require(:user_work_experience_role).permit(:role, :date_from, :date_to, :project_name, :notes,:user_work_experience_id,:role_summary)
    end
end
