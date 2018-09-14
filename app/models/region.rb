class Region < ApplicationRecord
	is_impressionable
	has_many :towns
	has_many :sites
end
