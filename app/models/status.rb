class Status < ApplicationRecord
	is_impressionable
	has_many :sites
end
