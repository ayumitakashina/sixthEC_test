class BicyclepostsController < ApplicationController
  before_action :set_bicyclepost, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_admin!, only: [:new]
  # GET /bicycleposts
  # GET /bicycleposts.json
  def index
    @bicycleposts = Bicyclepost.page(params[:page])
    @categories = Bicyclecategory.all
  end

  # GET /bicycleposts/1
  # GET /bicycleposts/1.json
  def show
  end

  # GET /bicycleposts/new
  def new
    @bicyclepost = Bicyclepost.new
    @categories = Bicyclecategory.all
  end

  # GET /bicycleposts/1/edit
  def edit
  end

  # POST /bicycleposts
  # POST /bicycleposts.json
  def create
    @bicyclepost = Bicyclepost.new(bicyclepost_params)

    respond_to do |format|
      if @bicyclepost.save
        format.html { redirect_to @bicyclepost, notice: 'Bicyclepost was successfully created.' }
        format.json { render :show, status: :created, location: @bicyclepost }
      else
        format.html { render :new }
        format.json { render json: @bicyclepost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bicycleposts/1
  # PATCH/PUT /bicycleposts/1.json
  def update
    respond_to do |format|
      if @bicyclepost.update(bicyclepost_params)
        format.html { redirect_to @bicyclepost, notice: 'Bicyclepost was successfully updated.' }
        format.json { render :show, status: :ok, location: @bicyclepost }
      else
        format.html { render :edit }
        format.json { render json: @bicyclepost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bicycleposts/1
  # DELETE /bicycleposts/1.json
  def destroy
    @bicyclepost.destroy
    respond_to do |format|
      format.html { redirect_to bicycleposts_url, notice: 'Bicyclepost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicyclepost
      @bicyclepost = Bicyclepost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bicyclepost_params
      params.require(:bicyclepost).permit(:name, :value, :description, :image, :bicyclecategory_id)
    end
end
