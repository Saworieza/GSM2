class Scope < ApplicationRecord
	# is_impressionable
	has_many :sites
	has_many :customerpos
	has_many :customerquotes

	validates :scope_type, uniqueness: true
	# validates_presence_of :description
end
