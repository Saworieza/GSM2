class Contractorquote < ApplicationRecord
	is_impressionable
	belongs_to :contractor
  belongs_to :site
  belongs_to :customerpo
end
