class Town < ApplicationRecord
  belongs_to :region

  has_many :sites
end
