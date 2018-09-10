class Customerquote < ApplicationRecord
  belongs_to :costcenter

  has_many :customerpos
  has_many :sites
end
