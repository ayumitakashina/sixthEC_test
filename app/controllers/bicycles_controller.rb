class BicyclesController < ApplicationController
  def index
  	@data = Bicyclepost.where('bicyclecategory_id = ?', params[:id])
  		.page(params[:page])
  end
end
