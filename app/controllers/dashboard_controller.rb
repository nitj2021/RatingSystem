class DashboardController < ApplicationController
  def index
  	@vendors = Vendor.all
  end
end
