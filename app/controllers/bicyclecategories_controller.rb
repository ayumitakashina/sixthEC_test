class BicyclecategoriesController < ApplicationController
  before_action :set_bicyclecategory, only: [:show, :edit, :update, :destroy]

  # GET /bicyclecategories
  # GET /bicyclecategories.json
  def index
    @bicyclecategories = Bicyclecategory.all
  end

  # GET /bicyclecategories/1
  # GET /bicyclecategories/1.json
  def show
  end

  # GET /bicyclecategories/new
  def new
    @bicyclecategory = Bicyclecategory.new
  end

  # GET /bicyclecategories/1/edit
  def edit
  end

  # POST /bicyclecategories
  # POST /bicyclecategories.json
  def create
    @bicyclecategory = Bicyclecategory.new(bicyclecategory_params)

    respond_to do |format|
      if @bicyclecategory.save
        format.html { redirect_to @bicyclecategory, notice: 'Bicyclecategory was successfully created.' }
        format.json { render :show, status: :created, location: @bicyclecategory }
      else
        format.html { render :new }
        format.json { render json: @bicyclecategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bicyclecategories/1
  # PATCH/PUT /bicyclecategories/1.json
  def update
    respond_to do |format|
      if @bicyclecategory.update(bicyclecategory_params)
        format.html { redirect_to @bicyclecategory, notice: 'Bicyclecategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @bicyclecategory }
      else
        format.html { render :edit }
        format.json { render json: @bicyclecategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bicyclecategories/1
  # DELETE /bicyclecategories/1.json
  def destroy
    @bicyclecategory.destroy
    respond_to do |format|
      format.html { redirect_to bicyclecategories_url, notice: 'Bicyclecategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicyclecategory
      @bicyclecategory = Bicyclecategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bicyclecategory_params
      params.require(:bicyclecategory).permit(:name)
    end
end
