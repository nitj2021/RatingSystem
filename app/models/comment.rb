class Comment < ActiveRecord::Base
	belongs_to :evaluator
	belongs_to :vendor
	validates :evaluator, :vendor, :comment, presence: true
end
