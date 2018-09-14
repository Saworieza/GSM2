class Contractorquote < ApplicationRecord
	belongs_to :contractor
  belongs_to :site
  belongs_to :customerpo
end
