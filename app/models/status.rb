class Status < ApplicationRecord
	# is_impressionable
	has_many :sites

	validates :state, uniqueness: true
	# validates_presence_of :description
end
