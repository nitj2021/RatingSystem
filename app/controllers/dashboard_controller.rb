class DashboardController < ApplicationController
  def index
  	@vendors = Vendor.all
  end

  def search
  	@vendors = Vendor.filter_by_parameter(params[:query])
  	render :index
  end
end
