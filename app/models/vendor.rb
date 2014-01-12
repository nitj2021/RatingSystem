class Vendor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

    validates :name, :description, :business_type, presence: true

    acts_as_votable

    has_many :comments

    def self.filter_by_parameter(search_parameter)
    	where("name LIKE ? or description LIKE ? or business_type LIKE ?", "%#{search_parameter}%", "%#{search_parameter}%", "%#{search_parameter}%")
    end
  
end
