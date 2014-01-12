class VotesController < ApplicationController
	before_filter :authenticate_evaluator!
	def like
		@vendor = Vendor.find(params[:vote_id])
		@vendor.liked_by current_evaluator
	end

	def dislike
		@vendor = Vendor.find(params[:vote_id])
		@vendor.disliked_by current_evaluator
	end
end
