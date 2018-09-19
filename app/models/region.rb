class Region < ApplicationRecord
	is_impressionable
	has_many :towns
	has_many :sites

	validates :name, uniqueness: true
	# validates_presence_of :description
end
