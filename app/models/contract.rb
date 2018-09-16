class Contract < ApplicationRecord
  belongs_to :contractor
  belongs_to :site
  belongs_to :contractorpo
end
