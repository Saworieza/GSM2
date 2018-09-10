class Region < ApplicationRecord
	has_many :towns
	has_many :sites
end
