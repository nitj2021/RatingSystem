class VendorsController < ApplicationController
	def show
		@vendor = Vendor.find(params[:id])
		@comment = Comment.new
	end
end
