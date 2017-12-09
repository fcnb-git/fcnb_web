class UserCertificationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user_certification, only: [:show, :edit, :update, :destroy]
  layout "home", only: [:new, :create,:destroy]
  layout "home", only: [:edit, :update]  

  # GET /user_certifications
  # GET /user_certifications.json
  def index
    @user_certifications = UserCertification.where(user_id: current_user.id).order("date_issued DESC")
    render layout: 'home'
  end

  # GET /user_certifications/1
  # GET /user_certifications/1.json
  def show
  end

  # GET /user_certifications/new
  def new
    @user_certification = UserCertification.new
    render layout: 'home'
  end

  # GET /user_certifications/1/edit
  def edit
  end

  # POST /user_certifications
  # POST /user_certifications.json
  def create
    @current_user = current_user
    @user_certification = @current_user.user_certifications.new(user_certification_params)

    respond_to do |format|
      if @user_certification.save
        format.html { redirect_to action: "index", notice: 'User certification was successfully created.' }
        format.json { render :show, status: :created, location: @user_certification }
      else
        format.html { render :new }
        format.json { render json: @user_certification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_certifications/1
  # PATCH/PUT /user_certifications/1.json
  def update
    respond_to do |format|
      if @user_certification.update(user_certification_params)
        format.html { redirect_to action: "index", notice: 'User certification was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_certification }
      else
        format.html { render :edit }
        format.json { render json: @user_certification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_certifications/1
  # DELETE /user_certifications/1.json
  def destroy
    @user_certification.destroy
    respond_to do |format|
      format.html { redirect_to user_certifications_url, notice: 'User certification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_certification
      @user_certification = UserCertification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_certification_params
      params.require(:user_certification).permit(:description, :date_issued, :date_expiry, :note)
    end
end
