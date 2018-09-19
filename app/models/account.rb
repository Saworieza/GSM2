class Account < ApplicationRecord
	is_impressionable
	has_many :costcenters

	validates :name, uniqueness: true
	# validates_presence_of :description
end
