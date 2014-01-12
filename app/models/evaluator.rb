class Evaluator < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

    validates :name, presence: true
    has_many :comments
    acts_as_voter

    def liked_vendor(vendor)
    	(voted_for? vendor) && (voted_up_on? vendor) ? 'btn-primary' : 'btn-default'
    	# (voted_for? vendor  && voted_up_on? vendor) ? 'btn-primary' : 'btn-default'
    end

    def disliked_vendor(vendor)
    	(voted_for? vendor) && (voted_down_on? vendor) ? 'btn-primary' : 'btn-default'
    end
end
