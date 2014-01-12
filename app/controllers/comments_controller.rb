class CommentsController < ApplicationController
	before_filter :authenticate_evaluator!
	def create
		@vendor = Vendor.find params[:comment][:vendor_id]
		@comment = current_evaluator.comments.new(create_params)
		if @comment.save
			redirect_to @vendor
		else
			render "vendors/show"
		end
	end

	private
	def create_params
		params.require(:comment).permit(:comment, :vendor_id)
	end
end
