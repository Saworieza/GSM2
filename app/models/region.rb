class Region < ApplicationRecord
	# is_impressionable
	belongs_to :user
	
	has_many :towns
	has_many :sites

	validates :name, uniqueness: true
	# validates_presence_of :description
end
