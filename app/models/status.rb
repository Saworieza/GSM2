class Status < ApplicationRecord
	# is_impressionable
	belongs_to :user
	has_many :sites

	validates :state, uniqueness: true
	# validates_presence_of :description
end
