class Town < ApplicationRecord
	is_impressionable
  belongs_to :region

  has_many :sites
end
