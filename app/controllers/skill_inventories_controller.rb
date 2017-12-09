class SkillInventoriesController < ApplicationController
  before_action :set_skill_inventory, only: [:show, :edit, :update, :destroy]

  # GET /skill_inventories
  # GET /skill_inventories.json
  def index
    @skill_inventories = SkillInventory.all
  end

  # GET /skill_inventories/1
  # GET /skill_inventories/1.json
  def show
  end

  # GET /skill_inventories/new
  def new
    @skill_inventory = SkillInventory.new
  end

  # GET /skill_inventories/1/edit
  def edit
  end

  # POST /skill_inventories
  # POST /skill_inventories.json
  def create
    @skill_inventory = SkillInventory.new(skill_inventory_params)

    respond_to do |format|
      if @skill_inventory.save
        format.html { redirect_to @skill_inventory, notice: 'Skill inventory was successfully created.' }
        format.json { render :show, status: :created, location: @skill_inventory }
      else
        format.html { render :new }
        format.json { render json: @skill_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skill_inventories/1
  # PATCH/PUT /skill_inventories/1.json
  def update
    respond_to do |format|
      if @skill_inventory.update(skill_inventory_params)
        format.html { redirect_to @skill_inventory, notice: 'Skill inventory was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill_inventory }
      else
        format.html { render :edit }
        format.json { render json: @skill_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_inventories/1
  # DELETE /skill_inventories/1.json
  def destroy
    @skill_inventory.destroy
    respond_to do |format|
      format.html { redirect_to skill_inventories_url, notice: 'Skill inventory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_inventory
      @skill_inventory = SkillInventory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_inventory_params
      params.require(:skill_inventory).permit(:category, :specific_skill, :remarks)
    end
end
